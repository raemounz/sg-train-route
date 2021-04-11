import { makeStyles, Theme, createStyles } from "@material-ui/core";

export const searchStyles = makeStyles((theme: Theme) =>
  createStyles({
    container: {
      display: "flex",
      flexDirection: "column",
      position: "absolute",
      top: "24px",
      left: "24px",
      zIndex: 1,
      padding: "16px",
      height: "auto",
    },
    title: {
      fontSize: "1.5em",
      fontWeight: "bold",
      color: "#dd3c3f",
      marginBottom: "16px",
      textAlign: "center",
    },
    input: {
      width: 220,
    },
    reset: {
      width: "fit-content",
      margin: "8px 0 0 auto",
    },
    travelTimeTitle: {
      color: "#dd3c3f",
      fontWeight: 500,
    },
    travelTime: {
      height: "auto",
      background: "#dd3c3f",
      marginTop: "5px",
      color: "#fff",
      fontSize: "2em",
      padding: "8px",
      textAlign: "center",
    },
  })
);
