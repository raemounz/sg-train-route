import React from "react";
import { mainService } from "../../service/main.service";

const Network: React.FC = () => {
  mainService.getNetwork().then((response: any) => {
    console.log(response.data);
  });
  return <></>;
};

export default Network;
