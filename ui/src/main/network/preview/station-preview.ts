import { createStyles, makeStyles } from "@mui/styles";

export const stationPreviewStyles = makeStyles(() =>
  createStyles({
    stationPreview: {
      position: "absolute",
      display: "none",
      width: 332,
      minHeight: 100,
      padding: 16,
      zIndex: 1,
    },
    container: {
      display: "flex",
      flexDirection: "column",
    },
    stationCodes: {
      display: "flex",
      flexDirection: "row",
      margin: "auto",
    },
    stationCode: {
      padding: "4px 12px",
      color: "#fff",
      fontWeight: 500,
    },
    stationNames: {
      display: "flex",
      flexDirection: "column",
      textAlign: "center",
      margin: "5px 0 8px",
    },
    mapContainer: {
      background: "rgba(0,0,0,.1)",
      height: 200,
      position: "relative",
      display: "flex",
      justifyContent: "center",
      alignItems: "center",
    },
    mapInProgress: {
      position: "absolute",
    },
    map: {
      width: 300,
      height: 200,
      border: 0,
      zIndex: 2,
    },
    stationLinesHeader: {
      textAlign: "center",
      fontWeight: "bold",
      margin: "14px 0 0",
    },
    stationLines: {
      display: "flex",
      flexDirection: "column",
      textAlign: "center",
    },
    stationLine: {
      width: "fit-content",
      margin: "12px auto 0",
      borderRadius: "4px",
      padding: "0 6px",
    },
    otherInfo: {
      display: "flex",
      flexDirection: "row",
      margin: "24px auto 0",
    },
    otherInfoIcon: {
      margin: "0 6px",
    },
  })
);
