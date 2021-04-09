import { makeStyles, Theme, createStyles } from "@material-ui/core";

export const networkStyles = makeStyles((theme: Theme) =>
  createStyles({
    content: {
      height: "100%",
      position: "relative",
    },
    stabilizeOverlay: {
      position: "absolute",
      height: "inherit",
      width: "100%",
      display: "flex",
      alignItems: "center",
      justifyContent: "center",
      fontSize: "1.5em",
    },
    legend: {
      position: "absolute",
      bottom: "24px",
      right: "24px",
      height: "auto",
      width: "auto",
    },
    legendHeader: {
      fontSize: "1.2em",
      fontWeight: "bold",
      marginBottom: "5px",
    },
    legendIcon: {
      verticalAlign: "middle",
      marginRight: "10px",
    },
  })
);
