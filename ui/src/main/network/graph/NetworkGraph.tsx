import React, {
  forwardRef,
  useImperativeHandle,
  useState,
  useEffect,
} from "react";
import vis, { DataSet } from "vis-network/dist/vis-network";
import {
  positions,
  TrainLine,
  TrainLineColors,
} from "../../../shared/service/main.service";

interface Props {
  ref: any;
  containerId: string;
  data: any;
  stabilizationDone: () => void;
  onHoverNode: (nodeId: any, pointer: any) => void;
  onBlurNode: (nodeId: any) => void;
}

const NetworkGraph: React.FC<Props> = forwardRef((props: Props, ref) => {
  const [visNodes, setVisNodes] = useState<DataSet>();
  const [visEdges, setVisEdges] = useState<DataSet>();
  const dimColor = "rgba(0,0,0,.1)";

  const LRT = [
    TrainLine.BukitPanjangLRT,
    TrainLine.SengkangLRT,
    TrainLine.PunggolLRT,
  ];

  const networkOptions: any = {
    interaction: {
      hover: true,
      zoomView: false,
      dragView: false,
    },
    physics: {
      enabled: false,
    },
    nodes: {
      margin: 10,
      font: {
        color: "rgba(0,0,0,0.8)",
        face: "Roboto",
        size: 20,
      },
      borderWidth: 3,
      color: {
        background: "#fff",
      },
      shape: "dot",
      widthConstraint: 110,
      scaling: {
        label: {
          enabled: true,
        },
      },
    },
    edges: {
      arrows: {
        to: {
          enabled: false,
        },
      },
      arrowStrikethrough: false,
      font: {
        color: "rgba(0,0,0,0.8)",
        face: "Roboto",
        align: "middle",
        bold: {
          color: "rgba(0,0,0,0.8)",
          face: "Roboto",
        },
      },
      color: {
        inherit: false,
      },
      hoverWidth: 1.5,
      smooth: {
        type: "curvedCW",
        roundness: 0.05,
      },
      width: 10,
    },
  };

  useImperativeHandle(ref, () => ({
    updateGraph(nodes: string[]) {
      const allNodes = visNodes.get().map((n: any) => {
        let nodeColor = n.properties.station_interchange
          ? "#000"
          : TrainLineColors[n.properties.line];
        if (nodes.length > 0 && !nodes.includes(n.id)) {
          nodeColor = dimColor;
        }
        setNodeColor(n, nodeColor);
        return n;
      });
      visNodes.update(allNodes);

      const allEdges = visEdges.get().map((e: any) => {
        e.color = TrainLineColors[e.properties.line];
        if (
          nodes.length > 0 &&
          (!nodes.includes(e.from) || !nodes.includes(e.to))
        ) {
          e.color = dimColor;
        }
        return e;
      });
      visEdges.update(allEdges);
    },
  }));

  const setNodeColor = (node: any, nodeColor) => {
    node.color = {
      border: nodeColor,
      highlight: {
        border: nodeColor,
        background: "#fff",
      },
      hover: {
        border: nodeColor,
        background: "#fff",
      },
    };
  };

  useEffect(() => {
    let isSubscribed = true;
    if (isSubscribed) {
      const networkContainer = document.getElementById(props.containerId);
      if (networkContainer && props.data.nodes) {
        // Create nodes
        const nodeData = props.data.nodes.map((node: any) => {
          node.label = node.properties.name;
          node.fixed = true;
          const nodeColor = node.properties.station_interchange
            ? "#000"
            : TrainLineColors[node.properties.line];
          setNodeColor(node, nodeColor);
          if (LRT.includes(node.properties.line)) {
            node.size = 12;
          }
          node.x = positions[`${node.id}`].x;
          node.y = positions[`${node.id}`].y;
          node.properties.lines = node.properties.lines.map((l: any) => {
            if (typeof l === "string") {
              return JSON.parse(l);
            }
            return l;
          });
          return node;
        });
        const nodes = new DataSet(nodeData);
        setVisNodes(nodes);

        // Create edges
        const edgeData = props.data.edges.map((edge: any) => {
          edge.color = TrainLineColors[edge.properties.line];
          return edge;
        });
        const edges = new DataSet(edgeData);
        setVisEdges(edges);

        // Create network
        const network = new vis.Network(
          networkContainer,
          { nodes: nodes, edges: edges },
          networkOptions
        );

        network.on("hoverNode", (params: any) => {
          props.onHoverNode(params.node, {
            x: params.pointer.DOM.x,
            y: params.pointer.DOM.y,
          });
        });

        network.on("blurNode", (params: any) => props.onBlurNode(params.node));

        props.stabilizationDone();
      }
    }
    return () => {
      isSubscribed = false;
    };
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [props.data]);

  return <></>;
});

export default NetworkGraph;
