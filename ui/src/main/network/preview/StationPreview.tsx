import React from "react";
import { stationPreviewStyles } from "./station-preview";
import { TrainLineColors } from "../../../shared/service/main.service";
import { CircularProgress, Paper, Tooltip } from "@material-ui/core";
import sbsImg from "../../../images/sbs.png";
import smrtImg from "../../../images/smrt.png";
import DirectionsBusIcon from "@material-ui/icons/DirectionsBus";
import LocalParkingIcon from "@material-ui/icons/LocalParking";
import DirectionsBikeIcon from "@material-ui/icons/DirectionsBike";
import AccessibleIcon from "@material-ui/icons/Accessible";

interface Props {
  data: any;
}

const StationPreview: React.FC<Props> = (props: Props) => {
  const classes = stationPreviewStyles();

  const OtherInfo = ({ info, infoLabel, Icon }) => {
    return (
      <Tooltip title={`${info ? "Has " : "No "}${infoLabel}`}>
        <span className={classes.otherInfoIcon}>
          <Icon color={info ? "primary" : "disabled"} />
        </span>
      </Tooltip>
    );
  };

  return (
    <Paper id="stationPreview" className={classes.stationPreview}>
      <div className={classes.container}>
        <div className={classes.stationCodes}>
          {props.data?.properties.lines.map((l: any) => (
            <div
              className={classes.stationCode}
              style={{ background: TrainLineColors[l.line] }}
              key={l.code}
            >
              {l.code}
            </div>
          ))}
        </div>
        <div className={classes.stationNames}>
          {props.data?.properties.names
            .slice(0, 3)
            .map((n: any, index: number) => (
              <div
                style={{ fontWeight: index === 0 ? "bold" : "normal" }}
                key={n}
              >
                {n}
              </div>
            ))}
        </div>
        <div className={classes.mapContainer}>
          <CircularProgress className={classes.mapInProgress} />
          <iframe
            src={props.data?.properties.googleMap}
            title="Station Preview"
            className={classes.map}
            loading="lazy"
          ></iframe>
        </div>
        <div className={classes.stationLinesHeader}>Lines</div>
        <div className={classes.stationLines}>
          {props.data?.properties.lines.map((l: any) => (
            <React.Fragment key={l.line}>
              <div
                className={classes.stationLine}
                style={{
                  border: `2px solid ${TrainLineColors[l.line]}`,
                  color: `${TrainLineColors[l.line]}`,
                }}
              >
                {l.line}
              </div>
              <div>{l.location}</div>
              <img
                src={l.operator === "SMRT" ? smrtImg : sbsImg}
                alt="operator"
                style={{
                  width: l.operator === "SMRT" ? "65px" : "80px",
                  margin: "auto",
                }}
              />
            </React.Fragment>
          ))}
        </div>
        <div className={classes.otherInfo}>
          <OtherInfo
            info={props.data?.properties.bus_interchange}
            infoLabel="Bus Interchange"
            Icon={DirectionsBusIcon}
          />
          <OtherInfo
            info={props.data?.properties.parking}
            infoLabel="Parking"
            Icon={LocalParkingIcon}
          />
          <OtherInfo
            info={props.data?.properties.bicycle_facilities}
            infoLabel="Bicycle Facilities"
            Icon={DirectionsBikeIcon}
          />
          <OtherInfo
            info={props.data?.properties.disabled_access}
            infoLabel="Disabled Access"
            Icon={AccessibleIcon}
          />
        </div>
      </div>
    </Paper>
  );
};

export default StationPreview;
