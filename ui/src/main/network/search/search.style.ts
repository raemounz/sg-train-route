import { createStyles, makeStyles } from "@mui/styles";

export const searchStyles = makeStyles(() =>
  createStyles({
    container: {
      display: "flex",
      flexDirection: "column",
      position: "absolute",
      top: 24,
      left: 24,
      zIndex: 1,
      padding: 16,
      height: "auto",
    },
    title: {
      fontSize: "1.5em",
      fontWeight: "bold",
      color: "#dd3c3f",
      marginBottom: 16,
      textAlign: "center",
    },
    input: {
      width: "100%",
    },
    reset: {
      width: "fit-content",
      marginLeft: "auto !important",
      marginRight: 0,
    },
    travelTimeTitle: {
      color: "#dd3c3f",
      fontWeight: 500,
    },
    travelTime: {
      height: "auto",
      background: "#dd3c3f",
      marginTop: 5,
      color: "#fff",
      fontSize: "2em",
      padding: 8,
      textAlign: "center",
    },
  })
);
