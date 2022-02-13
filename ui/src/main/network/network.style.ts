import { createStyles, makeStyles } from "@mui/styles";

export const networkStyles = makeStyles(() =>
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
      bottom: 24,
      right: 24,
      height: "auto",
      width: "auto",
    },
    legendHeader: {
      fontSize: "1.2em",
      fontWeight: "bold",
      marginBottom: 5,
    },
    legendIcon: {
      verticalAlign: "middle",
      marginRight: 10,
    },
  })
);
