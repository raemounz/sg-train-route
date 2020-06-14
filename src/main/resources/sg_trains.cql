MATCH (n) DETACH DELETE n;


/* East West line */

CREATE (:Station {name: "Pasir Ris", code: "EW 1", line: "East West", bus_interchange: true });

CREATE (:Station {name: "Tampines", code: "EW 2|DT 32", line: "East West", bus_interchange: true, station_interchange: ["DT 32"], interchange_type: ["tap out"], interchange_line: ["Downtown"] });
MATCH (a: Station {code: "EW 1"}), (b: Station {code: "EW 2|DT 32"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 6, line: "East West"}]->(b);

CREATE (:Station {name: "Simei", code: "EW 3", line: "East West", bus_interchange: false });
MATCH (a: Station {code: "EW 2|DT 32"}), (b: Station {code: "EW 3"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "East West"}]->(b);

CREATE (:Station {name: "Tanah Merah", code: "EW 4|CG", line: "East West", bus_interchange: false, station_interchange: ["CG"], interchange_type: ["standard"], interchange_line: ["East West"] });
MATCH (a: Station {code: "EW 3"}), (b: Station {code: "EW 4|CG"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 4, line: "East West"}]->(b);

CREATE (:Station {name: "Bedok", code: "EW 5", line: "East West", bus_interchange: true });
MATCH (a: Station {code: "EW 4|CG"}), (b: Station {code: "EW 5"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 4, line: "East West"}]->(b);

CREATE (:Station {name: "Kembangan", code: "EW 6", line: "East West", bus_interchange: false });
MATCH (a: Station {code: "EW 5"}), (b: Station {code: "EW 6"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 4, line: "East West"}]->(b);

CREATE (:Station {name: "Eunos", code: "EW 7", line: "East West", bus_interchange: true });
MATCH (a: Station {code: "EW 6"}), (b: Station {code: "EW 7"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "East West"}]->(b);

CREATE (:Station {name: "Paya Lebar", code: "EW 8|CC 9", line: "East West", bus_interchange: false, station_interchange: ["CC 9"], interchange_type: ["standard"], interchange_line: ["Circle"] });
MATCH (a: Station {code: "EW 7"}), (b: Station {code: "EW 8|CC 9"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "East West"}]->(b);

CREATE (:Station {name: "Aljunied", code: "EW 9", line: "East West", bus_interchange: false });
MATCH (a: Station {code: "EW 8|CC 9"}), (b: Station {code: "EW 9"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "East West"}]->(b);

CREATE (:Station {name: "Kallang", code: "EW 10", line: "East West", bus_interchange: false });
MATCH (a: Station {code: "EW 9"}), (b: Station {code: "EW 10"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "East West"}]->(b);

CREATE (:Station {name: "Lavender", code: "EW 11", line: "East West", bus_interchange: false });
MATCH (a: Station {code: "EW 10"}), (b: Station {code: "EW 11"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "East West"}]->(b);

CREATE (:Station {name: "Bugis", code: "EW 12|DT 14", line: "East West", bus_interchange: false, station_interchange: ["DT 14"], interchange_type: ["standard"], interchange_line: ["Downtown"] });
MATCH (a: Station {code: "EW 11"}), (b: Station {code: "EW 12|DT 14"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "East West"}]->(b);

CREATE (:Station {name: "City Hall", code: "EW 13|NS 25", line: "East West", bus_interchange: false, station_interchange: ["NS 25"], interchange_type: ["standard"], interchange_line: ["North South"] });
MATCH (a: Station {code: "EW 12|DT 14"}), (b: Station {code: "EW 13|NS 25"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "East West"}]->(b);

CREATE (:Station {name: "Raffles Place", code: "EW 14|NS 26", line: "East West", bus_interchange: false, station_interchange: ["NS 26"], interchange_type: ["standard"], interchange_line: ["North South"] });
MATCH (a: Station {code: "EW 13|NS 25"}), (b: Station {code: "EW 14|NS 26"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "East West"}]->(b);

CREATE (:Station {name: "Tanjong Pagar", code: "EW 15", line: "East West", bus_interchange: false });
MATCH (a: Station {code: "EW 14|NS 26"}), (b: Station {code: "EW 15"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "East West"}]->(b);

CREATE (:Station {name: "Outram Park", code: "EW 16|NE 3|TE 17", line: "East West", bus_interchange: false, station_interchange: ["NE 3", "TE 17"], interchange_type: ["standard", "standard"], interchange_line: ["North East", "Thomson-East Coast"] });
MATCH (a: Station {code: "EW 15"}), (b: Station {code: "EW 16|NE 3|TE 17"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "East West"}]->(b);

CREATE (:Station {name: "Tiong Bahru", code: "EW 17", line: "East West", bus_interchange: false });
MATCH (a: Station {code: "EW 16|NE 3|TE 17"}), (b: Station {code: "EW 17"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "East West"}]->(b);

CREATE (:Station {name: "Redhill", code: "EW 18", line: "East West", bus_interchange: false });
MATCH (a: Station {code: "EW 17"}), (b: Station {code: "EW 18"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "East West"}]->(b);

CREATE (:Station {name: "Queenstown", code: "EW 19", line: "East West", bus_interchange: false });
MATCH (a: Station {code: "EW 18"}), (b: Station {code: "EW 19"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "East West"}]->(b);

CREATE (:Station {name: "Commonwealth", code: "EW 20", line: "East West", bus_interchange: false });
MATCH (a: Station {code: "EW 19"}), (b: Station {code: "EW 20"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "East West"}]->(b);

CREATE (:Station {name: "Buona Vista", code: "EW 21|CC 22", line: "East West", bus_interchange: false, station_interchange: ["CC 22"], interchange_type: ["standard"], interchange_line: ["Circle"] });
MATCH (a: Station {code: "EW 20"}), (b: Station {code: "EW 21|CC 22"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "East West"}]->(b);

CREATE (:Station {name: "Dover", code: "EW 22", line: "East West", bus_interchange: false });
MATCH (a: Station {code: "EW 21|CC 22"}), (b: Station {code: "EW 22"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "East West"}]->(b);

CREATE (:Station {name: "Clementi", code: "EW 23", line: "East West", bus_interchange: true });
MATCH (a: Station {code: "EW 22"}), (b: Station {code: "EW 23"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "East West"}]->(b);

CREATE (:Station {name: "Jurong East", code: "EW 24|NS 1", line: "East West", bus_interchange: true, station_interchange: ["NS 1"], interchange_type: ["standard"], interchange_line: ["North South"] });
MATCH (a: Station {code: "EW 23"}), (b: Station {code: "EW 24|NS 1"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 5, line: "East West"}]->(b);

CREATE (:Station {name: "Chinese Garden", code: "EW 25", line: "East West", bus_interchange: false });
MATCH (a: Station {code: "EW 24|NS 1"}), (b: Station {code: "EW 25"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "East West"}]->(b);

CREATE (:Station {name: "Lakeside", code: "EW 26", line: "East West", bus_interchange: false });
MATCH (a: Station {code: "EW 25"}), (b: Station {code: "EW 26"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "East West"}]->(b);

CREATE (:Station {name: "Boon Lay", code: "EW 27", line: "East West", bus_interchange: true });
MATCH (a: Station {code: "EW 26"}), (b: Station {code: "EW 27"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "East West"}]->(b);

CREATE (:Station {name: "Pioneer", code: "EW 28", line: "East West", bus_interchange: false });
MATCH (a: Station {code: "EW 27"}), (b: Station {code: "EW 28"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "East West"}]->(b);

CREATE (:Station {name: "Joo Koon", code: "EW 29", line: "East West", bus_interchange: true });
MATCH (a: Station {code: "EW 28"}), (b: Station {code: "EW 29"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 4, line: "East West"}]->(b);

CREATE (:Station {name: "Gul Circle", code: "EW 30", line: "East West", bus_interchange: false });
MATCH (a: Station {code: "EW 29"}), (b: Station {code: "EW 30"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 4, line: "East West"}]->(b);

CREATE (:Station {name: "Tuas Crescent", code: "EW 31", line: "East West", bus_interchange: false });
MATCH (a: Station {code: "EW 30"}), (b: Station {code: "EW 31"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "East West"}]->(b);

CREATE (:Station {name: "Tuas West Road", code: "EW 32", line: "East West", bus_interchange: false });
MATCH (a: Station {code: "EW 31"}), (b: Station {code: "EW 32"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "East West"}]->(b);

CREATE (:Station {name: "Tuas Link", code: "EW 33", line: "East West", bus_interchange: false });
MATCH (a: Station {code: "EW 32"}), (b: Station {code: "EW 33"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "East West"}]->(b);

CREATE (:Station {name: "Expo", code: "CG 1|DT 35", line: "East West", bus_interchange: false, station_interchange: ["DT 35"], interchange_type: ["standard"], interchange_line: ["Downtown"] });
MATCH (a: Station {code: "EW 4|CG"}), (b: Station {code: "CG 1|DT 35"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "East West"}]->(b);

CREATE (:Station {name: "Changi Airport", code: "CG 2", line: "East West", bus_interchange: true });
MATCH (a: Station {code: "CG 1|DT 35"}), (b: Station {code: "CG 2"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 6, line: "East West"}]->(b);


/* North South */

CREATE (:Station {name: "Bukit Batok", code: "NS 2", line: "North South", bus_interchange: true });
MATCH (a: Station {code: "EW 24|NS 1"}), (b: Station {code: "NS 2"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 5, line: "North South"}]->(b);

CREATE (:Station {name: "Bukit Gombak", code: "NS 3", line: "North South", bus_interchange: false });
MATCH (a: Station {code: "NS 2"}), (b: Station {code: "NS 3"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "North South"}]->(b);

CREATE (:Station {name: "Choa Chu Kang", code: "NS 4|BP 1", line: "North South", bus_interchange: true, station_interchange: ["BP 1"], interchange_type: ["standard"], interchange_line: ["Bukit Panjang LRT"] });
MATCH (a: Station {code: "NS 3"}), (b: Station {code: "NS 4|BP 1"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 4, line: "North South"}]->(b);

CREATE (:Station {name: "Yew Tee", code: "NS 5", line: "North South", bus_interchange: false });
MATCH (a: Station {code: "NS 4|BP 1"}), (b: Station {code: "NS 5"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "North South"}]->(b);

CREATE (:Station {name: "Kranji", code: "NS 7", line: "North South", bus_interchange: false });
MATCH (a: Station {code: "NS 5"}), (b: Station {code: "NS 7"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 5, line: "North South"}]->(b);

CREATE (:Station {name: "Marsiling", code: "NS 8", line: "North South", bus_interchange: false });
MATCH (a: Station {code: "NS 7"}), (b: Station {code: "NS 8"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "North South"}]->(b);

CREATE (:Station {name: "Woodlands", code: "NS 9|TE 2", line: "North South", bus_interchange: true, station_interchange: ["TE 2"], interchange_type: ["standard"], interchange_line: ["Thomson-East Coast"] });
MATCH (a: Station {code: "NS 8"}), (b: Station {code: "NS 9|TE 2"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "North South"}]->(b);

CREATE (:Station {name: "Admiralty", code: "NS 10", line: "North South", bus_interchange: false });
MATCH (a: Station {code: "NS 9|TE 2"}), (b: Station {code: "NS 10"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "North South"}]->(b);

CREATE (:Station {name: "Sembawang", code: "NS 11", line: "North South", bus_interchange: true });
MATCH (a: Station {code: "NS 10"}), (b: Station {code: "NS 11"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 4, line: "North South"}]->(b);

CREATE (:Station {name: "Canberra", code: "NS 12", line: "North South", bus_interchange: false });
MATCH (a: Station {code: "NS 11"}), (b: Station {code: "NS 12"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "North South"}]->(b);

CREATE (:Station {name: "Yishun", code: "NS 13", line: "North South", bus_interchange: true });
MATCH (a: Station {code: "NS 12"}), (b: Station {code: "NS 13"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "North South"}]->(b);

CREATE (:Station {name: "Khatib", code: "NS 14", line: "North South", bus_interchange: false });
MATCH (a: Station {code: "NS 13"}), (b: Station {code: "NS 14"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "North South"}]->(b);

CREATE (:Station {name: "Yio Chu Kang", code: "NS 15", line: "North South", bus_interchange: true });
MATCH (a: Station {code: "NS 14"}), (b: Station {code: "NS 15"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 6, line: "North South"}]->(b);

CREATE (:Station {name: "Ang Mo Kio", code: "NS 16", line: "North South", bus_interchange: true });
MATCH (a: Station {code: "NS 15"}), (b: Station {code: "NS 16"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "North South"}]->(b);

CREATE (:Station {name: "Bishan", code: "NS 17|CC 15", line: "North South", bus_interchange: true, station_interchange: ["CC 15"], interchange_type: ["standard"], interchange_line: ["Circle"] });
MATCH (a: Station {code: "NS 16"}), (b: Station {code: "NS 17|CC 15"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 4, line: "North South"}]->(b);

CREATE (:Station {name: "Braddell", code: "NS 18", line: "North South", bus_interchange: false });
MATCH (a: Station {code: "NS 17|CC 15"}), (b: Station {code: "NS 18"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "North South"}]->(b);

CREATE (:Station {name: "Toa Payoh", code: "NS 19", line: "North South", bus_interchange: true });
MATCH (a: Station {code: "NS 18"}), (b: Station {code: "NS 19"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "North South"}]->(b);

CREATE (:Station {name: "Novena", code: "NS 20", line: "North South", bus_interchange: false });
MATCH (a: Station {code: "NS 19"}), (b: Station {code: "NS 20"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "North South"}]->(b);

CREATE (:Station {name: "Newton", code: "NS 21|DT 11", line: "North South", bus_interchange: false, station_interchange: ["DT 11"], interchange_type: ["tap out"], interchange_line: ["Downtown"] });
MATCH (a: Station {code: "NS 20"}), (b: Station {code: "NS 21|DT 11"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "North South"}]->(b);

CREATE (:Station {name: "Orchard", code: "NS 22|TE 14", line: "North South", bus_interchange: false, station_interchange: ["TE 14"], interchange_type: ["standard"], interchange_line: ["Thomson-East Coast"] });
MATCH (a: Station {code: "NS 21|DT 11"}), (b: Station {code: "NS 22|TE 14"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "North South"}]->(b);

CREATE (:Station {name: "Somerset", code: "NS 23", line: "North South", bus_interchange: false });
MATCH (a: Station {code: "NS 22|TE 14"}), (b: Station {code: "NS 23"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "North South"}]->(b);

CREATE (:Station {name: "Dhoby Ghaut", code: "NS 24|NE 6|CC 1", line: "North South", bus_interchange: false, station_interchange: ["NE 6", "CC 1"], interchange_type: ["standard", "standard"], interchange_line: ["North East", "Circle"] });
MATCH (a: Station {code: "NS 23"}), (b: Station {code: "NS 24|NE 6|CC 1"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "North South"}]->(b);
MATCH (a: Station {code: "NS 24|NE 6|CC 1"}), (b: Station {code: "EW 13|NS 25"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "North South"}]->(b);
MATCH (a: Station {code: "EW 13|NS 25"}), (b: Station {code: "EW 14|NS 26"}) CREATE (a)<-[:CONNECTS_TO {travel_time_min: 3, line: "North South"}]-(b);

CREATE (:Station {name: "Marina Bay", code: "NS 27|CE 2|TE 20", line: "North South", bus_interchange: false, station_interchange: ["CE 2", "TE 20"], interchange_type: ["standard", "standard"], interchange_line: ["Circle", "Thomson-East Coast"] });
MATCH (a: Station {code: "EW 14|NS 26"}), (b: Station {code: "NS 27|CE 2|TE 20"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "North South"}]->(b);

CREATE (:Station {name: "Marina South Pier", code: "NS 28", line: "North South", bus_interchange: false });
MATCH (a: Station {code: "NS 27|CE 2|TE 20"}), (b: Station {code: "NS 28"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "North South"}]->(b);


/* North East */

CREATE (:Station {name: "HarbourFront", code: "NE 1|CC 29", line: "North East", bus_interchange: true, station_interchange: ["CC 29"], interchange_type: ["standard"], interchange_line: ["Circle"] });
MATCH (a: Station {code: "NE 1|CC 29"}), (b: Station {code: "EW 16|NE 3|TE 17"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 4, line: "North East"}]->(b);

CREATE (:Station {name: "Chinatown", code: "NE 4|DT 19", line: "North East", bus_interchange: false, station_interchange: ["DT 19"], interchange_type: ["standard"], interchange_line: ["Downtown"] });
MATCH (a: Station {code: "EW 16|NE 3|TE 17"}), (b: Station {code: "NE 4|DT 19"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 1, line: "North East"}]->(b);

CREATE (:Station {name: "Clark Quay", code: "NE 5", line: "North East", bus_interchange: false });
MATCH (a: Station {code: "NE 4|DT 19"}), (b: Station {code: "NE 5"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "North East"}]->(b);
MATCH (a: Station {code: "NE 5"}), (b: Station {code: "NS 24|NE 6|CC 1"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "North East"}]->(b);

CREATE (:Station {name: "Little India", code: "NE 7|DT 12", line: "North East", bus_interchange: false, station_interchange: ["DT 12"], interchange_type: ["standard"], interchange_line: ["Downtown"] });
MATCH (a: Station {code: "NS 24|NE 6|CC 1"}), (b: Station {code: "NE 7|DT 12"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 1, line: "North East"}]->(b);

CREATE (:Station {name: "Farrer Park", code: "NE 8", line: "North East", bus_interchange: false });
MATCH (a: Station {code: "NE 7|DT 12"}), (b: Station {code: "NE 8"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 1, line: "North East"}]->(b);

CREATE (:Station {name: "Boon Keng", code: "NE 9", line: "North East", bus_interchange: false });
MATCH (a: Station {code: "NE 8"}), (b: Station {code: "NE 9"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "North East"}]->(b);

CREATE (:Station {name: "Potong Pasir", code: "NE 10", line: "North East", bus_interchange: false });
MATCH (a: Station {code: "NE 9"}), (b: Station {code: "NE 10"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "North East"}]->(b);

CREATE (:Station {name: "Woodleigh", code: "NE 11", line: "North East", bus_interchange: false });
MATCH (a: Station {code: "NE 10"}), (b: Station {code: "NE 11"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 1, line: "North East"}]->(b);

CREATE (:Station {name: "Serangoon", code: "NE 12|CC 13", line: "North East", bus_interchange: true, station_interchange: ["CC 13"], interchange_type: ["standard"], interchange_line: ["Circle"] });
MATCH (a: Station {code: "NE 11"}), (b: Station {code: "NE 12|CC 13"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "North East"}]->(b);

CREATE (:Station {name: "Kovan", code: "NE 13", line: "North East", bus_interchange: false });
MATCH (a: Station {code: "NE 12|CC 13"}), (b: Station {code: "NE 13"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "North East"}]->(b);

CREATE (:Station {name: "Hougang", code: "NE 14", line: "North East", bus_interchange: true });
MATCH (a: Station {code: "NE 13"}), (b: Station {code: "NE 14"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "North East"}]->(b);

CREATE (:Station {name: "Buangkok", code: "NE 15", line: "North East", bus_interchange: false });
MATCH (a: Station {code: "NE 14"}), (b: Station {code: "NE 15"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "North East"}]->(b);

CREATE (:Station {name: "Sengkang", code: "NE 16|STC", line: "North East", bus_interchange: true, station_interchange: ["STC"], interchange_type: ["standard"], interchange_line: ["Sengkang LRT"] });
MATCH (a: Station {code: "NE 15"}), (b: Station {code: "NE 16|STC"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "North East"}]->(b);

CREATE (:Station {name: "Punggol", code: "NE 17|PTC", line: "North East", bus_interchange: true, station_interchange: ["PTC"], interchange_type: ["standard"], interchange_line: ["Punggol LRT"] });
MATCH (a: Station {code: "NE 16|STC"}), (b: Station {code: "NE 17|PTC"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "North East"}]->(b);


/* Circle */

CREATE (:Station {name: "Bras Basah", code: "CC 2", line: "Circle", bus_interchange: false });
MATCH (a: Station {code: "NS 24|NE 6|CC 1"}), (b: Station {code: "CC 2"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Circle"}]->(b);

CREATE (:Station {name: "Esplanade", code: "CC 3", line: "Circle", bus_interchange: false });
MATCH (a: Station {code: "CC 2"}), (b: Station {code: "CC 3"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Circle"}]->(b);

CREATE (:Station {name: "Promenade", code: "CC 4|DT 15", line: "Circle", bus_interchange: false, station_interchange: ["DT 15"], interchange_type: ["standard"], interchange_line: ["Downtown"] });
MATCH (a: Station {code: "CC 3"}), (b: Station {code: "CC 4|DT 15"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "Circle"}]->(b);

CREATE (:Station {name: "Nicoll Highway", code: "CC 5", line: "Circle", bus_interchange: false });
MATCH (a: Station {code: "CC 4|DT 15"}), (b: Station {code: "CC 5"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "Circle"}]->(b);

CREATE (:Station {name: "Stadium", code: "CC 6", line: "Circle", bus_interchange: false });
MATCH (a: Station {code: "CC 5"}), (b: Station {code: "CC 6"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "Circle"}]->(b);

CREATE (:Station {name: "Mountbatten", code: "CC 7", line: "Circle", bus_interchange: false });
MATCH (a: Station {code: "CC 6"}), (b: Station {code: "CC 7"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Circle"}]->(b);

CREATE (:Station {name: "Dakota", code: "CC 8", line: "Circle", bus_interchange: false });
MATCH (a: Station {code: "CC 7"}), (b: Station {code: "CC 8"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Circle"}]->(b);
MATCH (a: Station {code: "CC 8"}), (b: Station {code: "EW 8|CC 9"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "Circle"}]->(b);

CREATE (:Station {name: "MacPherson", code: "CC 10|DT 26", line: "Circle", bus_interchange: false, station_interchange: ["DT 26"], interchange_type: ["standard"], interchange_line: ["Downtown"] });
MATCH (a: Station {code: "EW 8|CC 9"}), (b: Station {code: "CC 10|DT 26"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "Circle"}]->(b);

CREATE (:Station {name: "Tai Seng", code: "CC 11", line: "Circle", bus_interchange: false });
MATCH (a: Station {code: "CC 10|DT 26"}), (b: Station {code: "CC 11"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "Circle"}]->(b);

CREATE (:Station {name: "Bartley", code: "CC 12", line: "Circle", bus_interchange: false });
MATCH (a: Station {code: "CC 11"}), (b: Station {code: "CC 12"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "Circle"}]->(b);
MATCH (a: Station {code: "CC 12"}), (b: Station {code: "NE 12|CC 13"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "Circle"}]->(b);

CREATE (:Station {name: "Lorong Chuan", code: "CC 14", line: "Circle", bus_interchange: false });
MATCH (a: Station {code: "NE 12|CC 13"}), (b: Station {code: "CC 14"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "Circle"}]->(b);
MATCH (a: Station {code: "CC 14"}), (b: Station {code: "NS 17|CC 15"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "Circle"}]->(b);

CREATE (:Station {name: "Marymount", code: "CC 16", line: "Circle", bus_interchange: false });
MATCH (a: Station {code: "NS 17|CC 15"}), (b: Station {code: "CC 16"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "Circle"}]->(b);

CREATE (:Station {name: "Caldecott", code: "CC 17|TE 9", line: "Circle", bus_interchange: false, station_interchange: ["TE 9"], interchange_type: ["standard"], interchange_line: ["Thomson-East Coast"] });
MATCH (a: Station {code: "CC 16"}), (b: Station {code: "CC 17|TE 9"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "Circle"}]->(b);

CREATE (:Station {name: "Botanic Gardens", code: "CC 19|DT 9", line: "Circle", bus_interchange: false, station_interchange: ["DT 9"], interchange_type: ["standard"], interchange_line: ["Downtown"] });
MATCH (a: Station {code: "CC 17|TE 9"}), (b: Station {code: "CC 19|DT 9"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 5, line: "Circle"}]->(b);

CREATE (:Station {name: "Farrer Road", code: "CC 20", line: "Circle", bus_interchange: false });
MATCH (a: Station {code: "CC 19|DT 9"}), (b: Station {code: "CC 20"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "Circle"}]->(b);

CREATE (:Station {name: "Holland Village", code: "CC 21", line: "Circle", bus_interchange: false });
MATCH (a: Station {code: "CC 20"}), (b: Station {code: "CC 21"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "Circle"}]->(b);
MATCH (a: Station {code: "CC 21"}), (b: Station {code: "EW 21|CC 22"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Circle"}]->(b);

CREATE (:Station {name: "one-north", code: "CC 23", line: "Circle", bus_interchange: false });
MATCH (a: Station {code: "EW 21|CC 22"}), (b: Station {code: "CC 23"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "Circle"}]->(b);

CREATE (:Station {name: "Kent Ridge", code: "CC 24", line: "Circle", bus_interchange: false });
MATCH (a: Station {code: "CC 23"}), (b: Station {code: "CC 24"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Circle"}]->(b);

CREATE (:Station {name: "Haw Par Villa", code: "CC 25", line: "Circle", bus_interchange: false });
MATCH (a: Station {code: "CC 24"}), (b: Station {code: "CC 25"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "Circle"}]->(b);

CREATE (:Station {name: "Pasir Panjang", code: "CC 26", line: "Circle", bus_interchange: false });
MATCH (a: Station {code: "CC 25"}), (b: Station {code: "CC 26"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "Circle"}]->(b);

CREATE (:Station {name: "Labrador Park", code: "CC 27", line: "Circle", bus_interchange: false });
MATCH (a: Station {code: "CC 26"}), (b: Station {code: "CC 27"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Circle"}]->(b);

CREATE (:Station {name: "Telok Blangah", code: "CC 28", line: "Circle", bus_interchange: false });
MATCH (a: Station {code: "CC 27"}), (b: Station {code: "CC 28"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Circle"}]->(b);
MATCH (a: Station {code: "CC 28"}), (b: Station {code: "NE 1|CC 29"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "Circle"}]->(b);

CREATE (:Station {name: "Bayfront", code: "CE 1|DT 16", line: "Circle", bus_interchange: false });
MATCH (a: Station {code: "CC 4|DT 15"}), (b: Station {code: "CE 1|DT 16"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "Circle"}]->(b);
MATCH (a: Station {code: "CE 1|DT 16"}), (b: Station {code: "NS 27|CE 2|TE 20"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "Circle"}]->(b);


/* Bukit Panjang LRT */

CREATE (:Station {name: "South View", code: "BP 2", line: "Bukit Panjang LRT", bus_interchange: false });
MATCH (a: Station {code: "NS 4|BP 1"}), (b: Station {code: "BP 2"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "Bukit Panjang LRT"}]->(b);

CREATE (:Station {name: "Keat Hong", code: "BP 3", line: "Bukit Panjang LRT", bus_interchange: false });
MATCH (a: Station {code: "BP 2"}), (b: Station {code: "BP 3"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Bukit Panjang LRT"}]->(b);

CREATE (:Station {name: "Teck Whye", code: "BP 4", line: "Bukit Panjang LRT", bus_interchange: false });
MATCH (a: Station {code: "BP 3"}), (b: Station {code: "BP 4"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Bukit Panjang LRT"}]->(b);

CREATE (:Station {name: "Phoenix", code: "BP 5", line: "Bukit Panjang LRT", bus_interchange: false });
MATCH (a: Station {code: "BP 4"}), (b: Station {code: "BP 5"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Bukit Panjang LRT"}]->(b);

CREATE (:Station {name: "Bukit Panjang", code: "BP 6|DT 1", line: "Bukit Panjang LRT", bus_interchange: true, station_interchange: ["DT 1"], interchange_type: ["tap out"], interchange_line: ["Downtown"] });
MATCH (a: Station {code: "BP 5"}), (b: Station {code: "BP 6|DT 1"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Bukit Panjang LRT"}]->(b);

CREATE (:Station {name: "Petir", code: "BP 7", line: "Bukit Panjang LRT", bus_interchange: false });
MATCH (a: Station {code: "BP 6|DT 1"}), (b: Station {code: "BP 7"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Bukit Panjang LRT"}]->(b);

CREATE (:Station {name: "Pending", code: "BP 8", line: "Bukit Panjang LRT", bus_interchange: false });
MATCH (a: Station {code: "BP 7"}), (b: Station {code: "BP 8"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Bukit Panjang LRT"}]->(b);

CREATE (:Station {name: "Bangkit", code: "BP 9", line: "Bukit Panjang LRT", bus_interchange: false });
MATCH (a: Station {code: "BP 8"}), (b: Station {code: "BP 9"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Bukit Panjang LRT"}]->(b);

CREATE (:Station {name: "Fajar", code: "BP 10", line: "Bukit Panjang LRT", bus_interchange: false });
MATCH (a: Station {code: "BP 9"}), (b: Station {code: "BP 10"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "Bukit Panjang LRT"}]->(b);

CREATE (:Station {name: "Segar", code: "BP 11", line: "Bukit Panjang LRT", bus_interchange: false });
MATCH (a: Station {code: "BP 10"}), (b: Station {code: "BP 11"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Bukit Panjang LRT"}]->(b);

CREATE (:Station {name: "Jelapang", code: "BP 12", line: "Bukit Panjang LRT", bus_interchange: false });
MATCH (a: Station {code: "BP 11"}), (b: Station {code: "BP 12"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Bukit Panjang LRT"}]->(b);

CREATE (:Station {name: "Senja", code: "BP 13", line: "Bukit Panjang LRT", bus_interchange: false });
MATCH (a: Station {code: "BP 12"}), (b: Station {code: "BP 13"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Bukit Panjang LRT"}]->(b);
MATCH (a: Station {code: "BP 13"}), (b: Station {code: "BP 6|DT 1"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Bukit Panjang LRT"}]->(b);


/* Sengkang LRT */

CREATE (:Station {name: "Compassvale", code: "SE 1", line: "Sengkang LRT", bus_interchange: false });
MATCH (a: Station {code: "NE 16|STC"}), (b: Station {code: "SE 1"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Sengkang LRT"}]->(b);

CREATE (:Station {name: "Rumbia", code: "SE 2", line: "Sengkang LRT", bus_interchange: false });
MATCH (a: Station {code: "SE 1"}), (b: Station {code: "SE 2"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 1, line: "Sengkang LRT"}]->(b);

CREATE (:Station {name: "Bakau", code: "SE 3", line: "Sengkang LRT", bus_interchange: false });
MATCH (a: Station {code: "SE 2"}), (b: Station {code: "SE 3"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 1, line: "Sengkang LRT"}]->(b);

CREATE (:Station {name: "Kangkar", code: "SE 4", line: "Sengkang LRT", bus_interchange: false });
MATCH (a: Station {code: "SE 3"}), (b: Station {code: "SE 4"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 1, line: "Sengkang LRT"}]->(b);

CREATE (:Station {name: "Ranggung", code: "SE 5", line: "Sengkang LRT", bus_interchange: false });
MATCH (a: Station {code: "SE 4"}), (b: Station {code: "SE 5"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Sengkang LRT"}]->(b);
MATCH (a: Station {code: "SE 5"}), (b: Station {code: "NE 16|STC"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "Sengkang LRT"}]->(b);

CREATE (:Station {name: "Cheng Lim", code: "SW 1", line: "Sengkang LRT", bus_interchange: false });
MATCH (a: Station {code: "NE 16|STC"}), (b: Station {code: "SW 1"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Sengkang LRT"}]->(b);

CREATE (:Station {name: "Farmway", code: "SW 2", line: "Sengkang LRT", bus_interchange: false });
MATCH (a: Station {code: "SW 1"}), (b: Station {code: "SW 2"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 1, line: "Sengkang LRT"}]->(b);

CREATE (:Station {name: "Kupang", code: "SW 3", line: "Sengkang LRT", bus_interchange: false });
MATCH (a: Station {code: "SW 2"}), (b: Station {code: "SW 3"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 1, line: "Sengkang LRT"}]->(b);

CREATE (:Station {name: "Thanggam", code: "SW 4", line: "Sengkang LRT", bus_interchange: false });
MATCH (a: Station {code: "SW 3"}), (b: Station {code: "SW 4"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 1, line: "Sengkang LRT"}]->(b);

CREATE (:Station {name: "Fernvale", code: "SW 5", line: "Sengkang LRT", bus_interchange: false });
MATCH (a: Station {code: "SW 4"}), (b: Station {code: "SW 5"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 1, line: "Sengkang LRT"}]->(b);

CREATE (:Station {name: "Layar", code: "SW 6", line: "Sengkang LRT", bus_interchange: false });
MATCH (a: Station {code: "SW 5"}), (b: Station {code: "SW 6"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 1, line: "Sengkang LRT"}]->(b);

CREATE (:Station {name: "Tongkang", code: "SW 7", line: "Sengkang LRT", bus_interchange: false });
MATCH (a: Station {code: "SW 6"}), (b: Station {code: "SW 7"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 1, line: "Sengkang LRT"}]->(b);

CREATE (:Station {name: "Renjong", code: "SW 8", line: "Sengkang LRT", bus_interchange: false });
MATCH (a: Station {code: "SW 7"}), (b: Station {code: "SW 8"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 1, line: "Sengkang LRT"}]->(b);
MATCH (a: Station {code: "SW 8"}), (b: Station {code: "NE 16|STC"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "Sengkang LRT"}]->(b);


/* Punggol LRT */

CREATE (:Station {name: "Cove", code: "PE 1", line: "Punggol LRT", bus_interchange: false });
MATCH (a: Station {code: "NE 17|PTC"}), (b: Station {code: "PE 1"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "Punggol LRT"}]->(b);

CREATE (:Station {name: "Meridian", code: "PE 2", line: "Punggol LRT", bus_interchange: false });
MATCH (a: Station {code: "PE 1"}), (b: Station {code: "PE 2"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 1, line: "Punggol LRT"}]->(b);

CREATE (:Station {name: "Coral Edge", code: "PE 3", line: "Punggol LRT", bus_interchange: false });
MATCH (a: Station {code: "PE 2"}), (b: Station {code: "PE 3"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 1, line: "Punggol LRT"}]->(b);

CREATE (:Station {name: "Riviera", code: "PE 4", line: "Punggol LRT", bus_interchange: false });
MATCH (a: Station {code: "PE 3"}), (b: Station {code: "PE 4"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 1, line: "Punggol LRT"}]->(b);

CREATE (:Station {name: "Kadaloor", code: "PE 5", line: "Punggol LRT", bus_interchange: false });
MATCH (a: Station {code: "PE 4"}), (b: Station {code: "PE 5"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 1, line: "Punggol LRT"}]->(b);

CREATE (:Station {name: "Oasis", code: "PE 6", line: "Punggol LRT", bus_interchange: false });
MATCH (a: Station {code: "PE 5"}), (b: Station {code: "PE 6"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 1, line: "Punggol LRT"}]->(b);

CREATE (:Station {name: "Damai", code: "PE 7", line: "Punggol LRT", bus_interchange: false });
MATCH (a: Station {code: "PE 6"}), (b: Station {code: "PE 7"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 1, line: "Punggol LRT"}]->(b);
MATCH (a: Station {code: "PE 7"}), (b: Station {code: "NE 17|PTC"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Punggol LRT"}]->(b);

CREATE (:Station {name: "Sam Kee", code: "PW 1", line: "Punggol LRT", bus_interchange: false });
MATCH (a: Station {code: "NE 17|PTC"}), (b: Station {code: "PW 1"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Punggol LRT"}]->(b);

CREATE (:Station {name: "Punggol Point", code: "PW 3", line: "Punggol LRT", bus_interchange: false });
MATCH (a: Station {code: "PW 1"}), (b: Station {code: "PW 3"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Punggol LRT"}]->(b);

CREATE (:Station {name: "Samudera", code: "PW 4", line: "Punggol LRT", bus_interchange: false });
MATCH (a: Station {code: "PW 3"}), (b: Station {code: "PW 4"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 1, line: "Punggol LRT"}]->(b);

CREATE (:Station {name: "Nibong", code: "PW 5", line: "Punggol LRT", bus_interchange: false });
MATCH (a: Station {code: "PW 4"}), (b: Station {code: "PW 5"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 1, line: "Punggol LRT"}]->(b);

CREATE (:Station {name: "Sumang", code: "PW 6", line: "Punggol LRT", bus_interchange: false });
MATCH (a: Station {code: "PW 5"}), (b: Station {code: "PW 6"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 1, line: "Punggol LRT"}]->(b);

CREATE (:Station {name: "Soo Teck", code: "PW 7", line: "Punggol LRT", bus_interchange: false });
MATCH (a: Station {code: "PW 6"}), (b: Station {code: "PW 7"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 1, line: "Punggol LRT"}]->(b);
MATCH (a: Station {code: "PW 7"}), (b: Station {code: "NE 17|PTC"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "Punggol LRT"}]->(b);


/* Downtown */

CREATE (:Station {name: "Cashew", code: "DT 2", line: "Downtown", bus_interchange: false });
MATCH (a: Station {code: "BP 6|DT 1"}), (b: Station {code: "DT 2"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Downtown"}]->(b);

CREATE (:Station {name: "Hillview", code: "DT 3", line: "Downtown", bus_interchange: false });
MATCH (a: Station {code: "DT 2"}), (b: Station {code: "DT 3"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Downtown"}]->(b);

CREATE (:Station {name: "Beauty World", code: "DT 5", line: "Downtown", bus_interchange: false });
MATCH (a: Station {code: "DT 3"}), (b: Station {code: "DT 5"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "Downtown"}]->(b);

CREATE (:Station {name: "King Albert Park", code: "DT 6", line: "Downtown", bus_interchange: false });
MATCH (a: Station {code: "DT 5"}), (b: Station {code: "DT 6"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Downtown"}]->(b);

CREATE (:Station {name: "Sixth Avenue", code: "DT 7", line: "Downtown", bus_interchange: false });
MATCH (a: Station {code: "DT 6"}), (b: Station {code: "DT 7"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Downtown"}]->(b);

CREATE (:Station {name: "Tan Kah Kee", code: "DT 8", line: "Downtown", bus_interchange: false });
MATCH (a: Station {code: "DT 7"}), (b: Station {code: "DT 8"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Downtown"}]->(b);
MATCH (a: Station {code: "DT 8"}), (b: Station {code: "CC 19|DT 9"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Downtown"}]->(b);

CREATE (:Station {name: "Stevens", code: "DT 10|TE 11", line: "Downtown", bus_interchange: false, station_interchange: ["TE 11"], interchange_type: ["standard"], interchange_line: ["Thomson-East Coast"] });
MATCH (a: Station {code: "CC 19|DT 9"}), (b: Station {code: "DT 10|TE 11"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Downtown"}]->(b);
MATCH (a: Station {code: "DT 10|TE 11"}), (b: Station {code: "NS 21|DT 11"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Downtown"}]->(b);
MATCH (a: Station {code: "NS 21|DT 11"}), (b: Station {code: "NE 7|DT 12"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "Downtown"}]->(b);

CREATE (:Station {name: "Rochor", code: "DT 13", line: "Downtown", bus_interchange: false });
MATCH (a: Station {code: "NE 7|DT 12"}), (b: Station {code: "DT 13"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 1, line: "Downtown"}]->(b);
MATCH (a: Station {code: "DT 13"}), (b: Station {code: "EW 12|DT 14"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Downtown"}]->(b);
MATCH (a: Station {code: "EW 12|DT 14"}), (b: Station {code: "CC 4|DT 15"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Downtown"}]->(b);
MATCH (a: Station {code: "CC 4|DT 15"}), (b: Station {code: "CE 1|DT 16"}) CREATE (a)<-[:CONNECTS_TO {travel_time_min: 2, line: "Downtown"}]-(b);

CREATE (:Station {name: "Downtown", code: "DT 17", line: "Downtown", bus_interchange: false });
MATCH (a: Station {code: "CE 1|DT 16"}), (b: Station {code: "DT 17"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Downtown"}]->(b);

CREATE (:Station {name: "Telok Ayer", code: "DT 18", line: "Downtown", bus_interchange: false });
MATCH (a: Station {code: "DT 17"}), (b: Station {code: "DT 18"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 1, line: "Downtown"}]->(b);
MATCH (a: Station {code: "DT 18"}), (b: Station {code: "NE 4|DT 19"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Downtown"}]->(b);

CREATE (:Station {name: "Fort Canning", code: "DT 20", line: "Downtown", bus_interchange: false });
MATCH (a: Station {code: "NE 4|DT 19"}), (b: Station {code: "DT 20"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Downtown"}]->(b);

CREATE (:Station {name: "Bencoolen", code: "DT 21", line: "Downtown", bus_interchange: false });
MATCH (a: Station {code: "DT 20"}), (b: Station {code: "DT 21"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Downtown"}]->(b);

CREATE (:Station {name: "Jalan Besar", code: "DT 22", line: "Downtown", bus_interchange: false });
MATCH (a: Station {code: "DT 21"}), (b: Station {code: "DT 22"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 1, line: "Downtown"}]->(b);

CREATE (:Station {name: "Bendemeer", code: "DT 23", line: "Downtown", bus_interchange: false });
MATCH (a: Station {code: "DT 22"}), (b: Station {code: "DT 23"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Downtown"}]->(b);

CREATE (:Station {name: "Geylang Bahru", code: "DT 24", line: "Downtown", bus_interchange: false });
MATCH (a: Station {code: "DT 23"}), (b: Station {code: "DT 24"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Downtown"}]->(b);

CREATE (:Station {name: "Mattar", code: "DT 25", line: "Downtown", bus_interchange: false });
MATCH (a: Station {code: "DT 24"}), (b: Station {code: "DT 25"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Downtown"}]->(b);
MATCH (a: Station {code: "DT 25"}), (b: Station {code: "CC 10|DT 26"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Downtown"}]->(b);

CREATE (:Station {name: "Ubi", code: "DT 27", line: "Downtown", bus_interchange: false });
MATCH (a: Station {code: "CC 10|DT 26"}), (b: Station {code: "DT 27"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Downtown"}]->(b);

CREATE (:Station {name: "Kaki Bukit", code: "DT 28", line: "Downtown", bus_interchange: false });
MATCH (a: Station {code: "DT 27"}), (b: Station {code: "DT 28"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Downtown"}]->(b);

CREATE (:Station {name: "Bedok North", code: "DT 29", line: "Downtown", bus_interchange: false });
MATCH (a: Station {code: "DT 28"}), (b: Station {code: "DT 29"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Downtown"}]->(b);

CREATE (:Station {name: "Bedok Reservoir", code: "DT 30", line: "Downtown", bus_interchange: false });
MATCH (a: Station {code: "DT 29"}), (b: Station {code: "DT 30"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Downtown"}]->(b);

CREATE (:Station {name: "Tampines West", code: "DT 31", line: "Downtown", bus_interchange: false });
MATCH (a: Station {code: "DT 30"}), (b: Station {code: "DT 31"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "Downtown"}]->(b);
MATCH (a: Station {code: "DT 31"}), (b: Station {code: "EW 2|DT 32"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Downtown"}]->(b);

CREATE (:Station {name: "Tampines East", code: "DT 33", line: "Downtown", bus_interchange: false });
MATCH (a: Station {code: "EW 2|DT 32"}), (b: Station {code: "DT 33"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Downtown"}]->(b);

CREATE (:Station {name: "Upper Changi", code: "DT 34", line: "Downtown", bus_interchange: false });
MATCH (a: Station {code: "DT 33"}), (b: Station {code: "DT 34"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "Downtown"}]->(b);
MATCH (a: Station {code: "DT 34"}), (b: Station {code: "CG 1|DT 35"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Downtown"}]->(b);


/* Thomson-East Coast */

CREATE (:Station {name: "Woodlands North", code: "TE 1", line: "Thomson-East Coast", bus_interchange: false });
MATCH (a: Station {code: "TE 1"}), (b: Station {code: "NS 9|TE 2"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Thomson-East Coast"}]->(b);

CREATE (:Station {name: "Woodlands South", code: "TE 3", line: "Thomson-East Coast", bus_interchange: false });
MATCH (a: Station {code: "NS 9|TE 2"}), (b: Station {code: "TE 3"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Thomson-East Coast"}]->(b);

/* The following will have assumed travel_time_min value of 2 as they are still new stations */

CREATE (:Station {name: "Springleaf", code: "TE 4", line: "Thomson-East Coast", bus_interchange: false });
MATCH (a: Station {code: "TE 3"}), (b: Station {code: "TE 4"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Thomson-East Coast"}]->(b);

CREATE (:Station {name: "Lentor", code: "TE 5", line: "Thomson-East Coast", bus_interchange: false });
MATCH (a: Station {code: "TE 4"}), (b: Station {code: "TE 5"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Thomson-East Coast"}]->(b);

CREATE (:Station {name: "Mayflower", code: "TE 6", line: "Thomson-East Coast", bus_interchange: false });
MATCH (a: Station {code: "TE 5"}), (b: Station {code: "TE 6"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Thomson-East Coast"}]->(b);

CREATE (:Station {name: "Bright Hill", code: "TE 7", line: "Thomson-East Coast", bus_interchange: false });
MATCH (a: Station {code: "TE 6"}), (b: Station {code: "TE 7"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Thomson-East Coast"}]->(b);

CREATE (:Station {name: "Upper Thomson", code: "TE 8", line: "Thomson-East Coast", bus_interchange: false });
MATCH (a: Station {code: "TE 7"}), (b: Station {code: "TE 8"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Thomson-East Coast"}]->(b);
MATCH (a: Station {code: "TE 8"}), (b: Station {code: "CC 17|TE 9"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Thomson-East Coast"}]->(b);
