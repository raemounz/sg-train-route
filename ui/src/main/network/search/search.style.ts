import { makeStyles, Theme, createStyles } from "@material-ui/core";

export const searchStyles = makeStyles((theme: Theme) =>
  createStyles({
    container: {
      display: "flex",
      flexDirection: "column",
      position: "absolute",
      top: "80px",
      left: "24px",
      zIndex: 1,
      padding: "16px",
      height: "auto",
    },
    input: {
      width: 220,
    },
  })
);
