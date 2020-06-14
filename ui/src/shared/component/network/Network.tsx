import React, { useRef, useState, useEffect } from "react";
import { mainService } from "../../service/main.service";
import { networkStyles } from "./network.style";
import { CircularProgress } from "@material-ui/core";
import NetworkGraph from "./graph/NetworkGraph";

const Network: React.FC = () => {
  const classes = networkStyles();
  const networkGraphRef: any = useRef();
  const [graph, setGraph] = useState({});
  const [stabilized, setStabilized] = useState(false);

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
      <>
        {stabilized || (
          <div className={classes.stabilizeOverlay}>
            <CircularProgress />
          </div>
        )}
        <div className={classes.content} id="network-container">
          <NetworkGraph
            ref={networkGraphRef}
            data={graph}
            containerId="network-container"
            stabilizationDone={() => setStabilized(true)}
          />
        </div>
      </>
    </div>
  );
};

export default Network;
