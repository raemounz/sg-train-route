import axios from "axios";

export enum TrainLine {
  EastWest = "East West",
  NorthSouth = "North South",
  NorthEast = "North East",
  Circle = "Circle",
  BukitPanjangLRT = "Bukit Panjang LRT",
  SengkangLRT = "Sengkang LRT",
  PunggolLRT = "Punggol LRT",
  Downtown = "Downtown",
  ThomsonEastCoast = "Thomson-East Coast",
}

export const TrainLineColors = {
  [TrainLine.EastWest]: "#3b8a41",
  [TrainLine.NorthSouth]: "#da3731",
  [TrainLine.NorthEast]: "#9236ad",
  [TrainLine.Circle]: "#f4a240",
  [TrainLine.BukitPanjangLRT]: "#748274",
  [TrainLine.SengkangLRT]: "#748274",
  [TrainLine.PunggolLRT]: "#748274",
  [TrainLine.Downtown]: "#1955ac",
  [TrainLine.ThomsonEastCoast]: "#945f29",
};

export const positions = {
  "NS 9|TE 2": { x: -1283, y: -958 },
  "NS 24|NE 6|CC 1": { x: -479, y: 431 },
  "NS 20": { x: -396, y: 57 },
  "DT 30": { x: 735, y: 151 },
  "DT 31": { x: 841, y: 174 },
  "NS 23": { x: -545, y: 360 },
  "NS 16": { x: -402, y: -471 },
  "EW 16|NE 3|TE 17": { x: -668, y: 997 },
  "NE 12|CC 13": { x: 5, y: -62 },
  "NS 19": { x: -393, y: -71 },
  "NS 18": { x: -392, y: -183 },
  "CC 10|DT 26": { x: 128, y: 154 },
  "DT 33": { x: 984, y: 286 },
  "DT 34": { x: 1015, y: 356 },
  "NE 16|STC": { x: 283, y: -331 },
  "EW 14|NS 26": { x: -390, y: 913 },
  "NS 22|TE 14": { x: -582, y: 280 },
  "NE 5": { x: -506, y: 842 },
  "EW 21|CC 22": { x: -1335, y: 434 },
  "NS 11": { x: -960, y: -995 },
  "CC 16": { x: -579, y: -331 },
  "DT 20": { x: -537, y: 766 },
  "NS 10": { x: -1122, y: -1003 },
  "NE 8": { x: -269, y: 220 },
  "DT 21": { x: -267, y: 508 },
  "NS 13": { x: -656, y: -868 },
  "CC 14": { x: -172, y: -218 },
  "NS 12": { x: -801, y: -948 },
  "NS 15": { x: -453, y: -623 },
  "CC 12": { x: 51, y: 8 },
  "NS 14": { x: -540, y: -753 },
  "CC 11": { x: 90, y: 79 },
  "CC 21": { x: -1312, y: 273 },
  "DT 27": { x: 281, y: 156 },
  "CC 20": { x: -1058, y: 166 },
  "DT 28": { x: 427, y: 158 },
  "NS 4|BP 1": { x: -1733, y: -327 },
  "CE 1|DT 16": { x: -53, y: 981 },
  "DT 29": { x: 588, y: 154 },
  "NE 9": { x: -206, y: 154 },
  "DT 22": { x: -167, y: 414 },
  "DT 23": { x: -103, y: 347 },
  "DT 24": { x: -40, y: 283 },
  "DT 25": { x: 34, y: 214 },
  "NS 21|DT 11": { x: -489, y: 149 },
  "NE 13": { x: 71, y: -124 },
  "NE 11": { x: -68, y: 17 },
  "NE 17|PTC": { x: 516, y: -566 },
  "CG 1|DT 35": { x: 1028, y: 439 },
  "NE 10": { x: -133, y: 79 },
  "NE 15": { x: 207, y: -256 },
  "NE 14": { x: 120, y: -173 },
  "SW 3": { x: 186, y: -606 },
  "SW 2": { x: 270, y: -531 },
  "SW 1": { x: 283, y: -424 },
  "DT 17": { x: -199, y: 1001 },
  "DT 18": { x: -433, y: 1005 },
  "DT 13": { x: -264, y: 367 },
  "BP 6|DT 1": { x: -1538, y: -512 },
  "SW 8": { x: 187, y: -334 },
  "SW 7": { x: 76, y: -346 },
  "SW 6": { x: -3, y: -427 },
  "SW 5": { x: 2, y: -533 },
  "SW 4": { x: 74, y: -609 },
  "TE 6": { x: -870, y: -552 },
  "TE 5": { x: -940, y: -620 },
  "NE 1|CC 29": { x: -829, y: 1157 },
  "TE 4": { x: -1083, y: -754 },
  "TE 3": { x: -1209, y: -891 },
  "EW 1": { x: 927, y: 0 },
  "TE 1": { x: -1356, y: -1034 },
  "EW 3": { x: 870, y: 382 },
  "CC 8": { x: 180, y: 533 },
  "EW 5": { x: 587, y: 439 },
  "CC 7": { x: 162, y: 621 },
  "EW 6": { x: 428, y: 437 },
  "CG 2": { x: 1221, y: 246 },
  "CC 6": { x: 139, y: 701 },
  "EW 7": { x: 285, y: 436 },
  "CC 5": { x: 108, y: 774 },
  "EW 9": { x: 93, y: 435 },
  "CC 3": { x: -18, y: 752 },
  "CC 2": { x: -296, y: 598 },
  "TE 8": { x: -774, y: -380 },
  "TE 7": { x: -811, y: -481 },
  "EW 12|DT 14": { x: -30, y: 598 },
  "EW 31": { x: -2452, y: 76 },
  "PW 6": { x: 271, y: -608 },
  "EW 32": { x: -2483, y: -33 },
  "PW 5": { x: 223, y: -716 },
  "EW 33": { x: -2493, y: -135 },
  "PW 7": { x: 374, y: -569 },
  "EW 24|NS 1": { x: -1720, y: 436 },
  "PW 1": { x: 523, y: -719 },
  "PW 4": { x: 274, y: -815 },
  "EW 30": { x: -2403, y: 170 },
  "PW 3": { x: 376, y: -865 },
  "EW 28": { x: -2246, y: 335 },
  "EW 29": { x: -2325, y: 266 },
  "DT 2": { x: -1536, y: -272 },
  "DT 3": { x: -1496, y: -156 },
  "EW 25": { x: -1851, y: 438 },
  "DT 5": { x: -1419, y: -53 },
  "EW 26": { x: -1981, y: 433 },
  "DT 6": { x: -1327, y: 25 },
  "EW 27": { x: -2107, y: 406 },
  "DT 7": { x: -1200, y: 58 },
  "DT 8": { x: -1061, y: 58 },
  "NS 17|CC 15": { x: -390, y: -310 },
  "CC 17|TE 9": { x: -770, y: -266 },
  "EW 20": { x: -1175, y: 457 },
  "EW 22": { x: -1465, y: 433 },
  "EW 23": { x: -1591, y: 437 },
  "EW 2|DT 32": { x: 935, y: 227 },
  "EW 17": { x: -852, y: 942 },
  "DT 10|TE 11": { x: -759, y: 55 },
  "EW 18": { x: -1011, y: 815 },
  "EW 19": { x: -1120, y: 625 },
  "CC 4|DT 15": { x: 60, y: 843 },
  "EW 15": { x: -490, y: 1157 },
  "EW 8|CC 9": { x: 187, y: 433 },
  "CC 19|DT 9": { x: -911, y: 47 },
  "NE 7|DT 12": { x: -348, y: 292 },
  "NS 2": { x: -1726, y: 182 },
  "NS 27|CE 2|TE 20": { x: -201, y: 1099 },
  "NS 7": { x: -1615, y: -716 },
  "NS 8": { x: -1467, y: -866 },
  "EW 10": { x: 26, y: 465 },
  "EW 4|CG": { x: 747, y: 438 },
  "EW 11": { x: -7, y: 527 },
  "NS 3": { x: -1728, y: -76 },
  "NS 5": { x: -1704, y: -534 },
  "NE 4|DT 19": { x: -567, y: 899 },
  "SE 4": { x: 377, y: -50 },
  "SE 5": { x: 278, y: -188 },
  "SE 2": { x: 555, y: -230 },
  "SE 3": { x: 522, y: -77 },
  "SE 1": { x: 419, y: -332 },
  "CC 28": { x: -965, y: 1103 },
  "CC 27": { x: -1066, y: 1029 },
  "CC 26": { x: -1163, y: 934 },
  "CC 25": { x: -1236, y: 831 },
  "CC 24": { x: -1294, y: 710 },
  "CC 23": { x: -1329, y: 592 },
  "PE 2": { x: 565, y: -327 },
  "PE 1": { x: 521, y: -424 },
  "PE 7": { x: 658, y: -572 },
  "PE 4": { x: 765, y: -317 },
  "PE 3": { x: 665, y: -278 },
  "PE 6": { x: 767, y: -528 },
  "PE 5": { x: 812, y: -425 },
  "NS 28": { x: -199, y: 1196 },
  "BP 13": { x: -1505, y: -638 },
  "BP 11": { x: -1281, y: -690 },
  "BP 12": { x: -1386, y: -708 },
  "BP 10": { x: -1216, y: -569 },
  "BP 9": { x: -1305, y: -479 },
  "BP 8": { x: -1343, y: -365 },
  "BP 7": { x: -1485, y: -386 },
  "EW 13|NS 25": { x: -384, y: 727 },
  "BP 5": { x: -1558, y: -432 },
  "BP 4": { x: -1589, y: -389 },
  "BP 3": { x: -1630, y: -359 },
  "BP 2": { x: -1680, y: -337 },
};

class MainService {
  getNetwork(): Promise<any> {
    return axios.get(`${process.env.REACT_APP_API_URL}/network/all`);
  }

  getRoutes(search: any): Promise<any> {
    return axios.get(
      `${process.env.REACT_APP_API_URL}/network/routes?from=${encodeURI(
        search.from
      )}&to=${encodeURI(search.to)}`
    );
  }
}

export const mainService = new MainService();
