import axios from "axios";

class MainService {
  getNetwork(): Promise<any> {
    return axios.get(`${process.env.REACT_APP_API_URL}/network/all`);
  }
}

export const mainService = new MainService();
