import { makeStyles, Theme, createStyles } from "@material-ui/core";

export const mainStyle = makeStyles((theme: Theme) =>
  createStyles({
    container: {
      height: "100%",
      display: "flex",
    },
    mainContent: {
      flexGrow: 1,
      position: "relative",
    },
    title: {
      position: "absolute",
      margin: "24px",
      fontSize: "2em",
      fontWeight: "bold",
      color: "#dd3c3f",
    },
  })
);
