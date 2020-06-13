import React from "react";
import { mainStyle } from "./main.style";
import { AppBar, Toolbar, Typography } from "@material-ui/core";
import WebIcon from "@material-ui/icons/Web";
import springicon from "../images/springio-icon.svg";
import reacticon from "../images/reactjs-icon.svg";

const Main: React.FC = () => {
  const classes = mainStyle();

  return (
    <div className={classes.container}>
      <AppBar>
        <Toolbar>
          <WebIcon color="secondary" className={classes.logo} />
          <Typography variant="h6" className={classes.header}>
            Spring Boot and React Seed Project
          </Typography>
          <span className={classes.spacer}></span>
          <Typography
            variant="h6"
            className={classes.header}
          >{`build: ${process.env.REACT_APP_ENVI}`}</Typography>
        </Toolbar>
      </AppBar>
      <div className={classes.main}>
        <div className={classes.toolbar}></div>
        <div className={classes.content}>
          <div style={{ flexGrow: 1 }}></div>
          <div style={{ display: "flex", flexDirection: "row" }}>
            <div style={{ flexGrow: 1 }}></div>
            <div style={{ margin: "0 20px" }}>
              <div style={{ marginBottom: "20px" }}>
                This project is built with:
              </div>
              <div className={classes.item}>
                <img src={springicon} className={classes.img} />
                <a
                  href="https://start.spring.io"
                  target="_blank"
                  className={classes.link}
                >
                  Spring Boot
                </a>
              </div>
              <div className={classes.item}>
                <img src={reacticon} className={classes.img} />
                <a
                  href="https://create-react-app.dev"
                  target="_blank"
                  className={classes.link}
                >
                  Create React App
                </a>
              </div>
              <div className={classes.item}></div>
              <div className={classes.item}>
                It also includes the following:
              </div>
              <div className={classes.item}>
                <a
                  href="https://material-ui.com/"
                  target="_blank"
                  className={classes.link}
                >
                  Material-UI
                </a>
                <span style={{ marginLeft: 5 }}>
                  - for material design components
                </span>
              </div>
            </div>
            <div style={{ flexGrow: 1 }}></div>
          </div>
          <div style={{ flexGrow: 1 }}></div>
        </div>
      </div>
    </div>
  );
};

export default Main;
