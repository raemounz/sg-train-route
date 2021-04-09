import React from "react";
import { mainStyle } from "./main.style";
import Network from "./network/Network";

const Main: React.FC = () => {
  const classes = mainStyle();

  return (
    <div className={classes.container}>
      <main className={classes.mainContent}>
        <div className={classes.title}>Singapore Train Route</div>
        <Network />
      </main>
    </div>
  );
};

export default Main;
