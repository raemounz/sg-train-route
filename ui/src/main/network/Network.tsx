import React, { useRef, useState, useEffect } from "react";
import {
  mainService,
  TrainLine,
  TrainLineColors,
} from "../../shared/service/main.service";
import { networkStyles } from "./network.style";
import { CircularProgress } from "@material-ui/core";
import NetworkGraph from "./graph/NetworkGraph";
import Search from "./search/Search";
import StationPreview from "./preview/StationPreview";
import LinearScaleIcon from "@material-ui/icons/LinearScale";

const Network: React.FC = () => {
  const classes = networkStyles();
  const networkGraphRef: any = useRef();
  const [graph, setGraph] = useState<any>({});
  const [stabilized, setStabilized] = useState(false);
  const [stationPreview, setStationPreview] = useState<any>(undefined);

  const stationPreviewElement = document.getElementById("stationPreview");

  const onHoverNode = (nodeId: any, pointer: any) => {
    setStationPreview(graph.nodes.find((n: any) => n.id === nodeId));
    if (stationPreviewElement) {
      stationPreviewElement.style.display = "block";
      stationPreviewElement.style.left = pointer.x + "px";
      stationPreviewElement.style.top = pointer.y + "px";
      if (pointer.y + stationPreviewElement.offsetHeight > window.innerHeight) {
        stationPreviewElement.style.top =
          pointer.y -
          (pointer.y +
            stationPreviewElement.offsetHeight -
            window.innerHeight) -
          48 +
          "px";
      }
      if (pointer.x + stationPreviewElement.offsetWidth > window.innerWidth) {
        stationPreviewElement.style.left =
          pointer.x - stationPreviewElement.offsetWidth + "px";
      }
    }
  };

  const onBlurNode = (nodeId: any) => {
    if (stationPreviewElement) {
      stationPreviewElement.style.display = "none";
    }
    setStationPreview(undefined);
  };

  const onSearchResults = (nodes: string[]) => {
    networkGraphRef.current.updateGraph(nodes);
  };

  useEffect(() => {
    let isSubscribed = true;
    mainService.getNetwork().then((response: any) => {
      if (isSubscribed) {
        setGraph(response.data);
      }
    });
    return () => {
      isSubscribed = false;
      setStabilized(false);
    };
  }, []);

  return (
    <div className={classes.content}>
      {!stabilized ? (
        <div className={classes.stabilizeOverlay}>
          <CircularProgress />
        </div>
      ) : (
        <Search data={graph} onSearchResults={onSearchResults} />
      )}
      <div id="network-container" className={classes.content}>
        <NetworkGraph
          ref={networkGraphRef}
          data={graph}
          containerId="network-container"
          stabilizationDone={() => setStabilized(true)}
          onHoverNode={onHoverNode}
          onBlurNode={onBlurNode}
        />
      </div>
      <StationPreview data={stationPreview} />
      <div className={classes.legend}>
        <div className={classes.legendHeader}>Lines</div>
        {Object.keys(TrainLine).map((l: any) => (
          <div key={l}>
            <LinearScaleIcon
              className={classes.legendIcon}
              style={{ color: TrainLineColors[TrainLine[l]] }}
            />
            <span>{TrainLine[l]}</span>
          </div>
        ))}
      </div>
    </div>
  );
};

export default Network;
