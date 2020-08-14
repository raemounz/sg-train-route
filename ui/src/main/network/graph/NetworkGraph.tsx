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
}

const NetworkGraph: React.FC<Props> = forwardRef((props: Props, ref) => {
  const [visNetwork, setVisNetwork] = useState<vis.Network>();
  const [visNodes, setVisNodes] = useState<DataSet>();
  const [visEdges, setVisEdges] = useState<DataSet>();

  const LRT = [
    TrainLine.BukitPanjangLRT,
    TrainLine.SengkangLRT,
    TrainLine.PunggolLRT,
  ];

  const networkOptions: any = {
    interaction: {
      hover: true,
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
    func() {
      // TODO
    },
  }));

  useEffect(() => {
    let isSubscribed = true;
    if (isSubscribed) {
      let networkContainer = document.getElementById(props.containerId);
      if (networkContainer && props.data.nodes) {
        // Create nodes
        const nodeData = props.data.nodes.map((node: any) => {
          const nodeColor = node.properties.station_interchange
            ? "#000"
            : TrainLineColors[node.properties.line];
          node.label = node.properties.name;
          node.fixed = true;
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
          if (LRT.includes(node.properties.line)) {
            node.size = 12;
          }
          node.x = positions[`${node.id}`].x;
          node.y = positions[`${node.id}`].y;
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
        setVisNetwork(network);

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
