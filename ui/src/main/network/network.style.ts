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
  })
);
