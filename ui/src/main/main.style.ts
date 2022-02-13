import { createStyles, makeStyles } from "@mui/styles";

export const mainStyle = makeStyles(() =>
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
