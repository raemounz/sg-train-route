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
  })
);
