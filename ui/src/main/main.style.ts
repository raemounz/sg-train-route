import { makeStyles, Theme, createStyles } from "@material-ui/core";

export const mainStyle = makeStyles((theme: Theme) =>
  createStyles({
    container: {
      height: "100%"
    },
    header: {
      fontWeight: "bold"
    },
    logo: {
      fontSize: "40px !important",
      marginRight: "15px"
    },
    spacer: {
      flexGrow: 1,
      minWidth: "40px"
    },
    main: {
      display: "flex",
      flexDirection: "column",
      height: "100%"
    },
    toolbar: {
      ...theme.mixins.toolbar
    },
    content: {
      height: "100%",
      display: "flex",
      flexDirection: "column",
      fontSize: "1.4em"
    },
    title: {
      marginBottom: "20px"
    },
    item: {
      marginBottom: "20px",
      display: "flex"
    },
    img: {
      width: "45px",
      marginRight: "20px"
    },
    link: {
      textDecoration: "none",
      margin: "auto 0",
      color: "#673ab7"
    }
  })
);
