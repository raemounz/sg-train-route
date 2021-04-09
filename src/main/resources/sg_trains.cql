MATCH (n) DETACH DELETE n;


/* East West line */

CREATE (:Station {name: "Pasir Ris", code: "EW 1", line: "East West", bus_interchange: true, 
    names: ["Pasir Ris", "巴西立", "பாசிர் ரிஸ்", "Pasir Ris"], coordinates: "1°22′20.68″N 103°56′57.73″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.673785727598!2d103.94718071527508!3d1.37241646188355!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjInMjAuNyJOIDEwM8KwNTYnNTcuNyJF!5e0!3m2!1sen!2ssg!4v1616832810357!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "EW 1", line: "East West", location: "10 Pasir Ris Central Singapore 519634", operator: "SMRT"})], 
    parking: true, bicycle_facilities: true, disabled_access: true });

CREATE (:Station {name: "Tampines", code: "EW 2|DT 32", line: "East West", bus_interchange: true, station_interchange: ["DT 32"], interchange_type: ["tap out"], interchange_line: ["Downtown"], 
    names: ["Tampines", "淡滨尼", "தெம்பினிஸ்", "Tampines"], coordinates: "1°21′9.10″N 103°56′43.16″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.706707550038!2d103.94313351527518!3d1.352533161942307!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjEnMDkuMSJOIDEwM8KwNTYnNDMuMiJF!5e0!3m2!1sen!2ssg!4v1616832985059!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "EW 2", line: "East West", location: "20 Tampines Central 1 Singapore 529538", operator: "SMRT"}),
            apoc.convert.toJson({code: "DT 32", line: "Downtown", location: "15 Tampines Central 1 Singapore 529544", operator: "SBS"})],
    parking: true, bicycle_facilities: true, disabled_access: true });
MATCH (a: Station {code: "EW 1"}), (b: Station {code: "EW 2|DT 32"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 6, line: "East West"}]->(b);

CREATE (:Station {name: "Simei", code: "EW 3", line: "East West", bus_interchange: false, 
    names: ["Simei", "四美", "ஸீமெய்", "Simei"], coordinates: "1°20′36.40″N 103°57′11.42″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.721587565037!2d103.95098351527524!3d1.3434497619689376!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjAnMzYuNCJOIDEwM8KwNTcnMTEuNCJF!5e0!3m2!1sen!2ssg!4v1616838136052!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "EW 3", line: "East West", location: "30 Simei Street 3 Singapore 529888", operator: "SMRT"})], 
    parking: true, bicycle_facilities: true, disabled_access: true  });
MATCH (a: Station {code: "EW 2|DT 32"}), (b: Station {code: "EW 3"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "East West"}]->(b);

CREATE (:Station {name: "Tanah Merah", code: "EW 4|CG", line: "East West", bus_interchange: false, station_interchange: ["CG"], interchange_type: ["standard"], interchange_line: ["East West"],
    names: ["Tanah Merah", "丹那美拉","தானா மேரா", "Tanah Merah"], coordinates: "1°19′38.49″N 103°56′46.84″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3342.5189617930064!2d103.94383240831746!3d1.3275852242354524!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTknMzguNSJOIDEwM8KwNTYnNDYuOCJF!5e0!3m2!1sen!2ssg!4v1616838196781!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "EW 4|CG", line: "East West", location: "920 New Upper Changi Road Singapore 467356", operator: "SMRT"})], 
    parking: false, bicycle_facilities: true, disabled_access: true });
MATCH (a: Station {code: "EW 3"}), (b: Station {code: "EW 4|CG"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 4, line: "East West"}]->(b);

CREATE (:Station {name: "Bedok", code: "EW 5", line: "East West", bus_interchange: true, 
    names: ["Bedok", "勿洛", "பிடோக்", "Bedok"], coordinates: "1°19′26.54″N 103°55′48.13″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.7530409163355!2d103.92784741527527!3d1.3240442620253716!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTknMjYuNSJOIDEwM8KwNTUnNDguMSJF!5e0!3m2!1sen!2ssg!4v1616838260005!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "EW 5", line: "East West", location: "315 New Upper Changi Road Singapore 467347", operator: "SMRT"})], 
    parking: true, bicycle_facilities: true, disabled_access: true  });
MATCH (a: Station {code: "EW 4|CG"}), (b: Station {code: "EW 5"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 4, line: "East West"}]->(b);

CREATE (:Station {name: "Kembangan", code: "EW 6", line: "East West", bus_interchange: false,
    names: ["Kembangan", "景万岸 / 景萬岸", "கெம்பாங்கான்", "Kembangan"], coordinates: "1°19′15.54″N 103°54′46.23″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3628.2487421193487!2d103.91099278995924!3d1.3198160828927656!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTknMTUuNSJOIDEwM8KwNTQnNDYuMiJF!5e0!3m2!1sen!2ssg!4v1616838332667!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "EW 6", line: "East West", location: "55 Sims Avenue East Singapore 416551", operator: "SMRT"})], 
    parking: false, bicycle_facilities: true, disabled_access: true });
MATCH (a: Station {code: "EW 5"}), (b: Station {code: "EW 6"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 4, line: "East West"}]->(b);

CREATE (:Station {name: "Eunos", code: "EW 7", line: "East West", bus_interchange: true,
    names: ["Eunos", "友诺士", "யூனுஸ்", "Eunos"], coordinates: "1°19′11.01″N 103°54′11.19″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.759970925883!2d103.90091961519597!3d1.319730362038031!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTknMTEuMCJOIDEwM8KwNTQnMTEuMiJF!5e0!3m2!1sen!2ssg!4v1616838385483!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "EW 7", line: "East West", location: "30 Eunos Crescent Singapore 409423", operator: "SMRT"})], 
    parking: true, bicycle_facilities: true, disabled_access: true });
MATCH (a: Station {code: "EW 6"}), (b: Station {code: "EW 7"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "East West"}]->(b);

CREATE (:Station {name: "Paya Lebar", code: "EW 8|CC 9", line: "East West", bus_interchange: false, station_interchange: ["CC 9"], interchange_type: ["standard"], interchange_line: ["Circle"],
    names: ["Paya Lebar", "巴耶利峇", "பாய லேபார்", "Paya Lebar"], coordinates: "1°19′04″N 103°53′33″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.7630915737664!2d103.8903113151959!3d1.3177831620436444!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTknMDQuMCJOIDEwM8KwNTMnMzMuMCJF!5e0!3m2!1sen!2ssg!4v1616838449274!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "EW 8", line: "East West", location: "30 Paya Lebar Road Singapore 409006", operator: "SMRT"}), 
            apoc.convert.toJson({code: "CC 9", line: "Circle", location: "15 Paya Lebar Road Singapore 409049", operator: "SMRT"})],
    parking: true, bicycle_facilities: true, disabled_access: true });
MATCH (a: Station {code: "EW 7"}), (b: Station {code: "EW 8|CC 9"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "East West"}]->(b);

CREATE (:Station {name: "Aljunied", code: "EW 9", line: "East West", bus_interchange: false,
    names: ["Aljunied", "阿裕尼", "அல்ஜூனிட்", "Aljunied"], coordinates: "1°18′59.19″N 103°52′58.73″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.765230187246!2d103.88079191519591!3d1.3164470620474857!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTgnNTkuMiJOIDEwM8KwNTInNTguNyJF!5e0!3m2!1sen!2ssg!4v1616838525407!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "EW 9", line: "East West", location: "81 Lorong 25 Geylang Singapore 388310", operator: "SMRT"})], 
    parking: false, bicycle_facilities: true, disabled_access: true });
MATCH (a: Station {code: "EW 8|CC 9"}), (b: Station {code: "EW 9"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "East West"}]->(b);

CREATE (:Station {name: "Kallang", code: "EW 10", line: "East West", bus_interchange: false,
    names: ["Kallang", "加冷", "காலாங்", "Kallang"], coordinates: "1°18′41.29″N 103°52′17.04″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.773169987111!2d103.86921131519594!3d1.3114747620617757!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTgnNDEuMyJOIDEwM8KwNTInMTcuMCJF!5e0!3m2!1sen!2ssg!4v1616838572883!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "EW 10", line: "East West", location: "5 Sims Avenue Singapore 387405", operator: "SMRT"})], 
    parking: true, bicycle_facilities: true, disabled_access: true });
MATCH (a: Station {code: "EW 9"}), (b: Station {code: "EW 10"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "East West"}]->(b);

CREATE (:Station {name: "Lavender", code: "EW 11", line: "East West", bus_interchange: false,
    names: ["Lavender", "劳明达", "லவண்டர்", "Lavender"], coordinates: "1°18′25.80″N 103°51′46.83″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.7800163206675!2d103.86081961519592!3d1.307172062074118!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTgnMjUuOCJOIDEwM8KwNTEnNDYuOCJF!5e0!3m2!1sen!2ssg!4v1616838724231!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "EW 11", line: "East West", location: "50 Kallang Road Singapore 208699", operator: "SMRT"})], 
    parking: true, bicycle_facilities: true, disabled_access: true });
MATCH (a: Station {code: "EW 10"}), (b: Station {code: "EW 11"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "East West"}]->(b);

CREATE (:Station {name: "Bugis", code: "EW 12|DT 14", line: "East West", bus_interchange: false, station_interchange: ["DT 14"], interchange_type: ["standard"], interchange_line: ["Downtown"],
    names: ["Bugis", "武吉士", "பூகிஸ்", "Bugis"], coordinates: "1°18′01″N 103°51′22″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.790930902987!2d103.85392241527524!3d1.300283162093631!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTgnMDEuMCJOIDEwM8KwNTEnMjIuMCJF!5e0!3m2!1sen!2ssg!4v1616838781745!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "EW 12", line: "East West", location: "320 Victoria Street Singapore 188045", operator: "SMRT"}), 
            apoc.convert.toJson({code: "DT 14", line: "Downtown", location: "191 Rochor Road Singapore 188476", operator: "SBS"})], 
    parking: true, bicycle_facilities: true, disabled_access: true });
MATCH (a: Station {code: "EW 11"}), (b: Station {code: "EW 12|DT 14"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "East West"}]->(b);

CREATE (:Station {name: "City Hall", code: "EW 13|NS 25", line: "East West", bus_interchange: false, station_interchange: ["NS 25"], interchange_type: ["standard"], interchange_line: ["North South"],
    names: ["City Hall", "政府大厦", "நகர மண்டபம்", "City Hall"], coordinates: "1°17′35.66″N 103°51′7.99″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.8020235813365!2d103.85003071527531!3d1.2932442621136704!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTcnMzUuNyJOIDEwM8KwNTEnMDguMCJF!5e0!3m2!1sen!2ssg!4v1616838889346!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "EW 13", line: "East West", location: "150 North Bridge Road Singapore 179100", operator: "SMRT"}), 
            apoc.convert.toJson({code: "NS 25", line: "North South", location: "150 North Bridge Road Singapore 179100", operator: "SMRT"})], 
    parking: true, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "EW 12|DT 14"}), (b: Station {code: "EW 13|NS 25"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "East West"}]->(b);

CREATE (:Station {name: "Raffles Place", code: "EW 14|NS 26", line: "East West", bus_interchange: false, station_interchange: ["NS 26"], interchange_type: ["standard"], interchange_line: ["North South"],
    names: ["Raffles Place", "莱佛士坊", "ராஃபிள்ஸ் பிளேஸ்", "Raffles Place"], coordinates: "1°17′1.97″N 103°51′5.52″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.8166782017897!2d103.8493446152753!3d1.2838859621401972!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTcnMDIuMCJOIDEwM8KwNTEnMDUuNSJF!5e0!3m2!1sen!2ssg!4v1616838956114!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "EW 14", line: "East West", location: "5 Raffles Place Singapore 048618", operator: "SMRT"}),
            apoc.convert.toJson({code: "NS 26", line: "North South", location: "5 Raffles Place Singapore 048618", operator: "SMRT"})],
    parking: true, bicycle_facilities: true, disabled_access: true });
MATCH (a: Station {code: "EW 13|NS 25"}), (b: Station {code: "EW 14|NS 26"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "East West"}]->(b);

CREATE (:Station {name: "Tanjong Pagar", code: "EW 15", line: "East West", bus_interchange: false,
    names: ["Tanjong Pagar", "丹戎巴葛", "தஞ்சோங் பகார்", "Tanjong Pagar"], coordinates: "1°16′35.18″N 103°50′44.56″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.828255570493!2d103.8435224152753!3d1.2764442621611705!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTYnMzUuMiJOIDEwM8KwNTAnNDQuNiJF!5e0!3m2!1sen!2ssg!4v1616839006862!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "EW 15", line: "East West", location: "120 Maxwell Road Singapore 069119", operator: "SMRT"})],
    parking: true, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "EW 14|NS 26"}), (b: Station {code: "EW 15"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "East West"}]->(b);

CREATE (:Station {name: "Outram Park", code: "EW 16|NE 3|TE 17", line: "East West", bus_interchange: false, station_interchange: ["NE 3", "TE 17"], interchange_type: ["standard", "standard"], interchange_line: ["North East", "Thomson-East Coast"],
    names: ["Outram Park", "欧南园", "ஊட்ரம் பார்க்", "Outram Park"], coordinates: "1°16′49″N 103°50′22″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.8222916333957!2d103.8372557152753!3d1.2802831621503734!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTYnNDkuMCJOIDEwM8KwNTAnMjIuMCJF!5e0!3m2!1sen!2ssg!4v1616839051708!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "EW 16", line: "East West", location: "10 Outram Road Singapore 169037", operator: "SMRT"}),
            apoc.convert.toJson({code: "NE 3", line: "North East", location: "300 Eu Tong Sen Street Singapore 059816", operator: "SBS"}),
            apoc.convert.toJson({code: "TE 17", line: "Thomson-East Coast", location: "13 Outram Road Singapore 169080", operator: "SMRT"})],
    parking: true, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "EW 15"}), (b: Station {code: "EW 16|NE 3|TE 17"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "East West"}]->(b);

CREATE (:Station {name: "Tiong Bahru", code: "EW 17", line: "East West", bus_interchange: false,
    names: ["Tiong Bahru", "中峇鲁", "தியோங் பாரு", "Tiong Bahru"], coordinates: "1°17′9.89″N 103°49′37.05″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.813242681557!2d103.82476961527541!3d1.2860859621339729!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTcnMDkuOSJOIDEwM8KwNDknMzcuMSJF!5e0!3m2!1sen!2ssg!4v1616839096732!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "EW 17", line: "East West", location: "300 Tiong Bahru Road Singapore 168731", operator: "SMRT"})],
    parking: true, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "EW 16|NE 3|TE 17"}), (b: Station {code: "EW 17"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "East West"}]->(b);

CREATE (:Station {name: "Redhill", code: "EW 18", line: "East West", bus_interchange: false,
    names: ["Redhill", "红山", "ரெட்ஹில்", "Redhill"], coordinates: "1°17′23.04″N 103°49′0.30″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.80752563696!2d103.81456131527524!3d1.2897386621236278!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTcnMjMuMCJOIDEwM8KwNDknMDAuMyJF!5e0!3m2!1sen!2ssg!4v1616839146663!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "EW 18", line: "East West", location: "920 Tiong Bahru Road Singapore 158792", operator: "SMRT"})],
    parking: true, bicycle_facilities: true, disabled_access: true });
MATCH (a: Station {code: "EW 17"}), (b: Station {code: "EW 18"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "East West"}]->(b);

CREATE (:Station {name: "Queenstown", code: "EW 19", line: "East West", bus_interchange: false,
    names: ["Queenstown", "女皇镇", "குவீன்ஸ்டவுன்", "Queenstown"], coordinates: "1°17′39.99″N 103°48′22.01″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.800132340502!2d103.80392521527529!3d1.2944470621102508!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTcnNDAuMCJOIDEwM8KwNDgnMjIuMCJF!5e0!3m2!1sen!2ssg!4v1616839198005!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "EW 19", line: "East West", location: "301 Commonwealth Avenue Singapore 149729", operator: "SMRT"})],
    parking: true, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "EW 18"}), (b: Station {code: "EW 19"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "East West"}]->(b);

CREATE (:Station {name: "Commonwealth", code: "EW 20", line: "East West", bus_interchange: false,
    names: ["Commonwealth", "联邦", "காமன்வெல்த்", "Commonwealth"], coordinates: "1°18′9.21″N 103°47′53.61″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.78732412674!2d103.7960363152752!3d1.3025636620871144!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTgnMDkuMiJOIDEwM8KwNDcnNTMuNiJF!5e0!3m2!1sen!2ssg!4v1616839242875!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "EW 20", line: "East West", location: "375 Commonwealth Avenue Singapore 149735", operator: "SMRT"})],
    parking: true, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "EW 19"}), (b: Station {code: "EW 20"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "East West"}]->(b);

CREATE (:Station {name: "Buona Vista", code: "EW 21|CC 22", line: "East West", bus_interchange: false, station_interchange: ["CC 22"], interchange_type: ["standard"], interchange_line: ["Circle"],
    names: ["Buona Vista", "波那维斯达", "புவன விஸ்தா", "Buona Vista"], coordinates: "1°18′25″N 103°47′26″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.780369426975!2d103.7883669152752!3d1.3069497620745572!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTgnMjUuMCJOIDEwM8KwNDcnMjYuMCJF!5e0!3m2!1sen!2ssg!4v1616839284715!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "EW 21", line: "East West", location: "100 North Buona Vista Road Singapore 139345", operator: "SMRT"}),
            apoc.convert.toJson({code: "CC 22", line: "Circle", location: "150 North Buona Vista Road Singapore 139350", operator: "SMRT"})],
    parking: true, bicycle_facilities: true, disabled_access: true });
MATCH (a: Station {code: "EW 20"}), (b: Station {code: "EW 21|CC 22"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "East West"}]->(b);

CREATE (:Station {name: "Dover", code: "EW 22", line: "East West", bus_interchange: false,
    names: ["Dover", "杜弗", "டோவெர்", "Dover"], coordinates: "1°18′40.73″N 103°46′43.17″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.773417806064!2d103.77646961527522!3d1.311319262062026!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTgnNDAuNyJOIDEwM8KwNDYnNDMuMiJF!5e0!3m2!1sen!2ssg!4v1616839328941!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "EW 22", line: "East West", location: "200 Commonwealth Avenue West Singapore 138677", operator: "SMRT"})],
    parking: true, bicycle_facilities: true, disabled_access: true });
MATCH (a: Station {code: "EW 21|CC 22"}), (b: Station {code: "EW 22"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "East West"}]->(b);

CREATE (:Station {name: "Clementi", code: "EW 23", line: "East West", bus_interchange: true,
    names: ["Clementi", "金文泰", "கிளிமெண்டி", "Clementi"], coordinates: "1°18′55.09″N 103°45′54.88″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.767051442283!2d103.76305571527526!3d1.3153081620505624!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTgnNTUuMSJOIDEwM8KwNDUnNTQuOSJF!5e0!3m2!1sen!2ssg!4v1616845096402!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "EW 23", line: "East West", location: "3150 Commonwealth Avenue West Singapore 129580", operator: "SMRT"})],
    parking: true, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "EW 22"}), (b: Station {code: "EW 23"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "East West"}]->(b);

CREATE (:Station {name: "Jurong East", code: "EW 24|NS 1", line: "East West", bus_interchange: true, station_interchange: ["NS 1"], interchange_type: ["standard"], interchange_line: ["North South"],
    names: ["Jurong East", "裕廊东", "ஜூரோங் கிழக்கு", "Jurong East"], coordinates: "1°20′00″N 103°44′32″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.73803320628!2d103.74003351527516!3d1.333338661998411!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjAnMDAuMCJOIDEwM8KwNDQnMzIuMCJF!5e0!3m2!1sen!2ssg!4v1616845165210!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "EW 24", line: "East West", location: "10 Jurong East Street 12 Singapore 609690", operator: "SMRT"}),
            apoc.convert.toJson({code: "NS 1", line: "North South", location: "10 Jurong East Street 12 Singapore 609690", operator: "SMRT"})],
    parking: true, bicycle_facilities: true, disabled_access: true });
MATCH (a: Station {code: "EW 23"}), (b: Station {code: "EW 24|NS 1"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 5, line: "East West"}]->(b);

CREATE (:Station {name: "Chinese Garden", code: "EW 25", line: "East West", bus_interchange: false,
    names: ["Chinese Garden", "裕华园", "சீனத் தோட்டம்", "Chinese Garden"], coordinates: "1°20′33.76″N 103°43′56.88″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.7227844506683!2d103.7302780152751!3d1.342716461971071!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjAnMzMuOCJOIDEwM8KwNDMnNTYuOSJF!5e0!3m2!1sen!2ssg!4v1616845239803!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "EW 25", line: "East West", location: "151 Boon Lay Way Singapore 609959", operator: "SMRT"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "EW 24|NS 1"}), (b: Station {code: "EW 25"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "East West"}]->(b);

CREATE (:Station {name: "Lakeside", code: "EW 26", line: "East West", bus_interchange: false,
    names: ["Lakeside", "湖畔", "ஏரிக்கரை", "Lakeside"], coordinates: "1°20′40.52″N 103°43′16.10″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.719718216843!2d103.71895021527514!3d1.344594261965588!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjAnNDAuNSJOIDEwM8KwNDMnMTYuMSJF!5e0!3m2!1sen!2ssg!4v1616845290108!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "EW 26", line: "East West", location: "201 Boon Lay Way Singapore 649845", operator: "SMRT"})],
    parking: false, bicycle_facilities: true, disabled_access: true });
MATCH (a: Station {code: "EW 25"}), (b: Station {code: "EW 26"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "East West"}]->(b);

CREATE (:Station {name: "Boon Lay", code: "EW 27", line: "East West", bus_interchange: true,
    names: ["Boon Lay", "文礼", "பூன் லே", "Boon Lay"], coordinates: "1°20′19.98″N 103°42′22.35″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.7290215445905!2d103.70401961527524!3d1.338888661982253!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjAnMjAuMCJOIDEwM8KwNDInMjIuNCJF!5e0!3m2!1sen!2ssg!4v1616845331076!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "EW 27", line: "East West", location: "301 Boon Lay Way Singapore 649846", operator: "SMRT"})],
    parking: true, bicycle_facilities: true, disabled_access: true });
MATCH (a: Station {code: "EW 26"}), (b: Station {code: "EW 27"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "East West"}]->(b);

CREATE (:Station {name: "Pioneer", code: "EW 28", line: "East West", bus_interchange: false,
    names: ["Pioneer", "先驱", "பயனியர்", "Pioneer"], coordinates: "1°20′15.28″N 103°41′49.98″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.7311446811204!2d103.69502801527516!3d1.3375831619860477!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjAnMTUuMyJOIDEwM8KwNDEnNTAuMCJF!5e0!3m2!1sen!2ssg!4v1616845377096!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "EW 28", line: "East West", location: "31 Jurong West Street 63 Singapore 648310", operator: "SMRT"})],
    parking: true, bicycle_facilities: true, disabled_access: true });
MATCH (a: Station {code: "EW 27"}), (b: Station {code: "EW 28"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "East West"}]->(b);

CREATE (:Station {name: "Joo Koon", code: "EW 29", line: "East West", bus_interchange: true,
    names: ["Joo Koon", "裕群", "ஜூ கூன்", "Joo Koon"], coordinates: "1°19′39.86″N 103°40′42.55″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.7470790847083!2d103.67629741527522!3d1.327744262014646!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTknMzkuOSJOIDEwM8KwNDAnNDIuNiJF!5e0!3m2!1sen!2ssg!4v1616845516510!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "EW 29", line: "East West", location: "91 Joo Koon Circle Singapore 629116", operator: "SMRT"})],
    parking: true, bicycle_facilities: true, disabled_access: true });
MATCH (a: Station {code: "EW 28"}), (b: Station {code: "EW 29"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 4, line: "East West"}]->(b);

CREATE (:Station {name: "Gul Circle", code: "EW 30", line: "East West", bus_interchange: false,
    names: ["Gul Circle", "卡尔圈", "கல் சர்க்கல்", "Gul Circle"], coordinates: "1°19′16.32″N 103°39′56.52″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.757603974901!2d103.66351131527534!3d1.3212053620335582!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTknMTYuMyJOIDEwM8KwMzknNTYuNSJF!5e0!3m2!1sen!2ssg!4v1616845560674!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "EW 30", line: "East West", location: "7A Tuas Road Singapore 637288", operator: "SMRT"})],
    parking: true, bicycle_facilities: true, disabled_access: true });
MATCH (a: Station {code: "EW 29"}), (b: Station {code: "EW 30"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 4, line: "East West"}]->(b);

CREATE (:Station {name: "Tuas Crescent", code: "EW 31", line: "East West", bus_interchange: false,
    names: ["Tuas Crescent", "大士弯", "துவாஸ் கிரசண்ட்", "Tuas Crescent"], coordinates: "1°19′16.1″N 103°38′56.4″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1994.37885103766!2d103.64790565655869!3d1.321144262033739!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTknMTYuMSJOIDEwM8KwMzgnNTYuNCJF!5e0!3m2!1sen!2ssg!4v1616845933558!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "EW 31", line: "East West", location: "90 Pioneer Road Singapore 639608", operator: "SMRT"})],
    parking: false, bicycle_facilities: true, disabled_access: true });
MATCH (a: Station {code: "EW 30"}), (b: Station {code: "EW 31"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "East West"}]->(b);

CREATE (:Station {name: "Tuas West Road", code: "EW 32", line: "East West", bus_interchange: false,
    names: ["Tuas West Road", "大士西路", "துவாஸ் வெஸ்ட் ரோடு", "Tuas West Road"], coordinates: "1°19′48.2″N 103°38′22.6″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.743337704289!2d103.6374224152752!3d1.3300609620079367!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTknNDguMiJOIDEwM8KwMzgnMjIuNiJF!5e0!3m2!1sen!2ssg!4v1616845982239!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "EW 32", line: "East West", location: "131 Pioneer Road Singapore 639609", operator: "SMRT"})],
    parking: false, bicycle_facilities: true, disabled_access: true });
MATCH (a: Station {code: "EW 31"}), (b: Station {code: "EW 32"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "East West"}]->(b);

CREATE (:Station {name: "Tuas Link", code: "EW 33", line: "East West", bus_interchange: false,
    names: ["Tuas Link", "大士连路", "துவாஸ் லிங்க்", "Tuas Link"], coordinates: "1°20′25″N 103°38′12.5″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.726751379835!2d103.63461691527519!3d1.3402831619781872!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjAnMjUuMCJOIDEwM8KwMzgnMTIuNSJF!5e0!3m2!1sen!2ssg!4v1616846026868!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "EW 33", line: "East West", location: "20 Tuas West Drive Singapore 638418", operator: "SMRT"})],
    parking: false, bicycle_facilities: true, disabled_access: true });
MATCH (a: Station {code: "EW 32"}), (b: Station {code: "EW 33"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "East West"}]->(b);

CREATE (:Station {name: "Expo", code: "CG 1|DT 35", line: "East West", bus_interchange: false, station_interchange: ["DT 35"], interchange_type: ["standard"], interchange_line: ["Downtown"],
    names: ["Expo", "博览", "எக்ஸ்போ", "Expo"], coordinates: "1°20′7.69″N 103°57′42.36″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.734569202239!2d103.95957801527517!3d1.3354747619921983!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjAnMDcuNyJOIDEwM8KwNTcnNDIuNCJF!5e0!3m2!1sen!2ssg!4v1616846076082!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "CG 1", line: "East West", location: "21 Changi South Avenue 1 Singapore 486065", operator: "SMRT"}),
            apoc.convert.toJson({code: "DT 35", line: "Downtown", location: "2 Expo Drive Singapore 485985", operator: "SBS"})],
    parking: true, bicycle_facilities: true, disabled_access: true });
MATCH (a: Station {code: "EW 4|CG"}), (b: Station {code: "CG 1|DT 35"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "East West"}]->(b);

CREATE (:Station {name: "Changi Airport", code: "CG 2", line: "East West", bus_interchange: true,
    names: ["Changi Airport", "樟宜机场", "சாங்கி விமானநிலையம்", "Changi Airport"], coordinates: "1°21′26.54″N 103°59′19.81″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.6987306829315!2d103.98664741527517!3d1.3573775619280508!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjEnMjYuNSJOIDEwM8KwNTknMTkuOCJF!5e0!3m2!1sen!2ssg!4v1616846118053!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "CG 2", line: "East West", location: "70 Airport Boulevard Singapore 819661", operator: "SMRT"})],
    parking: true, bicycle_facilities: true, disabled_access: true });
MATCH (a: Station {code: "CG 1|DT 35"}), (b: Station {code: "CG 2"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 6, line: "East West"}]->(b);


/* North South */

CREATE (:Station {name: "Bukit Batok", code: "NS 2", line: "North South", bus_interchange: true,
    names: ["Bukit Batok", "武吉巴督", "புக்கிட் பாத்தோக்", "Bukit Batok"], coordinates: "1°20′57″N 103°44′59″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.7122252365075!2d103.74753351527517!3d1.3491720619521668!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjAnNTcuMCJOIDEwM8KwNDQnNTkuMCJF!5e0!3m2!1sen!2ssg!4v1616846219739!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "NS 2", line: "North South", location: "10 Bukit Batok Central Singapore 659958", operator: "SMRT"})],
    parking: true, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "EW 24|NS 1"}), (b: Station {code: "NS 2"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 5, line: "North South"}]->(b);

CREATE (:Station {name: "Bukit Gombak", code: "NS 3", line: "North South", bus_interchange: false,
    names: ["Bukit Gombak", "武吉甘柏", "புக்கிட் கோம்பாக்", "Bukit Gombak"], coordinates: "1°21′31″N 103°45′06″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.696686111638!2d103.74947801527514!3d1.3586164619244014!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjEnMzEuMCJOIDEwM8KwNDUnMDYuMCJF!5e0!3m2!1sen!2ssg!4v1616846531758!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "NS 3", line: "North South", location: "802 Bukit Batok West Avenue 5 Singapore 659083", operator: "SMRT"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "NS 2"}), (b: Station {code: "NS 3"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "North South"}]->(b);

CREATE (:Station {name: "Choa Chu Kang", code: "NS 4|BP 1", line: "North South", bus_interchange: true, station_interchange: ["BP 1"], interchange_type: ["standard"], interchange_line: ["Bukit Panjang LRT"],
    names: ["Choa Chu Kang", "蔡厝港", "சுவா சூ காங்", "Choa Chu Kang"], coordinates: "1°23′06″N 103°44′40″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.652693282013!2d103.74225571527509!3d1.385005361846016!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjMnMDYuMCJOIDEwM8KwNDQnNDAuMCJF!5e0!3m2!1sen!2ssg!4v1616846575553!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "NS 4", line: "North South", location: "10 Choa Chu Kang Avenue 4 Singapore 689810", operator: "SMRT"}),
            apoc.convert.toJson({code: "BP 1", line: "Bukit Panjang LRT", location: "15 Choa Chu Kang Avenue 4 Singapore 689813", operator: "SMRT"})],
    parking: true, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "NS 3"}), (b: Station {code: "NS 4|BP 1"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 4, line: "North South"}]->(b);

CREATE (:Station {name: "Yew Tee", code: "NS 5", line: "North South", bus_interchange: false,
    names: ["Yew Tee", "油池", "இயூ டீ", "Yew Tee"], coordinates: "1°23′49.15″N 103°44′50.06″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.6324318693787!2d103.74505021527509!3d1.3969914618100383!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjMnNDkuMiJOIDEwM8KwNDQnNTAuMSJF!5e0!3m2!1sen!2ssg!4v1616846614598!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "NS 5", line: "North South", location: "61 Choa Chu Kang Drive Singapore 689715", operator: "SMRT"})],
    parking: true, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "NS 4|BP 1"}), (b: Station {code: "NS 5"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "North South"}]->(b);

CREATE (:Station {name: "Kranji", code: "NS 7", line: "North South", bus_interchange: false,
    names: ["Kranji", "克兰芝", "கிராஞ்சி", "Kranji"], coordinates: "1°25′30.17″N 103°45′42.67″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.5843144386313!2d103.75966411527499!3d1.4250525617248968!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjUnMzAuMiJOIDEwM8KwNDUnNDIuNyJF!5e0!3m2!1sen!2ssg!4v1616846657963!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "NS 7", line: "North South", location: "960 Woodlands Road Singapore 738702", operator: "SMRT"})],
    parking: false, bicycle_facilities: true, disabled_access: true });
MATCH (a: Station {code: "NS 5"}), (b: Station {code: "NS 7"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 5, line: "North South"}]->(b);

CREATE (:Station {name: "Marsiling", code: "NS 8", line: "North South", bus_interchange: false,
    names: ["Marsiling", "马西岭", "மார்சிலிங்", "Marsiling"], coordinates: "1°25′57.49″N 103°46′27.42″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.5711371093457!2d103.77209461527494!3d1.4326414617016558!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjUnNTcuNSJOIDEwM8KwNDYnMjcuNCJF!5e0!3m2!1sen!2ssg!4v1616846697846!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "NS 8", line: "North South", location: "71 Woodlands Avenue 3 Singapore 739044", operator: "SMRT"})],
    parking: true, bicycle_facilities: true, disabled_access: true });
MATCH (a: Station {code: "NS 7"}), (b: Station {code: "NS 8"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "North South"}]->(b);

CREATE (:Station {name: "Woodlands", code: "NS 9|TE 2", line: "North South", bus_interchange: true, station_interchange: ["TE 2"], interchange_type: ["standard"], interchange_line: ["Thomson-East Coast"],
    names: ["Woodlands", "兀兰", "ஊட்லண்ட்ஸ்", "Woodlands"], coordinates: "1°26′13.54″N 103°47′11.34″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.563363110228!2d103.78429461519559!3d1.4370997616881451!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjYnMTMuNSJOIDEwM8KwNDcnMTEuMyJF!5e0!3m2!1sen!2ssg!4v1616846739212!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "NS 9", line: "North South", location: "30 Woodlands Avenue 2 Singapore 738343", operator: "SMRT"}),
            apoc.convert.toJson({code: "TE 2", line: "Thomson-East Coast", location: "11 Woodlands Square Singapore 737736", operator: "SMRT"})],
    parking: true, bicycle_facilities: true, disabled_access: true });
MATCH (a: Station {code: "NS 8"}), (b: Station {code: "NS 9|TE 2"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "North South"}]->(b);

CREATE (:Station {name: "Admiralty", code: "NS 10", line: "North South", bus_interchange: false,
    names: ["Admiralty", "海军部", "அட்மிரல்ட்டி", "Admiralty"], coordinates: "1°26′26.48″N 103°48′3.36″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.5570777467033!2d103.79874461519557!3d1.4406942616770786!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjYnMjYuNSJOIDEwM8KwNDgnMDMuNCJF!5e0!3m2!1sen!2ssg!4v1616846785482!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "NS 10", line: "North South", location: "70 Woodlands Avenue 7 Singapore 738344", operator: "SMRT"})],
    parking: true, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "NS 9|TE 2"}), (b: Station {code: "NS 10"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "North South"}]->(b);

CREATE (:Station {name: "Sembawang", code: "NS 11", line: "North South", bus_interchange: true,
    names: ["Sembawang", "三巴旺", "செம்பாவாங்", "Sembawang"], coordinates: "1°26′56.49″N 103°49′12.55″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.542440776074!2d103.81796411527485!3d1.4490303616511204!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjYnNTYuNSJOIDEwM8KwNDknMTIuNiJF!5e0!3m2!1sen!2ssg!4v1616846825781!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "NS 11", line: "North South", location: "11 Canberra Road Singapore 759775", operator: "SMRT"})],
    parking: true, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "NS 10"}), (b: Station {code: "NS 11"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 4, line: "North South"}]->(b);

CREATE (:Station {name: "Canberra", code: "NS 12", line: "North South", bus_interchange: false,
    names: ["Canberra", "坎贝拉", "கென்பரா", "Canberra"], coordinates: "01°26′35″N 103°49′47″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.552930750648!2d103.82753351527495!3d1.4430609616695873!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjYnMzUuMCJOIDEwM8KwNDknNDcuMCJF!5e0!3m2!1sen!2ssg!4v1616846870489!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "NS 12", line: "North South", location: "11 Canberra Link Singapore 756972", operator: "SMRT"})],
    parking: false, bicycle_facilities: true, disabled_access: true });
MATCH (a: Station {code: "NS 11"}), (b: Station {code: "NS 12"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "North South"}]->(b);

CREATE (:Station {name: "Yishun", code: "NS 13", line: "North South", bus_interchange: true,
    names: ["Yishun", "义顺", "யீஷூன்", "Yishun"], coordinates: "1°25′46.07″N 103°50′6.86″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.5766538135!2d103.83305021527491!3d1.429469261711382!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjUnNDYuMSJOIDEwM8KwNTAnMDYuOSJF!5e0!3m2!1sen!2ssg!4v1616846909463!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "NS 13", line: "North South", location: "301 Yishun Avenue 2 Singapore 769093", operator: "SMRT"})],
    parking: true, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "NS 12"}), (b: Station {code: "NS 13"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "North South"}]->(b);

CREATE (:Station {name: "Khatib", code: "NS 14", line: "North South", bus_interchange: false,
    names: ["Khatib", "卡迪", "காதிப்", "Khatib"], coordinates: "1°25′01.80″N 103°49′58.44″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.5979240429524!2d103.830711315275!3d1.417172061748944!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjUnMDEuOCJOIDEwM8KwNDknNTguNCJF!5e0!3m2!1sen!2ssg!4v1616846947330!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "NS 14", line: "North South", location: "201 Yishun Avenue 2 Singapore 769092", operator: "SMRT"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "NS 13"}), (b: Station {code: "NS 14"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "North South"}]->(b);

CREATE (:Station {name: "Yio Chu Kang", code: "NS 15", line: "North South", bus_interchange: true,
    names: ["Yio Chu Kang", "杨厝港", "இயோ சூ காங்", "Yio Chu Kang"], coordinates: "1°22′54.86″N 103°50′41.34″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.657895734646!2d103.84262801527505!3d1.381910961855256!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjInNTQuOSJOIDEwM8KwNTAnNDEuMyJF!5e0!3m2!1sen!2ssg!4v1616846983487!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "NS 15", line: "North South", location: "3000 Ang Mo Kio Avenue 8 Singapore 569813", operator: "SMRT"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "NS 14"}), (b: Station {code: "NS 15"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 6, line: "North South"}]->(b);

CREATE (:Station {name: "Ang Mo Kio", code: "NS 16", line: "North South", bus_interchange: true,
    names: ["Ang Mo Kio", "宏茂桥", "அங் மோ கியோ", "Ang Mo Kio"], coordinates: "1°22′12.06″N 103°50′58.02″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.6777757010404!2d103.84726131527515!3d1.3700220618906571!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjInMTIuMSJOIDEwM8KwNTAnNTguMCJF!5e0!3m2!1sen!2ssg!4v1616847019230!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "NS 16", line: "North South", location: "2450 Ang Mo Kio Avenue 8 Singapore 569811", operator: "SMRT"})],
    parking: true, bicycle_facilities: true, disabled_access: true });
MATCH (a: Station {code: "NS 15"}), (b: Station {code: "NS 16"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "North South"}]->(b);

CREATE (:Station {name: "Bishan", code: "NS 17|CC 15", line: "North South", bus_interchange: true, station_interchange: ["CC 15"], interchange_type: ["standard"], interchange_line: ["Circle"],
    names: ["Bishan", "碧山", "பீஷான்", "Bishan"], coordinates: "1°21′04″N 103°50′54″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.7090349223736!2d103.84614461527516!3d1.3511164619464633!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjEnMDQuMCJOIDEwM8KwNTAnNTQuMCJF!5e0!3m2!1sen!2ssg!4v1616847411286!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "NS 17", line: "North South", location: "200 Bishan Road Singapore 579827", operator: "SMRT"}),
            apoc.convert.toJson({code: "CC 15", line: "Circle", location: "17 Bishan Place Singapore 579842", operator: "SMRT"})],
    parking: true, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "NS 16"}), (b: Station {code: "NS 17|CC 15"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 4, line: "North South"}]->(b);

CREATE (:Station {name: "Braddell", code: "NS 18", line: "North South", bus_interchange: false,
    names: ["Braddell", "布莱德", "பிரேடல்", "Braddell"], coordinates: "1°20′25.22″N 103°50′48.21″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.726651858564!2d103.84453631527508!3d1.3403442619779937!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjAnMjUuMiJOIDEwM8KwNTAnNDguMiJF!5e0!3m2!1sen!2ssg!4v1616847451022!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "NS 18", line: "North South", location: "377 Lorong 1 Toa Payoh Singapore 319756", operator: "SMRT"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "NS 17|CC 15"}), (b: Station {code: "NS 18"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "North South"}]->(b);

CREATE (:Station {name: "Toa Payoh", code: "NS 19", line: "North South", bus_interchange: true,
    names: ["Toa Payoh", "大巴窑", "தோ பாயோ", "Toa Payoh"], coordinates: "1°19′57.73″N 103°50′52.11″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.7390545961384!2d103.8456196152752!3d1.3327081620002568!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTknNTcuNyJOIDEwM8KwNTAnNTIuMSJF!5e0!3m2!1sen!2ssg!4v1616847498118!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "NS 19", line: "North South", location: "510 Lorong 6 Toa Payoh Singapore 319398", operator: "SMRT"})],
    parking: true, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "NS 18"}), (b: Station {code: "NS 19"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "North South"}]->(b);

CREATE (:Station {name: "Novena", code: "NS 20", line: "North South", bus_interchange: false,
    names: ["Novena", "诺维娜", "நொவீனா", "Novena"], coordinates: "1°19′13.42″N 103°50′37.28″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.758897058933!2d103.84150021527529!3d1.320399762035897!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTknMTMuNCJOIDEwM8KwNTAnMzcuMyJF!5e0!3m2!1sen!2ssg!4v1616847542815!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "NS 20", line: "North South", location: "250 Thomson Road Singapore 307642", operator: "SMRT"})],
    parking: true, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "NS 19"}), (b: Station {code: "NS 20"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "North South"}]->(b);

CREATE (:Station {name: "Newton", code: "NS 21|DT 11", line: "North South", bus_interchange: false, station_interchange: ["DT 11"], interchange_type: ["tap out"], interchange_line: ["Downtown"],
    names: ["Newton", "纽顿", "நியூட்டன்", "Newton"], coordinates: "1°18′47″N 103°50′18″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.7706403960224!2d103.83614461519599!3d1.3130609620572287!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTgnNDcuMCJOIDEwM8KwNTAnMTguMCJF!5e0!3m2!1sen!2ssg!4v1616847662231!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "NS 21", line: "North South", location: "49 Scotts Road Singapore 228234", operator: "SMRT"}),
            apoc.convert.toJson({code: "DT 11", line: "Downtown", location: "235 Bukit Timah Road Singapore 229901", operator: "SBS"})],
    parking: true, bicycle_facilities: true, disabled_access: true });
MATCH (a: Station {code: "NS 20"}), (b: Station {code: "NS 21|DT 11"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "North South"}]->(b);

CREATE (:Station {name: "Orchard", code: "NS 22|TE 14", line: "North South", bus_interchange: false, station_interchange: ["TE 14"], interchange_type: ["standard"], interchange_line: ["Thomson-East Coast"],
    names: ["Orchard", "乌节", "ஆர்ச்சர்ட்", "Orchard"], coordinates: "1°18′12″N 103°49′54″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.7860969693656!2d103.82947801527534!3d1.3033386620849117!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTgnMTIuMCJOIDEwM8KwNDknNTQuMCJF!5e0!3m2!1sen!2ssg!4v1616847702046!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "NS 22", line: "North South", location: "437 Orchard Road Singapore 238878", operator: "SMRT"}),
            apoc.convert.toJson({code: "TE 14", line: "Thomson-East Coast", location: "301 Orchard Boulevard Singapore 237974", operator: "SMRT"})],
    parking: true, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "NS 21|DT 11"}), (b: Station {code: "NS 22|TE 14"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "North South"}]->(b);

CREATE (:Station {name: "Somerset", code: "NS 23", line: "North South", bus_interchange: false,
    names: ["Somerset", "索美塞", "சாமர்செட்", "Somerset"], coordinates: "1°18′1.85″N 103°50′20.50″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.7905577869465!2d103.83683911527521!3d1.3005192620929336!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTgnMDEuOSJOIDEwM8KwNTAnMjAuNSJF!5e0!3m2!1sen!2ssg!4v1616847742008!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "NS 23", line: "North South", location: "1 Somerset Road Singapore 238162", operator: "SMRT"})],
    parking: true, bicycle_facilities: true, disabled_access: true });
MATCH (a: Station {code: "NS 22|TE 14"}), (b: Station {code: "NS 23"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "North South"}]->(b);

CREATE (:Station {name: "Dhoby Ghaut", code: "NS 24|NE 6|CC 1", line: "North South", bus_interchange: false, station_interchange: ["NE 6", "CC 1"], interchange_type: ["standard", "standard"], interchange_line: ["North East", "Circle"],
    names: ["Dhoby Ghaut", "多美歌", "டோபி காட்", "Dhoby Ghaut"], coordinates: "1°17′57″N 103°50′45″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.7926858988594!2d103.84364461519603!3d1.2991720620970009!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTcnNTcuMCJOIDEwM8KwNTAnNDUuMCJF!5e0!3m2!1sen!2ssg!4v1616847783583!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "NS 24", line: "North South", location: "11 Orchard Road Singapore 238826", operator: "SMRT"}),
            apoc.convert.toJson({code: "NE 6", line: "North East", location: "60 Orchard Road Singapore 238889", operator: "SBS"}),
            apoc.convert.toJson({code: "CC 1", line: "Circle", location: "13 Orchard Road Singapore 238893", operator: "SMRT"})],
    parking: true, bicycle_facilities: true, disabled_access: true });
MATCH (a: Station {code: "NS 23"}), (b: Station {code: "NS 24|NE 6|CC 1"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "North South"}]->(b);
MATCH (a: Station {code: "NS 24|NE 6|CC 1"}), (b: Station {code: "EW 13|NS 25"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "North South"}]->(b);
MATCH (a: Station {code: "EW 13|NS 25"}), (b: Station {code: "EW 14|NS 26"}) CREATE (a)<-[:CONNECTS_TO {travel_time_min: 3, line: "North South"}]-(b);

CREATE (:Station {name: "Marina Bay", code: "NS 27|CE 2|TE 20", line: "North South", bus_interchange: false, station_interchange: ["CE 2", "TE 20"], interchange_type: ["standard", "standard"], interchange_line: ["Circle", "Thomson-East Coast"],
    names: ["Marina Bay", "滨海湾", "மரீனா பே", "Marina Bay"], coordinates: "1°16′33.95″N 103°51′16.83″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.8287855519065!2d103.8524863152754!3d1.276102562162147!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTYnMzQuMCJOIDEwM8KwNTEnMTYuOCJF!5e0!3m2!1sen!2ssg!4v1616847931303!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "NS 27", line: "North South", location: "21 Park Street Singapore 018925", operator: "SMRT"}),
            apoc.convert.toJson({code: "CE 2", line: "Circle", location: "23 Park Street Singapore 018926", operator: "SMRT"}),
            apoc.convert.toJson({code: "TE 20", line: "Thomson-East Coast", location: "25 Park Street Singapore 018929", operator: "SMRT"})],
    parking: true, bicycle_facilities: true, disabled_access: true });
MATCH (a: Station {code: "EW 14|NS 26"}), (b: Station {code: "NS 27|CE 2|TE 20"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "North South"}]->(b);

CREATE (:Station {name: "Marina South Pier", code: "NS 28", line: "North South", bus_interchange: false,
    names: ["Marina South Pier", "滨海南码头", "மரினா சவுத் படகுத்துறை", "Marina South Pier"], coordinates: "1°16′15.45″N 103°51′47.67″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.8367389459627!2d103.86105301527532!3d1.270963662176588!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTYnMTUuNSJOIDEwM8KwNTEnNDcuNyJF!5e0!3m2!1sen!2ssg!4v1616847987012!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "NS 28", line: "North South", location: "33 Marina Coastal Drive Singapore 018948", operator: "SMRT"})],
    parking: true, bicycle_facilities: true, disabled_access: true });
MATCH (a: Station {code: "NS 27|CE 2|TE 20"}), (b: Station {code: "NS 28"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "North South"}]->(b);


/* North East */

CREATE (:Station {name: "HarbourFront", code: "NE 1|CC 29", line: "North East", bus_interchange: true, station_interchange: ["CC 29"], interchange_type: ["standard"], interchange_line: ["Circle"],
    names: ["HarbourFront", "港湾", "துறைமுகம்", "HarbourFront"], coordinates: "1°15′55″N 103°49′20″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.8454932269165!2d103.82003351527527!3d1.2652831621924945!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTUnNTUuMCJOIDEwM8KwNDknMjAuMCJF!5e0!3m2!1sen!2ssg!4v1616848028276!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "NE 1", line: "North East", location: "81 Telok Blangah Road Singapore 098867", operator: "SBS"}),
            apoc.convert.toJson({code: "CC 29", line: "Circle", location: "83 Telok Blangah Road Singapore 098886", operator: "SMRT"})],
    parking: true, bicycle_facilities: true, disabled_access: true });
MATCH (a: Station {code: "NE 1|CC 29"}), (b: Station {code: "EW 16|NE 3|TE 17"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 4, line: "North East"}]->(b);

CREATE (:Station {name: "Chinatown", code: "NE 4|DT 19", line: "North East", bus_interchange: false, station_interchange: ["DT 19"], interchange_type: ["standard"], interchange_line: ["Downtown"],
    names: ["Chinatown", "牛车水", "சைனாடவுன்", "Chinatown"], coordinates: "1°17′05″N 103°50′38″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.815364653688!2d103.84170021527534!3d1.2847275621378091!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTcnMDUuMCJOIDEwM8KwNTAnMzguMCJF!5e0!3m2!1sen!2ssg!4v1616848069098!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "NE 4", line: "North East", location: "151 New Bridge Road Singapore 059443", operator: "SBS"}),
            apoc.convert.toJson({code: "DT 19", line: "Downtown", location: "91 Upper Cross Street Singapore 058362", operator: "SBS"})],
    parking: true, bicycle_facilities: true, disabled_access: true });
MATCH (a: Station {code: "EW 16|NE 3|TE 17"}), (b: Station {code: "NE 4|DT 19"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 1, line: "North East"}]->(b);

CREATE (:Station {name: "Clark Quay", code: "NE 5", line: "North East", bus_interchange: false,
    names: ["Clarke Quay", "克拉码头", "கிளார்க் கீ", "Clarke Quay"], coordinates: "1°17′19″N 103°50′48″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.809283780021!2d103.84447801527526!3d1.2886164621268035!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTcnMTkuMCJOIDEwM8KwNTAnNDguMCJF!5e0!3m2!1sen!2ssg!4v1616848107126!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "NE 5", line: "North East", location: "10 Eu Tong Sen Street Singapore 059815", operator: "SBS"})],
    parking: true, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "NE 4|DT 19"}), (b: Station {code: "NE 5"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "North East"}]->(b);
MATCH (a: Station {code: "NE 5"}), (b: Station {code: "NS 24|NE 6|CC 1"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "North East"}]->(b);

CREATE (:Station {name: "Little India", code: "NE 7|DT 12", line: "North East", bus_interchange: false, station_interchange: ["DT 12"], interchange_type: ["standard"], interchange_line: ["Downtown"],
    names: ["Little India", "小印度", "லிட்டில் இந்தியா", "Little India"], coordinates: "1°18′24″N 103°50′57″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.78081044753!2d103.84697801527534!3d1.3066720620753716!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTgnMjQuMCJOIDEwM8KwNTAnNTcuMCJF!5e0!3m2!1sen!2ssg!4v1616848142790!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "NE 7", line: "North East", location: "60 Bukit Timah Road Singapore 229900", operator: "SBS"}),
            apoc.convert.toJson({code: "DT 12", line: "Downtown", location: "62 Bukit Timah Road Singapore 229902", operator: "SBS"})],
    parking: true, bicycle_facilities: true, disabled_access: true });
MATCH (a: Station {code: "NS 24|NE 6|CC 1"}), (b: Station {code: "NE 7|DT 12"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 1, line: "North East"}]->(b);

CREATE (:Station {name: "Farrer Park", code: "NE 8", line: "North East", bus_interchange: false,
    names: ["Farrer Park", "花拉公园", "ஃபேரர் பார்க்", "Farrer Park"], coordinates: "1°18′44″N 103°51′15″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.7719698411083!2d103.85197801527525!3d1.3122275620594268!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTgnNDQuMCJOIDEwM8KwNTEnMTUuMCJF!5e0!3m2!1sen!2ssg!4v1616848180501!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "NE 8", line: "North East", location: "250 Race Course Road Singapore 218703", operator: "SBS"})],
    parking: true, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "NE 7|DT 12"}), (b: Station {code: "NE 8"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 1, line: "North East"}]->(b);

CREATE (:Station {name: "Boon Keng", code: "NE 9", line: "North East", bus_interchange: false,
    names: ["Boon Keng", "文庆", "பூன் கெங்", "Boon Keng"], coordinates: "1°19′10″N 103°51′42″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.7604209089404!2d103.85947801527524!3d1.3194497620386416!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTknMTAuMCJOIDEwM8KwNTEnNDIuMCJF!5e0!3m2!1sen!2ssg!4v1616848217501!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "NE 9", line: "North East", location: "900 Serangoon Road Singapore 328260", operator: "SBS"})],
    parking: true, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "NE 8"}), (b: Station {code: "NE 9"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "North East"}]->(b);

CREATE (:Station {name: "Potong Pasir", code: "NE 10", line: "North East", bus_interchange: false,
    names: ["Potong Pasir", "波东巴西", "போத்தோங் பாசிர்", "Potong Pasir"], coordinates: "1°19′52″N 103°52′09″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.741630950448!2d103.86697801527517!3d1.3311164620048583!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTknNTIuMCJOIDEwM8KwNTInMDkuMCJF!5e0!3m2!1sen!2ssg!4v1616848252410!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "NE 10", line: "North East", location: "55 Upper Serangoon Road Singapore 347694", operator: "SBS"})],
    parking: true, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "NE 9"}), (b: Station {code: "NE 10"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "North East"}]->(b);

CREATE (:Station {name: "Woodleigh", code: "NE 11", line: "North East", bus_interchange: false,
    names: ["Woodleigh", "兀里", "உட் லீ", "Woodleigh"], coordinates: "1°20′21″N 103°52′15″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3853.6605033062237!2d103.86864461519585!3d1.3391720619816205!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjAnMjEuMCJOIDEwM8KwNTInMTUuMCJF!5e0!3m2!1sen!2ssg!4v1616848339498!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "NE 11", line: "North East", location: "400 Upper Serangoon Road Singapore 347695", operator: "SBS"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "NE 10"}), (b: Station {code: "NE 11"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 1, line: "North East"}]->(b);

CREATE (:Station {name: "Serangoon", code: "NE 12|CC 13", line: "North East", bus_interchange: true, station_interchange: ["CC 13"], interchange_type: ["standard"], interchange_line: ["Circle"],
    names: ["Serangoon", "实龙岗", "சிராங்கூன்", "Serangoon"], coordinates: "1°21′00″N 103°52′23″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.7108585449478!2d103.8708669152752!3d1.3500053619497303!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjEnMDAuMCJOIDEwM8KwNTInMjMuMCJF!5e0!3m2!1sen!2ssg!4v1616848383005!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "NE 12", line: "North East", location: "600 Upper Serangoon Road Singapore 534801", operator: "SBS"}),
            apoc.convert.toJson({code: "CC 13", line: "Circle", location: "21 Serangoon Central Singapore 556082", operator: "SMRT"})],
    parking: true, bicycle_facilities: true, disabled_access: true });
MATCH (a: Station {code: "NE 11"}), (b: Station {code: "NE 12|CC 13"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "North East"}]->(b);

CREATE (:Station {name: "Kovan", code: "NE 13", line: "North East", bus_interchange: false,
    names: ["Kovan", "高文", "கோவன்", "Kovan"], coordinates: "1°21′37″N 103°53′06″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.6939325949115!2d103.88281131527506!3d1.3602831619194728!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjEnMzcuMCJOIDEwM8KwNTMnMDYuMCJF!5e0!3m2!1sen!2ssg!4v1616848418733!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "NE 13", line: "North East", location: "900 Upper Serangoon Road Singapore 534799", operator: "SBS"})],
    parking: true, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "NE 12|CC 13"}), (b: Station {code: "NE 13"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "North East"}]->(b);

CREATE (:Station {name: "Hougang", code: "NE 14", line: "North East", bus_interchange: true,
    names: ["Hougang", "后港", "ஹவ்காங்", "Hougang"], coordinates: "1°22′17″N 103°53′32″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.6754899504494!2d103.89003351519573!3d1.3713942618867776!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjInMTcuMCJOIDEwM8KwNTMnMzIuMCJF!5e0!3m2!1sen!2ssg!4v1616848609690!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "NE 14", line: "North East", location: "80 Hougang Central Singapore 538758", operator: "SBS"})],
    parking: true, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "NE 13"}), (b: Station {code: "NE 14"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "North East"}]->(b);

CREATE (:Station {name: "Buangkok", code: "NE 15", line: "North East", bus_interchange: false,
    names: ["Buangkok", "万国", "புவாங்கோக்", "Buangkok"], coordinates: "1°22′58″N 103°53′34″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.656430527944!2d103.89058911519574!3d1.3827831618528579!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjInNTguMCJOIDEwM8KwNTMnMzQuMCJF!5e0!3m2!1sen!2ssg!4v1616848648036!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "NE 15", line: "North East", location: "10 Sengkang Central Singapore 545061", operator: "SBS"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "NE 14"}), (b: Station {code: "NE 15"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "North East"}]->(b);

CREATE (:Station {name: "Sengkang", code: "NE 16|STC", line: "North East", bus_interchange: true, station_interchange: ["STC"], interchange_type: ["standard"], interchange_line: ["Sengkang LRT"],
    names: ["Sengkang", "盛港", "செங்காங்", "Sengkang"], coordinates: "1°23′30″N 103°53′42″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.6414453754514!2d103.89281131519571!3d1.3916720618262282!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjMnMzAuMCJOIDEwM8KwNTMnNDIuMCJF!5e0!3m2!1sen!2ssg!4v1616848743479!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "NE 16", line: "North East", location: "5 Sengkang Square Singapore 545062", operator: "SBS"}),
            apoc.convert.toJson({code: "STC", line: "Sengkang LRT", location: "5 Sengkang Square Singapore 545062", operator: "SBS"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "NE 15"}), (b: Station {code: "NE 16|STC"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "North East"}]->(b);

CREATE (:Station {name: "Punggol", code: "NE 17|PTC", line: "North East", bus_interchange: true, station_interchange: ["PTC"], interchange_type: ["standard"], interchange_line: ["Punggol LRT"],
    names: ["Punggol", "榜鹅", "பொங்கோல்", "Punggol"], coordinates: "01°24′19″N 103°54′09″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.618313360035!2d103.90031131519561!3d1.4052831617851997!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjQnMTkuMCJOIDEwM8KwNTQnMDkuMCJF!5e0!3m2!1sen!2ssg!4v1616848784031!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "NE 17", line: "North East", location: "70 Punggol Central Singapore 828868", operator: "SBS"}),
            apoc.convert.toJson({code: "PTC", line: "Punggol LRT", location: "70 Punggol Central Singapore 828868", operator: "SBS"})],
    parking: true, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "NE 16|STC"}), (b: Station {code: "NE 17|PTC"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "North East"}]->(b);


/* Circle */

CREATE (:Station {name: "Bras Basah", code: "CC 2", line: "Circle", bus_interchange: false,
    names: ["Bras Basah", "百胜", "பிராஸ் பாசா", "Bras Basah"], coordinates: "1°17′49″N 103°51′02″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.7961915481005!2d103.848366915196!3d1.2969497621033206!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTcnNDkuMCJOIDEwM8KwNTEnMDIuMCJF!5e0!3m2!1sen!2ssg!4v1616848896597!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "CC 2", line: "Circle", location: "65 Bras Basah Road Singapore 189561", operator: "SMRT"})],
    parking: true, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "NS 24|NE 6|CC 1"}), (b: Station {code: "CC 2"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Circle"}]->(b);

CREATE (:Station {name: "Esplanade", code: "CC 3", line: "Circle", bus_interchange: false,
    names: ["Esplanade", "滨海中心", "எஸ்பிளனேட்", "Esplanade"], coordinates: "1°17′36″N 103°51′19″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.8018752136313!2d103.853089115196!3d1.293338662113601!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTcnMzYuMCJOIDEwM8KwNTEnMTkuMCJF!5e0!3m2!1sen!2ssg!4v1616848939451!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "CC 3", line: "Circle", location: "90 Bras Basah Road Singapore 189562", operator: "SMRT"})],
    parking: true, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "CC 2"}), (b: Station {code: "CC 3"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Circle"}]->(b);

CREATE (:Station {name: "Promenade", code: "CC 4|DT 15", line: "Circle", bus_interchange: false, station_interchange: ["DT 15"], interchange_type: ["standard"], interchange_line: ["Downtown"],
    names: ["Promenade", "宝门廊", "புரொமனாட்", "Promenade"], coordinates: "1°17′35″N 103°51′40″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.802311641517!2d103.85892241519598!3d1.293060962114391!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTcnMzUuMCJOIDEwM8KwNTEnNDAuMCJF!5e0!3m2!1sen!2ssg!4v1616848984341!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "CC 4", line: "Circle", location: "2 Temasek Avenue Singapore 039193", operator: "SMRT"}),
            apoc.convert.toJson({code: "DT 15", line: "Downtown", location: "10 Temasek Avenue Singapore 039194", operator: "SBS"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "CC 3"}), (b: Station {code: "CC 4|DT 15"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "Circle"}]->(b);

CREATE (:Station {name: "Nicoll Highway", code: "CC 5", line: "Circle", bus_interchange: false,
    names: ["Nicoll Highway", "尼诰大道", "நிக்கல் நெடுஞ்சாலை", "Nicoll Highway"], coordinates: "1°17′59″N 103°51′49″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.7918086674035!2d103.86142241519599!3d1.299727562095406!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTcnNTkuMCJOIDEwM8KwNTEnNDkuMCJF!5e0!3m2!1sen!2ssg!4v1616849024500!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "CC 5", line: "Circle", location: "20 Republic Avenue Singapore 038970", operator: "SMRT"})],
    parking: true, bicycle_facilities: true, disabled_access: true });
MATCH (a: Station {code: "CC 4|DT 15"}), (b: Station {code: "CC 5"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "Circle"}]->(b);

CREATE (:Station {name: "Stadium", code: "CC 6", line: "Circle", bus_interchange: false,
    names: ["Stadium", "体育场", "ஸ்டேடியம்", "Stadium"], coordinates: "1°18′10″N 103°52′31″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.7869766381796!2d103.87308911519601!3d1.3027831620866845!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTgnMTAuMCJOIDEwM8KwNTInMzEuMCJF!5e0!3m2!1sen!2ssg!4v1616849073690!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "CC 6", line: "Circle", location: "3 Stadium Walk Singapore 397692", operator: "SMRT"})],
    parking: true, bicycle_facilities: true, disabled_access: true });
MATCH (a: Station {code: "CC 5"}), (b: Station {code: "CC 6"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "Circle"}]->(b);

CREATE (:Station {name: "Mountbatten", code: "CC 7", line: "Circle", bus_interchange: false,
    names: ["Mountbatten", "蒙巴登", "மவுண்ட்பேட்டன்", "Mountbatten"], coordinates: "1°18′23″N 103°52′57″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.781251533144!2d103.88031131519607!3d1.306394262076343!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTgnMjMuMCJOIDEwM8KwNTInNTcuMCJF!5e0!3m2!1sen!2ssg!4v1616849119951!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "CC 7", line: "Circle", location: "301 Mountbatten Road Singapore 398006", operator: "SMRT"})],
    parking: true, bicycle_facilities: true, disabled_access: true });
MATCH (a: Station {code: "CC 6"}), (b: Station {code: "CC 7"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Circle"}]->(b);

CREATE (:Station {name: "Dakota", code: "CC 8", line: "Circle", bus_interchange: false,
    names: ["Dakota", "达科达", "டகோட்டா", "Dakota"], coordinates: "1°18′30″N 103°53′18″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.778162282688!2d103.88614461519595!3d1.3083386620707769!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTgnMzAuMCJOIDEwM8KwNTMnMTguMCJF!5e0!3m2!1sen!2ssg!4v1616849155158!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "CC 8", line: "Circle", location: "201 Old Airport Road Singapore 397973", operator: "SMRT"})],
    parking: true, bicycle_facilities: true, disabled_access: true });
MATCH (a: Station {code: "CC 7"}), (b: Station {code: "CC 8"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Circle"}]->(b);
MATCH (a: Station {code: "CC 8"}), (b: Station {code: "EW 8|CC 9"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "Circle"}]->(b);

CREATE (:Station {name: "MacPherson", code: "CC 10|DT 26", line: "Circle", bus_interchange: false, station_interchange: ["DT 26"], interchange_type: ["standard"], interchange_line: ["Downtown"],
    names: ["MacPherson", "麦波申", "மெக்பர்சன்", "MacPherson"], coordinates: "1°19′36″N 103°53′24″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.748808438543!2d103.88781131519593!3d1.3266720620179486!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTknMzYuMCJOIDEwM8KwNTMnMjQuMCJF!5e0!3m2!1sen!2ssg!4v1616849277081!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "CC 10", line: "Circle", location: "171 Paya Lebar Road Singapore 409048", operator: "SMRT"}),
            apoc.convert.toJson({code: "DT 26", line: "Downtown", location: "10 Circuit Link Singapore 378956", operator: "SBS"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "EW 8|CC 9"}), (b: Station {code: "CC 10|DT 26"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "Circle"}]->(b);

CREATE (:Station {name: "Tai Seng", code: "CC 11", line: "Circle", bus_interchange: false,
    names: ["Tai Seng", "大成", "தை செங்", "Tai Seng"], coordinates: "1°20′09″N 103°53′17″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.7339785315435!2d103.88586691519585!3d1.335838661991325!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjAnMDkuMCJOIDEwM8KwNTMnMTcuMCJF!5e0!3m2!1sen!2ssg!4v1616849316047!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "CC 11", line: "Circle", location: "33 Upper Paya Lebar Road Singapore 534803", operator: "SMRT"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "CC 10|DT 26"}), (b: Station {code: "CC 11"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "Circle"}]->(b);

CREATE (:Station {name: "Bartley", code: "CC 12", line: "Circle", bus_interchange: false,
    names: ["Bartley", "巴特礼", "பார்ட்லி", "Bartley"], coordinates: "1°20′34″N 103°52′47″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.7226756105424!2d103.87753351527518!3d1.3427831619708714!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjAnMzQuMCJOIDEwM8KwNTInNDcuMCJF!5e0!3m2!1sen!2ssg!4v1616849912030!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "CC 12", line: "Circle", location: "90 Bartley Road Singapore 539788", operator: "SMRT"})],
    parking: true, bicycle_facilities: true, disabled_access: true });
MATCH (a: Station {code: "CC 11"}), (b: Station {code: "CC 12"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "Circle"}]->(b);
MATCH (a: Station {code: "CC 12"}), (b: Station {code: "NE 12|CC 13"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "Circle"}]->(b);

CREATE (:Station {name: "Lorong Chuan", code: "CC 14", line: "Circle", bus_interchange: false,
    names: ["Lorong Chuan", "罗弄泉", "லோரோங் சுவான்", "Lorong Chuan"], coordinates: "1°21′06″N 103°51′51″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.7081224664526!2d103.86197801527508!3d1.35167206194484!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjEnMDYuMCJOIDEwM8KwNTEnNTEuMCJF!5e0!3m2!1sen!2ssg!4v1616849963298!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "CC 14", line: "Circle", location: "150 Serangoon Avenue 3 Singapore 554533", operator: "SMRT"})],
    parking: false, bicycle_facilities: true, disabled_access: true });
MATCH (a: Station {code: "NE 12|CC 13"}), (b: Station {code: "CC 14"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "Circle"}]->(b);
MATCH (a: Station {code: "CC 14"}), (b: Station {code: "NS 17|CC 15"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "Circle"}]->(b);

CREATE (:Station {name: "Marymount", code: "CC 16", line: "Circle", bus_interchange: false,
    names: ["Marymount", "玛丽蒙", "மேரிமவுண்ட்", "Marymount"], coordinates: "1°20′57″N 103°50′22″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.7122252365075!2d103.8372557152751!3d1.3491720619521808!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjAnNTcuMCJOIDEwM8KwNTAnMjIuMCJF!5e0!3m2!1sen!2ssg!4v1616850244079!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "CC 16", line: "Circle", location: "60 Marymount Road Singapore 573993", operator: "SMRT"})],
    parking: false, bicycle_facilities: true, disabled_access: true });
MATCH (a: Station {code: "NS 17|CC 15"}), (b: Station {code: "CC 16"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "Circle"}]->(b);

CREATE (:Station {name: "Caldecott", code: "CC 17|TE 9", line: "Circle", bus_interchange: false, station_interchange: ["TE 9"], interchange_type: ["standard"], interchange_line: ["Thomson-East Coast"],
    names: ["Caldecott", "加利谷", "கால்டிகாட்", "Caldecott"], coordinates: "1°20′16″N 103°50′22″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.730828273969!2d103.83725571528232!3d1.33777779902431!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjAnMTYuMCJOIDEwM8KwNTAnMjIuMCJF!5e0!3m2!1sen!2ssg!4v1616905261877!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "CC 17", line: "Circle", location: "38 Toa Payoh Rise Singapore 298113", operator: "SMRT"}),
            apoc.convert.toJson({code: "TE 9", line: "Thomson-East Coast", location: "1 Toa Payoh Link Singapore 297608", operator: "SMRT"})],
    parking: false, bicycle_facilities: true, disabled_access: true });
MATCH (a: Station {code: "CC 16"}), (b: Station {code: "CC 17|TE 9"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "Circle"}]->(b);

CREATE (:Station {name: "Botanic Gardens", code: "CC 19|DT 9", line: "Circle", bus_interchange: false, station_interchange: ["DT 9"], interchange_type: ["standard"], interchange_line: ["Downtown"],
    names: ["Botanic Gardens", "植物园", "பூ மலை", "Kebun Bunga"], coordinates: "1°19′21″N 103°48′55″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.755524276298!2d103.81308911528231!3d1.3224999990354356!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTknMjEuMCJOIDEwM8KwNDgnNTUuMCJF!5e0!3m2!1sen!2ssg!4v1616905311837!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "CC 19", line: "Circle", location: "100 Cluny Park Road Singapore 257494", operator: "SMRT"}),
            apoc.convert.toJson({code: "DT 9", line: "Downtown", location: "491 Bukit Timah Road Singapore 259777", operator: "SBS"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "CC 17|TE 9"}), (b: Station {code: "CC 19|DT 9"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 5, line: "Circle"}]->(b);

CREATE (:Station {name: "Farrer Road", code: "CC 20", line: "Circle", bus_interchange: false,
    names: ["Farrer Road", "花拉路", "ஃபேரர் சாலை", "Farrer Road"], coordinates: "1°19′02″N 103°48′27″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.763989737076!2d103.80531131528234!3d1.3172221990392794!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTknMDIuMCJOIDEwM8KwNDgnMjcuMCJF!5e0!3m2!1sen!2ssg!4v1616905350711!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "CC 20", line: "Circle", location: "71 Farrer Road Singapore 261006", operator: "SMRT"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "CC 19|DT 9"}), (b: Station {code: "CC 20"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "Circle"}]->(b);

CREATE (:Station {name: "Holland Village", code: "CC 21", line: "Circle", bus_interchange: false,
    names: ["Holland Village", "荷兰村", "ஹாலந்து வில்லேஜ்", "Holland Village"], coordinates: "1°18′43″N 103°47′46″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.772421352509!2d103.79392241528221!3d1.3119443990431252!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTgnNDMuMCJOIDEwM8KwNDcnNDYuMCJF!5e0!3m2!1sen!2ssg!4v1616905394031!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "CC 21", line: "Circle", location: "200 Holland Avenue Singapore 278995", operator: "SMRT"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "CC 20"}), (b: Station {code: "CC 21"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "Circle"}]->(b);
MATCH (a: Station {code: "CC 21"}), (b: Station {code: "EW 21|CC 22"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Circle"}]->(b);

CREATE (:Station {name: "one-north", code: "CC 23", line: "Circle", bus_interchange: false,
    names: ["one-north", "纬壹", "ஒன்-நார்த்", "one-north"], coordinates: "1°17′58″N 103°47′13″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.7922558781224!2d103.78475571528232!3d1.2994443990522477!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTcnNTguMCJOIDEwM8KwNDcnMTMuMCJF!5e0!3m2!1sen!2ssg!4v1616905434268!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "CC 23", line: "Circle", location: "9 Ayer Rajah Avenue Singapore 138647", operator: "SMRT"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "EW 21|CC 22"}), (b: Station {code: "CC 23"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "Circle"}]->(b);

CREATE (:Station {name: "Kent Ridge", code: "CC 24", line: "Circle", bus_interchange: false,
    names: ["Kent Ridge", "肯特岗", "கெண்ட் ரிஜ்", "Kent Ridge"], coordinates: "1°17′36″N 103°47′04″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.801883642994!2d103.78225571528242!3d1.2933332990566992!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTcnMzYuMCJOIDEwM8KwNDcnMDQuMCJF!5e0!3m2!1sen!2ssg!4v1616905479113!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "CC 24", line: "Circle", location: "301 South Buona Vista Road Singapore 118177", operator: "SMRT"})],
    parking: true, bicycle_facilities: true, disabled_access: true });
MATCH (a: Station {code: "CC 23"}), (b: Station {code: "CC 24"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Circle"}]->(b);

CREATE (:Station {name: "Haw Par Villa", code: "CC 25", line: "Circle", bus_interchange: false,
    names: ["Haw Par Villa", "虎豹别墅", "ஹா பர் வில்லா", "Haw Par Villa"], coordinates: "1°16′57″N 103°46′55″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.8188395024426!2d103.77975571528229!3d1.2824999990645953!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTYnNTcuMCJOIDEwM8KwNDYnNTUuMCJF!5e0!3m2!1sen!2ssg!4v1616905522900!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "CC 25", line: "Circle", location: "270 Pasir Panjang Road Singapore 117396", operator: "SMRT"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "CC 24"}), (b: Station {code: "CC 25"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "Circle"}]->(b);

CREATE (:Station {name: "Pasir Panjang", code: "CC 26", line: "Circle", bus_interchange: false,
    names: ["Pasir Panjang", "巴西班让", "பாசிர் பாஞ்சாங்", "Pasir Panjang"], coordinates: "1°16′34″N 103°47′29″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.828772312774!2d103.78920021528234!3d1.276111099069241!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTYnMzQuMCJOIDEwM8KwNDcnMjkuMCJF!5e0!3m2!1sen!2ssg!4v1616905556861!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "CC 26", line: "Circle", location: "119 Pasir Panjang Road Singapore 117424", operator: "SMRT"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "CC 25"}), (b: Station {code: "CC 26"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "Circle"}]->(b);

CREATE (:Station {name: "Labrador Park", code: "CC 27", line: "Circle", bus_interchange: false,
    names: ["Labrador Park", "拉柏多公园", "லாப்ரடார் பூங்கா", "Labrador Park"], coordinates: "1°16′20″N 103°48′10″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.8347940952985!2d103.80058911528226!3d1.2722221990720928!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTYnMjAuMCJOIDEwM8KwNDgnMTAuMCJF!5e0!3m2!1sen!2ssg!4v1616905640601!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "CC 27", line: "Circle", location: "701 Telok Blangah Road Singapore 109029", operator: "SMRT"})],
    parking: true, bicycle_facilities: true, disabled_access: true });
MATCH (a: Station {code: "CC 26"}), (b: Station {code: "CC 27"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Circle"}]->(b);

CREATE (:Station {name: "Telok Blangah", code: "CC 28", line: "Circle", bus_interchange: false,
    names: ["Telok Blangah", "直落布兰雅", "தெலுக் பிளாங்கா", "Telok Blangah"], coordinates: "1°16′14″N 103°48′35″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.8373691235997!2d103.80753351528237!3d1.2705555990733042!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTYnMTQuMCJOIDEwM8KwNDgnMzUuMCJF!5e0!3m2!1sen!2ssg!4v1616905713792!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "CC 28", line: "Circle", location: "463 Telok Blangah Road Singapore 109028", operator: "SMRT"})],
    parking: false, bicycle_facilities: true, disabled_access: true });
MATCH (a: Station {code: "CC 27"}), (b: Station {code: "CC 28"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Circle"}]->(b);
MATCH (a: Station {code: "CC 28"}), (b: Station {code: "NE 1|CC 29"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "Circle"}]->(b);

CREATE (:Station {name: "Bayfront", code: "CE 1|DT 16", line: "Circle", bus_interchange: false, station_interchange: ["DT 16"], interchange_type: ["standard"], interchange_line: ["Downtown"],
    names: ["Bayfront", "海湾舫", "பேஃபிரண்ட்", "Bayfront"], coordinates: "1°16′56″N 103°51′34″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.8192724289447!2d103.85725571528232!3d1.282222199064796!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTYnNTYuMCJOIDEwM8KwNTEnMzQuMCJF!5e0!3m2!1sen!2ssg!4v1616905861898!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "CE 1", line: "Circle", location: "11 Bayfront Avenue Singapore 018957", operator: "SMRT"}),
            apoc.convert.toJson({code: "DT 16", line: "Downtown", location: "11 Bayfront Avenue Singapore 018957", operator: "SBS"})],
    parking: true, bicycle_facilities: true, disabled_access: true });
MATCH (a: Station {code: "CC 4|DT 15"}), (b: Station {code: "CE 1|DT 16"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "Circle"}]->(b);
MATCH (a: Station {code: "CE 1|DT 16"}), (b: Station {code: "NS 27|CE 2|TE 20"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "Circle"}]->(b);


/* Bukit Panjang LRT */

CREATE (:Station {name: "South View", code: "BP 2", line: "Bukit Panjang LRT", bus_interchange: false,
    names: ["South View", "南景", "சவுத் வியூ", "South View"], coordinates: "1°22′49″N 103°44′43″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.660636795337!2d103.74308911528239!3d1.380277798993323!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjInNDkuMCJOIDEwM8KwNDQnNDMuMCJF!5e0!3m2!1sen!2ssg!4v1617196692848!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "BP 2", line: "Bukit Panjang LRT", location: "50 Choa Chu Kang Way Singapore 688265", operator: "SMRT"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "NS 4|BP 1"}), (b: Station {code: "BP 2"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "Bukit Panjang LRT"}]->(b);

CREATE (:Station {name: "Keat Hong", code: "BP 3", line: "Bukit Panjang LRT", bus_interchange: false,
    names: ["Keat Hong", "吉丰", "கியட் ஹோங்", "Keat Hong"], coordinates: "1°22′43″N 103°44′56″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.6634308027196!2d103.74670021528237!3d1.3786110989945426!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjInNDMuMCJOIDEwM8KwNDQnNTYuMCJF!5e0!3m2!1sen!2ssg!4v1617196813649!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "BP 3", line: "Bukit Panjang LRT", location: "30 Choa Chu Kang Way Singapore 688266", operator: "SMRT"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "BP 2"}), (b: Station {code: "BP 3"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Bukit Panjang LRT"}]->(b);

CREATE (:Station {name: "Teck Whye", code: "BP 4", line: "Bukit Panjang LRT", bus_interchange: false,
    names: ["eck Whye", "德惠", "டெக் வாய்", "Teck Whye"], coordinates: "1°22′36″N 103°45′13″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.66668607273!2d103.75142241528236!3d1.3766666989959482!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjInMzYuMCJOIDEwM8KwNDUnMTMuMCJF!5e0!3m2!1sen!2ssg!4v1617196927510!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "BP 4", line: "Bukit Panjang LRT", location: "10 Choa Chu Kang Way Singapore 688267", operator: "SMRT"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "BP 3"}), (b: Station {code: "BP 4"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Bukit Panjang LRT"}]->(b);

CREATE (:Station {name: "Phoenix", code: "BP 5", line: "Bukit Panjang LRT", bus_interchange: false,
    names: ["Phoenix", "凤凰", "ஃபீனிக்ஸ்", "Phoenix"], coordinates: "1°22′43″N 103°45′29″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.6634308027196!2d103.75586691528237!3d1.37861109899453!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjInNDMuMCJOIDEwM8KwNDUnMjkuMCJF!5e0!3m2!1sen!2ssg!4v1617197045098!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "BP 5", line: "Bukit Panjang LRT", location: "40 Choa Chu Kang Road Singapore 689483", operator: "SMRT"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "BP 4"}), (b: Station {code: "BP 5"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Bukit Panjang LRT"}]->(b);

CREATE (:Station {name: "Bukit Panjang", code: "BP 6|DT 1", line: "Bukit Panjang LRT", bus_interchange: true, station_interchange: ["DT 1"], interchange_type: ["tap out"], interchange_line: ["Downtown"],
    names: ["Bukit Panjang", "武吉班让", "புக்கிட் பாஞ்சாங்", "Bukit Panjang"], coordinates: "1°22′42″N 103°45′42″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.663896170391!2d103.7594780152824!3d1.378333298994744!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjInNDIuMCJOIDEwM8KwNDUnNDIuMCJF!5e0!3m2!1sen!2ssg!4v1617428899917!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "BP 6", line: "Bukit Panjang LRT", location: "11 Petir Road Singapore 678268", operator: "SMRT"}),
            apoc.convert.toJson({code: "DT 1", line: "Downtown", location: "950 Upper Bukit Timah Road Singapore 678213", operator: "SBS"})],
    parking: true, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "BP 5"}), (b: Station {code: "BP 6|DT 1"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Bukit Panjang LRT"}]->(b);

CREATE (:Station {name: "Petir", code: "BP 7", line: "Bukit Panjang LRT", bus_interchange: false,
    names: ["Petir", "柏提", "பெட்டீர்", "Petir"], coordinates: "1°22′40″N 103°46′00″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.6648264570013!2d103.76447801528244!3d1.3777777989951483!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjInNDAuMCJOIDEwM8KwNDYnMDAuMCJF!5e0!3m2!1sen!2ssg!4v1617429153355!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "BP 7", line: "Bukit Panjang LRT", location: "31 Petir Road Singapore 678269", operator: "SMRT"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "BP 6|DT 1"}), (b: Station {code: "BP 7"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Bukit Panjang LRT"}]->(b);

CREATE (:Station {name: "Pending", code: "BP 8", line: "Bukit Panjang LRT", bus_interchange: false,
    names: ["Pending", "秉定", "பெண்டிங்", "Pending"], coordinates: "1°22′34″N 103°46′16″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.6676154017136!2d103.76892241528239!3d1.376111098996362!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjInMzQuMCJOIDEwM8KwNDYnMTYuMCJF!5e0!3m2!1sen!2ssg!4v1617429267887!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "BP 8", line: "Bukit Panjang LRT", location: "9 Pending Road Singapore 678296", operator: "SMRT"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "BP 7"}), (b: Station {code: "BP 8"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Bukit Panjang LRT"}]->(b);

CREATE (:Station {name: "Bangkit", code: "BP 9", line: "Bukit Panjang LRT", bus_interchange: false,
    names: ["Bangkit", "万吉", "பங்கிட்", "Bangkit"], coordinates: "1°22′48″N 103°46′21″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.661102725572!2d103.77031131528247!3d1.3799999989935359!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjInNDguMCJOIDEwM8KwNDYnMjEuMCJF!5e0!3m2!1sen!2ssg!4v1617429599265!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "BP 9", line: "Bukit Panjang LRT", location: "20 Bukit Panjang Ring Road Singapore 679939", operator: "SMRT"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "BP 8"}), (b: Station {code: "BP 9"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Bukit Panjang LRT"}]->(b);

CREATE (:Station {name: "Fajar", code: "BP 10", line: "Bukit Panjang LRT", bus_interchange: false,
    names: ["Fajar", "法嘉", "ஃபஜார்", "Fajar"], coordinates: "1°23′04″N 103°46′15″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.6536372628484!2d103.76864461528247!3d1.384444398990298!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjMnMDQuMCJOIDEwM8KwNDYnMTUuMCJF!5e0!3m2!1sen!2ssg!4v1617429963997!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "BP 10", line: "Bukit Panjang LRT", location: "40 Fajar Road Singapore 679004", operator: "SMRT"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "BP 9"}), (b: Station {code: "BP 10"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "Bukit Panjang LRT"}]->(b);

CREATE (:Station {name: "Segar", code: "BP 11", line: "Bukit Panjang LRT", bus_interchange: false,
    names: ["Segar", "实加", "செகார்", "Segar"], coordinates: "1°23′16″N 103°46′10″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.648022247295!2d103.76725571528235!3d1.3877777989878706!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjMnMTYuMCJOIDEwM8KwNDYnMTAuMCJF!5e0!3m2!1sen!2ssg!4v1617430193610!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "BP 11", line: "Bukit Panjang LRT", location: "50 Bukit Panjang Ring Road Singapore 679940", operator: "SMRT"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "BP 10"}), (b: Station {code: "BP 11"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Bukit Panjang LRT"}]->(b);

CREATE (:Station {name: "Jelapang", code: "BP 12", line: "Bukit Panjang LRT", bus_interchange: false,
    names: ["Jelapang", "泽拉邦", "ஜெலப்பாங்", "Jelapang"], coordinates: "1°23′12″N 103°45′52″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.64989536305!2d103.76225571528236!3d1.3866666989886705!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjMnMTIuMCJOIDEwM8KwNDUnNTIuMCJF!5e0!3m2!1sen!2ssg!4v1617430438843!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "BP 12", line: "Bukit Panjang LRT", location: "70 Bukit Panjang Ring Road Singapore 679941", operator: "SMRT"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "BP 11"}), (b: Station {code: "BP 12"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Bukit Panjang LRT"}]->(b);

CREATE (:Station {name: "Senja", code: "BP 13", line: "Bukit Panjang LRT", bus_interchange: false,
    names: ["Senja", "信佳", "சென்ஜா", "Senja"], coordinates: "1°22′58″N 103°45′44″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.656439539826!2d103.7600335152825!3d1.3827777989915095!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjInNTguMCJOIDEwM8KwNDUnNDQuMCJF!5e0!3m2!1sen!2ssg!4v1617430688111!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "BP 13", line: "Bukit Panjang LRT", location: "90 Bukit Panjang Ring Road Singapore 679942", operator: "SMRT"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "BP 12"}), (b: Station {code: "BP 13"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Bukit Panjang LRT"}]->(b);
MATCH (a: Station {code: "BP 13"}), (b: Station {code: "BP 6|DT 1"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Bukit Panjang LRT"}]->(b);


/* Sengkang LRT */

CREATE (:Station {name: "Compassvale", code: "SE 1", line: "Sengkang LRT", bus_interchange: false,
    names: ["Compassvale", "康埔桦", "கம்பஸ்வேல்", "Compassvale"], coordinates: "1°23′40″N 103°54′01″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.6367520531176!2d103.89808911528232!3d1.3944443989829982!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjMnNDAuMCJOIDEwM8KwNTQnMDEuMCJF!5e0!3m2!1sen!2ssg!4v1617430881339!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "SE 1", line: "Sengkang LRT", location: "10 Compassvale Street Singapore 545055", operator: "SBS"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "NE 16|STC"}), (b: Station {code: "SE 1"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Sengkang LRT"}]->(b);

CREATE (:Station {name: "Rumbia", code: "SE 2", line: "Sengkang LRT", bus_interchange: false,
    names: ["Rumbia", "棕美", "ரூம்பியா", "Rumbia"], coordinates: "1°23′27.94″N 103°54′22.70″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.6424221320763!2d103.9041169152824!3d1.3910943989854607!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjMnMjcuOSJOIDEwM8KwNTQnMjIuNyJF!5e0!3m2!1sen!2ssg!4v1617431090711!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "SE 2", line: "Sengkang LRT", location: "70 Rivervale Drive Singapore 545054", operator: "SBS"})],
    parking: true, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "SE 1"}), (b: Station {code: "SE 2"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 1, line: "Sengkang LRT"}]->(b);

CREATE (:Station {name: "Bakau", code: "SE 3", line: "Sengkang LRT", bus_interchange: false,
    names: ["Bakau", "码高", "பக்காவ்", "Bakau"], coordinates: "1°23′16.27″N 103°54′18.96″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.647895756675!2d103.90307801528233!3d1.3878527989878109!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjMnMTYuMyJOIDEwM8KwNTQnMTkuMCJF!5e0!3m2!1sen!2ssg!4v1617431364096!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "SE 3", line: "Sengkang LRT", location: "50 Rivervale Drive Singapore 545053", operator: "SBS"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "SE 2"}), (b: Station {code: "SE 3"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 1, line: "Sengkang LRT"}]->(b);

CREATE (:Station {name: "Kangkar", code: "SE 4", line: "Sengkang LRT", bus_interchange: false,
    names: ["Kangkar", "港脚", "கங்கார்", "Kangkar"], coordinates: "1°23′1.46″N 103°54′7.90″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.654823926067!2d103.90000571528248!3d1.3837388989908035!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjMnMDEuNSJOIDEwM8KwNTQnMDcuOSJF!5e0!3m2!1sen!2ssg!4v1617431525149!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "SE 4", line: "Sengkang LRT", location: "20 Rivervale Drive Singapore 545052", operator: "SBS"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "SE 3"}), (b: Station {code: "SE 4"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 1, line: "Sengkang LRT"}]->(b);

CREATE (:Station {name: "Ranggung", code: "SE 5", line: "Sengkang LRT", bus_interchange: false,
    names: ["Ranggung", "兰岗", "ரங்கோங்", "Ranggung"], coordinates: "1°23′1.03″N 103°53′51.85″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.655024867244!2d103.89554741528245!3d1.3836193989908907!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjMnMDEuMCJOIDEwM8KwNTMnNTEuOSJF!5e0!3m2!1sen!2ssg!4v1617431766032!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "SE 5", line: "Sengkang LRT", location: "30 Sengkang East Avenue Singapore 545046", operator: "SBS"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "SE 4"}), (b: Station {code: "SE 5"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Sengkang LRT"}]->(b);
MATCH (a: Station {code: "SE 5"}), (b: Station {code: "NE 16|STC"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "Sengkang LRT"}]->(b);

CREATE (:Station {name: "Cheng Lim", code: "SW 1", line: "Sengkang LRT", bus_interchange: false,
    names: ["Cheng Lim", "振林", "செங் லிம்", "Cheng Lim"], coordinates: "1.3963098°N 103.8937126°E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.633588839755!2d103.89152391528246!3d1.3963097989816458!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjMnNDYuNyJOIDEwM8KwNTMnMzcuNCJF!5e0!3m2!1sen!2ssg!4v1617431867940!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "SW 1", line: "Sengkang LRT", location: "5 Anchorvale Street Singapore 545047", operator: "SBS"})],
    parking: true, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "NE 16|STC"}), (b: Station {code: "SW 1"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Sengkang LRT"}]->(b);

CREATE (:Station {name: "Farmway", code: "SW 2", line: "Sengkang LRT", bus_interchange: false,
    names: ["Farmway", "农道", "ஃபாம்வே", "Farmway"], coordinates: "1°23′56.32″N 103°53′20.08″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.629057286264!2d103.88672241528243!3d1.3989777989797145!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjMnNTYuMyJOIDEwM8KwNTMnMjAuMSJF!5e0!3m2!1sen!2ssg!4v1617432055779!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "SW 2", line: "Sengkang LRT", location: "35 Anchorvale Street Singapore 545048", operator: "SBS"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "SW 1"}), (b: Station {code: "SW 2"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 1, line: "Sengkang LRT"}]->(b);

CREATE (:Station {name: "Kupang", code: "SW 3", line: "Sengkang LRT", bus_interchange: false,
    names: ["Kupang", "古邦", "கூப்பாங்", "Kupang"], coordinates: "1°23′57.22″N 103°52′52.75″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.628632222261!2d103.87913071528234!3d1.3992277989795199!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjMnNTcuMiJOIDEwM8KwNTInNTIuOCJF!5e0!3m2!1sen!2ssg!4v1617432259511!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "SW 3", line: "Sengkang LRT", location: "60 Fernvale Street Singapore 797697", operator: "SBS"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "SW 2"}), (b: Station {code: "SW 3"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 1, line: "Sengkang LRT"}]->(b);

CREATE (:Station {name: "Thanggam", code: "SW 4", line: "Sengkang LRT", bus_interchange: false,
    names: ["Thanggam", "丹甘", "தங்கம்", "Thanggam"], coordinates: "1°23′57.68″N 103°52′29.26″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.628414900211!2d103.87260571528246!3d1.3993555989794322!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjMnNTcuNyJOIDEwM8KwNTInMjkuMyJF!5e0!3m2!1sen!2ssg!4v1617432346253!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "SW 4", line: "Sengkang LRT", location: "40 Fernvale Road Singapore 797699", operator: "SBS"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "SW 3"}), (b: Station {code: "SW 4"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 1, line: "Sengkang LRT"}]->(b);

CREATE (:Station {name: "Fernvale", code: "SW 5", line: "Sengkang LRT", bus_interchange: false,
    names: ["Fernvale", "芬微", "ஃபொ்ன்வேல்", "Fernvale"], coordinates: "1°23′35.55″N 103°52′34.69″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.6388458150295!2d103.87411411528247!3d1.3932082989838983!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjMnMzUuNiJOIDEwM8KwNTInMzQuNyJF!5e0!3m2!1sen!2ssg!4v1617432542084!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "SW 5", line: "Sengkang LRT", location: "10 Fernvale Road Singapore 797698", operator: "SBS"})],
    parking: true, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "SW 4"}), (b: Station {code: "SW 5"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 1, line: "Sengkang LRT"}]->(b);

CREATE (:Station {name: "Layar", code: "SW 6", line: "Sengkang LRT", bus_interchange: false,
    names: ["Layar", "拉雅", "லாயார்", "Layar"], coordinates: "1°23′38.49″N 103°52′47.11″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.637462659832!2d103.87756411528237!3d1.3940249989833058!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjMnMzguNSJOIDEwM8KwNTInNDcuMSJF!5e0!3m2!1sen!2ssg!4v1617432714658!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "SW 6", line: "Sengkang LRT", location: "11 Sengkang West Avenue Singapore 797700", operator: "SBS"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "SW 5"}), (b: Station {code: "SW 6"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 1, line: "Sengkang LRT"}]->(b);

CREATE (:Station {name: "Tongkang", code: "SW 7", line: "Sengkang LRT", bus_interchange: false,
    names: ["Tongkang", "同港", "தொங்காங்", "Tongkang"], coordinates: "1°23′27.88″N 103°53′08.78″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.6424501946362!2d103.88358351528238!3d1.3910777989854612!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjMnMjcuOSJOIDEwM8KwNTMnMDguOCJF!5e0!3m2!1sen!2ssg!4v1617432801305!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "SW 7", line: "Sengkang LRT", location: "80 Sengkang East Avenue Singapore 545050", operator: "SBS"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "SW 6"}), (b: Station {code: "SW 7"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 1, line: "Sengkang LRT"}]->(b);

CREATE (:Station {name: "Renjong", code: "SW 8", line: "Sengkang LRT", bus_interchange: false,
    names: ["Renjong", "仁宗", "ரெஞ்சோங்", "Renjong"], coordinates: "1°23′11.81″N 103°53′25.53″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.649984337067!2d103.88823631528237!3d1.3866138989887238!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjMnMTEuOCJOIDEwM8KwNTMnMjUuNSJF!5e0!3m2!1sen!2ssg!4v1617432902988!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "SW 8", line: "Sengkang LRT", location: "60 Sengkang East Avenue Singapore 545049", operator: "SBS"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "SW 7"}), (b: Station {code: "SW 8"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 1, line: "Sengkang LRT"}]->(b);
MATCH (a: Station {code: "SW 8"}), (b: Station {code: "NE 16|STC"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "Sengkang LRT"}]->(b);


/* Punggol LRT */

CREATE (:Station {name: "Cove", code: "PE 1", line: "Punggol LRT", bus_interchange: false,
    names: ["Cove", "海湾", "கோவ்", "Cove"], coordinates: "1°23′53.20″N 103°54′20.61″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.6305303101813!2d103.90353631528237!3d1.3981110989803256!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjMnNTMuMiJOIDEwM8KwNTQnMjAuNiJF!5e0!3m2!1sen!2ssg!4v1617433369916!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "PE 1", line: "Punggol LRT", location: "50 Punggol Field Singapore 828858", operator: "SBS"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "NE 17|PTC"}), (b: Station {code: "PE 1"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "Punggol LRT"}]->(b);

CREATE (:Station {name: "Meridian", code: "PE 2", line: "Punggol LRT", bus_interchange: false,
    names: ["Meridian", "丽园", "மெரிடியன்", "Meridian"], coordinates: "1°23′50.51″N 103°54′30.93″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.6317995019817!2d103.90640301528249!3d1.3973638989808748!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjMnNTAuNSJOIDEwM8KwNTQnMzAuOSJF!5e0!3m2!1sen!2ssg!4v1617433464072!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "PE 2", line: "Punggol LRT", location: "60 Punggol Field Singapore 828857", operator: "SBS"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "PE 1"}), (b: Station {code: "PE 2"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 1, line: "Punggol LRT"}]->(b);

CREATE (:Station {name: "Coral Edge", code: "PE 3", line: "Punggol LRT", bus_interchange: false,
    names: ["Coral Edge", "珊瑚", "கோரல் எட்ஜ்", "Coral Edge"], coordinates: "1°23′40.73″N 103°54′43.34″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.6364083640588!2d103.90985021528235!3d1.3946471989828475!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjMnNDAuNyJOIDEwM8KwNTQnNDMuMyJF!5e0!3m2!1sen!2ssg!4v1617433563307!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "PE 3", line: "Punggol LRT", location: "70 Punggol Field Singapore 828856", operator: "SBS"})],
    parking: true, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "PE 2"}), (b: Station {code: "PE 3"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 1, line: "Punggol LRT"}]->(b);

CREATE (:Station {name: "Riviera", code: "PE 4", line: "Punggol LRT", bus_interchange: false,
    names: ["Riviera", "里维拉", "ரிவியாரா", "Riviera"], coordinates: "1°23′39.98″N 103°55′0.38″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.636761373378!2d103.9145835152824!3d1.3944388989830239!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjMnNDAuMCJOIDEwM8KwNTUnMDAuNCJF!5e0!3m2!1sen!2ssg!4v1617433708708!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "PE 4", line: "Punggol LRT", location: "40 Punggol East Singapore 828852", operator: "SBS"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "PE 3"}), (b: Station {code: "PE 4"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 1, line: "Punggol LRT"}]->(b);

CREATE (:Station {name: "Kadaloor", code: "PE 5", line: "Punggol LRT", bus_interchange: false,
    names: ["Kadaloor", "卡达鲁", "கடலூர்", "Kadaloor"], coordinates: "1°23′58.87″N 103°54′58.87″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.627852797727!2d103.91416411528247!3d1.3996860989791868!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjMnNTguOSJOIDEwM8KwNTQnNTguOSJF!5e0!3m2!1sen!2ssg!4v1617434477221!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "PE 5", line: "Punggol LRT", location: "60 Punggol Drive Singapore 828853", operator: "SBS"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "PE 4"}), (b: Station {code: "PE 5"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 1, line: "Punggol LRT"}]->(b);

CREATE (:Station {name: "Oasis", code: "PE 6", line: "Punggol LRT", bus_interchange: false,
    names: ["Oasis", "绿洲", "ஓய்சிஸ்", "Oasis"], coordinates: "1°24′08.53″N 103°54′44.72″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.6232842250038!2d103.91023351528241!3d1.402369398977245!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjQnMDguNSJOIDEwM8KwNTQnNDQuNyJF!5e0!3m2!1sen!2ssg!4v1617434576211!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "PE 6", line: "Punggol LRT", location: "50 Punggol Drive Singapore 828854", operator: "SBS"})],
    parking: true, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "PE 5"}), (b: Station {code: "PE 6"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 1, line: "Punggol LRT"}]->(b);

CREATE (:Station {name: "Damai", code: "PE 7", line: "Punggol LRT", bus_interchange: false,
    names: ["Damai", "达迈", "டாமாய்", "Damai"], coordinates: "1°24′17.33″N 103°54′31.95″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.6191146169454!2d103.90668631528236!3d1.4048138989754477!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjQnMTcuMyJOIDEwM8KwNTQnMzIuMCJF!5e0!3m2!1sen!2ssg!4v1617434678631!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "PE 7", line: "Punggol LRT", location: "40 Punggol Drive Singapore 828855", operator: "SBS"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "PE 6"}), (b: Station {code: "PE 7"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 1, line: "Punggol LRT"}]->(b);
MATCH (a: Station {code: "PE 7"}), (b: Station {code: "NE 17|PTC"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Punggol LRT"}]->(b);

CREATE (:Station {name: "Sam Kee", code: "PW 1", line: "Punggol LRT", bus_interchange: false,
    names: ["Sam Kee", "三记", "சாம் கீ", "Sam Kee"], coordinates: "1°24′35.10″N 103°54′16.50″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.6106729297803!2d103.90239461528243!3d1.4097499989718463!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjQnMzUuMSJOIDEwM8KwNTQnMTYuNSJF!5e0!3m2!1sen!2ssg!4v1617434766346!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "PW 1", line: "Punggol LRT", location: "10 Sentul Crescent Singapore 828851", operator: "SBS"})],
    parking: true, bicycle_facilities: true, disabled_access: true });
MATCH (a: Station {code: "NE 17|PTC"}), (b: Station {code: "PW 1"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Punggol LRT"}]->(b);

CREATE (:Station {name: "Punggol Point", code: "PW 3", line: "Punggol LRT", bus_interchange: false,
    names: ["Punggol Point", "榜鹅坊", "பொங்கோல் பாயிண்ட்", "Punggol Point"], coordinates: "1°25′0.78″N 103°54′22.87″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.5984213025026!2d103.90416411528237!3d1.416883298966648!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjUnMDAuOCJOIDEwM8KwNTQnMjIuOSJF!5e0!3m2!1sen!2ssg!4v1617434861687!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "PW 3", line: "Punggol LRT", location: "81 Punggol Way Singapore 828644", operator: "SBS"})],
    parking: false, bicycle_facilities: false, disabled_access: false });
MATCH (a: Station {code: "PW 1"}), (b: Station {code: "PW 3"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Punggol LRT"}]->(b);

CREATE (:Station {name: "Samudera", code: "PW 4", line: "Punggol LRT", bus_interchange: false,
    names: ["amudera", "山姆", "சமுத்திரா", "Samudera"], coordinates: "1°24′57.42″N 103°54′6.68″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.6000277846642!2d103.89966691528237!3d1.4159499989673419!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjQnNTcuNCJOIDEwM8KwNTQnMDYuNyJF!5e0!3m2!1sen!2ssg!4v1617435000305!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "PW 4", line: "Punggol LRT", location: "61 Punggol Way Singapore 828645", operator: "SBS"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "PW 3"}), (b: Station {code: "PW 4"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 1, line: "Punggol LRT"}]->(b);

CREATE (:Station {name: "Nibong", code: "PW 5", line: "Punggol LRT", bus_interchange: false,
    names: ["Nibong", "尼蒙", "நிபொங்", "Nibong"], coordinates: "1°24′42.76″N 103°54′0.10″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.607024848532!2d103.89783911528241!3d1.4118777989702906!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjQnNDIuOCJOIDEwM8KwNTQnMDAuMSJF!5e0!3m2!1sen!2ssg!4v1617435084557!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "PW 5", line: "Punggol LRT", location: "41 Punggol Way Singapore 828862", operator: "SBS"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "PW 4"}), (b: Station {code: "PW 5"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 1, line: "Punggol LRT"}]->(b);

CREATE (:Station {name: "Sumang", code: "PW 6", line: "Punggol LRT", bus_interchange: false,
    names: ["Sumang", "苏芒", "சுமாங்", "Sumang"], coordinates: "1°24′29″N 103°53′55″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.6135740188415!2d103.89642241528244!3d1.4080555989730956!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjQnMjkuMCJOIDEwM8KwNTMnNTUuMCJF!5e0!3m2!1sen!2ssg!4v1617435158985!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "PW 6", line: "Punggol LRT", location: "31 Punggol Way Singapore 828863", operator: "SBS"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "PW 5"}), (b: Station {code: "PW 6"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 1, line: "Punggol LRT"}]->(b);

CREATE (:Station {name: "Soo Teck", code: "PW 7", line: "Punggol LRT", bus_interchange: false,
    names: ["Soo Teck", "树德", "சூ டெக்", "Soo Teck"], coordinates: "1°24′19.5″N 103°53′49.0″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.618085299039!2d103.89475571528232!3d1.4054166989749994!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjQnMTkuNSJOIDEwM8KwNTMnNDkuMCJF!5e0!3m2!1sen!2ssg!4v1617435242285!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "PW 7", line: "Punggol LRT", location: "21 Punggol Way Singapore 828864", operator: "SBS"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "PW 6"}), (b: Station {code: "PW 7"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 1, line: "Punggol LRT"}]->(b);
MATCH (a: Station {code: "PW 7"}), (b: Station {code: "NE 17|PTC"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "Punggol LRT"}]->(b);


/* Downtown */

CREATE (:Station {name: "Cashew", code: "DT 2", line: "Downtown", bus_interchange: false,
    names: ["Cashew", "凯秀", "முந்திரி", "Cashew"], coordinates: "1°22′08″N 103°45′53″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.679661549386!2d103.76253351528236!3d1.368888899001628!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjInMDguMCJOIDEwM8KwNDUnNTMuMCJF!5e0!3m2!1sen!2ssg!4v1617435613321!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "DT 2", line: "Downtown", location: "1 Cashew Road Singapore 679696", operator: "SBS"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "BP 6|DT 1"}), (b: Station {code: "DT 2"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Downtown"}]->(b);

CREATE (:Station {name: "Hillview", code: "DT 3", line: "Downtown", bus_interchange: false,
    names: ["Hillview", "山景", "ஹில்வியூ", "Hillview"], coordinates: "1°21′45″N 103°46′03″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.6902649791696!2d103.76531131528233!3d1.3624999990062718!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjEnNDUuMCJOIDEwM8KwNDYnMDMuMCJF!5e0!3m2!1sen!2ssg!4v1617435697064!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "DT 3", line: "Downtown", location: "510 Upper Bukit Timah Road Singapore 678211", operator: "SBS"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "DT 2"}), (b: Station {code: "DT 3"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Downtown"}]->(b);

CREATE (:Station {name: "Beauty World", code: "DT 5", line: "Downtown", bus_interchange: false,
    names: ["Beauty World", "美世界", "பியூட்டி வேர்ல்ட்", "Beauty World"], coordinates: "1°20′28″N 103°46′33″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.725402428704!2d103.7736446152823!3d1.3411110990218693!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjAnMjguMCJOIDEwM8KwNDYnMzMuMCJF!5e0!3m2!1sen!2ssg!4v1617435794329!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "DT 5", line: "Downtown", location: "101 Upper Bukit Timah Road Singapore 588216", operator: "SBS"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "DT 3"}), (b: Station {code: "DT 5"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "Downtown"}]->(b);

CREATE (:Station {name: "King Albert Park", code: "DT 6", line: "Downtown", bus_interchange: false,
    names: ["King Albert Park", "阿尔柏王园", "கிங் ஆல்பர்ட் பார்க்", "King Albert Park"], coordinates: "1°20′08″N 103°47′02″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.734438004085!2d103.78170021528229!3d1.3355555990259227!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjAnMDguMCJOIDEwM8KwNDcnMDIuMCJF!5e0!3m2!1sen!2ssg!4v1617435880473!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "DT 6", line: "Downtown", location: "2 Blackmore Drive Singapore 599987", operator: "SBS"})],
    parking: false, bicycle_facilities: true, disabled_access: true });
MATCH (a: Station {code: "DT 5"}), (b: Station {code: "DT 6"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Downtown"}]->(b);

CREATE (:Station {name: "Sixth Avenue", code: "DT 7", line: "Downtown", bus_interchange: false,
    names: ["Sixth Avenue", "第六道", "சிக்ஸ்த் அவென்யூ", "Sixth Avenue"], coordinates: "1°19′51″N 103°47′51″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.742088960618!2d103.79531131528223!3d1.3308332990293696!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTknNTEuMCJOIDEwM8KwNDcnNTEuMCJF!5e0!3m2!1sen!2ssg!4v1617436041836!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "DT 7", line: "Downtown", location: "777 Bukit Timah Road Singapore 269784", operator: "SBS"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "DT 6"}), (b: Station {code: "DT 7"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Downtown"}]->(b);

CREATE (:Station {name: "Tan Kah Kee", code: "DT 8", line: "Downtown", bus_interchange: false,
    names: ["Tan Kah Kee", "陈嘉庚", "டான் கா கீ", "Tan Kah Kee"], coordinates: "1°19′34″N 103°48′26″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.749712660452!2d103.8050335152823!3d1.3261110990328016!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTknMzQuMCJOIDEwM8KwNDgnMjYuMCJF!5e0!3m2!1sen!2ssg!4v1617436172022!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "DT 8", line: "Downtown", location: "651 Bukit Timah Road Singapore 266268", operator: "SBS"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "DT 7"}), (b: Station {code: "DT 8"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Downtown"}]->(b);
MATCH (a: Station {code: "DT 8"}), (b: Station {code: "CC 19|DT 9"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Downtown"}]->(b);

CREATE (:Station {name: "Stevens", code: "DT 10|TE 11", line: "Downtown", bus_interchange: false, station_interchange: ["TE 11"], interchange_type: ["standard"], interchange_line: ["Thomson-East Coast"],
    names: ["Stevens", "史蒂芬", "ஸ்டீவன்ஸ்", "Stevens"], coordinates: "1°19′12″N 103°49′34″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.7595384334613!2d103.82392241528237!3d1.319999999037253!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTknMTIuMCJOIDEwM8KwNDknMzQuMCJF!5e0!3m2!1sen!2ssg!4v1617436276341!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "DT 10", line: "Downtown", location: "92 Stevens Road Singapore 257877", operator: "SBS"}),
            apoc.convert.toJson({code: "TE 11", line: "Thomson-East Coast", location: "82 Stevens Road Singapore 257879", operator: "SMRT"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "CC 19|DT 9"}), (b: Station {code: "DT 10|TE 11"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Downtown"}]->(b);
MATCH (a: Station {code: "DT 10|TE 11"}), (b: Station {code: "NS 21|DT 11"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Downtown"}]->(b);
MATCH (a: Station {code: "NS 21|DT 11"}), (b: Station {code: "NE 7|DT 12"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "Downtown"}]->(b);

CREATE (:Station {name: "Rochor", code: "DT 13", line: "Downtown", bus_interchange: false,
    names: ["Rochor", "梧槽", "ரோச்சோர்", "Rochor"], coordinates: "1°18′13.55″N 103°51′9.29″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.785423326806!2d103.85039191528226!3d1.3037638990490907!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTgnMTMuNiJOIDEwM8KwNTEnMDkuMyJF!5e0!3m2!1sen!2ssg!4v1617436405258!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "DT 13", line: "Downtown", location: "11 Rochor Canal Road Singapore 188505", operator: "SBS"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "NE 7|DT 12"}), (b: Station {code: "DT 13"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 1, line: "Downtown"}]->(b);
MATCH (a: Station {code: "DT 13"}), (b: Station {code: "EW 12|DT 14"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Downtown"}]->(b);
MATCH (a: Station {code: "EW 12|DT 14"}), (b: Station {code: "CC 4|DT 15"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Downtown"}]->(b);
MATCH (a: Station {code: "CC 4|DT 15"}), (b: Station {code: "CE 1|DT 16"}) CREATE (a)<-[:CONNECTS_TO {travel_time_min: 2, line: "Downtown"}]-(b);

CREATE (:Station {name: "Downtown", code: "DT 17", line: "Downtown", bus_interchange: false,
    names: ["Downtown", "市中心", "டௌன்டவுன்", "Downtown"], coordinates: "1°16′46″N 103°51′11″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.823596225645!2d103.85086691528228!3d1.2794443990668105!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTYnNDYuMCJOIDEwM8KwNTEnMTEuMCJF!5e0!3m2!1sen!2ssg!4v1617436953328!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "DT 17", line: "Downtown", location: "15 Central Boulevard Singapore 018969", operator: "SBS"})],
    parking: true, bicycle_facilities: true, disabled_access: true });
MATCH (a: Station {code: "CE 1|DT 16"}), (b: Station {code: "DT 17"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Downtown"}]->(b);

CREATE (:Station {name: "Telok Ayer", code: "DT 18", line: "Downtown", bus_interchange: false,
    names: ["Telok Ayer", "直落亚逸", "தெலுக் ஆயர்", "Telok Ayer"], coordinates: "1°16′56″N 103°50′54″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.8192724289447!2d103.84614461528236!3d1.2822221990647895!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTYnNTYuMCJOIDEwM8KwNTAnNTQuMCJF!5e0!3m2!1sen!2ssg!4v1617437163674!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "DT 18", line: "Downtown", location: "7 Cross Street Singapore 048416", operator: "SBS"})],
    parking: false, bicycle_facilities: true, disabled_access: true });
MATCH (a: Station {code: "DT 17"}), (b: Station {code: "DT 18"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 1, line: "Downtown"}]->(b);
MATCH (a: Station {code: "DT 18"}), (b: Station {code: "NE 4|DT 19"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Downtown"}]->(b);

CREATE (:Station {name: "Fort Canning", code: "DT 20", line: "Downtown", bus_interchange: false,
    names: ["Fort Canning", "福康宁", "ஃபோர்ட் கெனிங்", "Fort Canning"], coordinates: "1°17′32.9316″N 103°50′39.57″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.803222797918!2d103.84213631528229!3d1.292480999057319!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTcnMzIuOSJOIDEwM8KwNTAnMzkuNiJF!5e0!3m2!1sen!2ssg!4v1617437266809!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "DT 20", line: "Downtown", location: "170 River Valley Road Singapore 179038", operator: "SBS"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "NE 4|DT 19"}), (b: Station {code: "DT 20"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Downtown"}]->(b);

CREATE (:Station {name: "Bencoolen", code: "DT 21", line: "Downtown", bus_interchange: false,
    names: ["Bencoolen", "明古连", "பென்கூலன்", "Bencoolen"], coordinates: "1°17′56″N 103°51′1″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.7931329184557!2d103.84808911528225!3d1.2988888990526466!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTcnNTYuMCJOIDEwM8KwNTEnMDEuMCJF!5e0!3m2!1sen!2ssg!4v1617437393399!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "DT 21", line: "Downtown", location: "31 Bencoolen Street Singapore 189658", operator: "SBS"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "DT 20"}), (b: Station {code: "DT 21"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Downtown"}]->(b);

CREATE (:Station {name: "Jalan Besar", code: "DT 22", line: "Downtown", bus_interchange: false,
    names: ["Jalan Besar", "惹兰勿刹", "ஜாலான் புசார்", "Jalan Besar"], coordinates: "1°18′20″N 103°51′19″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.7825825776804!2d103.8530891152823!3d1.3055555990477814!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTgnMjAuMCJOIDEwM8KwNTEnMTkuMCJF!5e0!3m2!1sen!2ssg!4v1617437490989!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "DT 22", line: "Downtown", location: "90 Jalan Besar Singapore 208826", operator: "SBS"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "DT 21"}), (b: Station {code: "DT 22"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 1, line: "Downtown"}]->(b);

CREATE (:Station {name: "Bendemeer", code: "DT 23", line: "Downtown", bus_interchange: false,
    names: ["Bendemeer", "明地迷亚", "பெண்டிமியர்", "Bendemeer"], coordinates: "1°18′51″N 103°51′41″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.768875214569!2d103.85920021528237!3d1.314166699041523!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTgnNTEuMCJOIDEwM8KwNTEnNDEuMCJF!5e0!3m2!1sen!2ssg!4v1617437604031!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "DT 23", line: "Downtown", location: "11 Kallang Bahru Singapore 339356", operator: "SBS"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "DT 22"}), (b: Station {code: "DT 23"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Downtown"}]->(b);

CREATE (:Station {name: "Geylang Bahru", code: "DT 24", line: "Downtown", bus_interchange: false,
    names: ["Geylang Bahru", "芽笼峇鲁", "கேலாங் பாரு", "Geylang Bahru"], coordinates: "1°19′17″N 103°52′17″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.757309265841!2d103.86920021528242!3d1.321388899036259!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTknMTcuMCJOIDEwM8KwNTInMTcuMCJF!5e0!3m2!1sen!2ssg!4v1617437681204!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "DT 24", line: "Downtown", location: "541 Kallang Bahru Singapore 339355", operator: "SBS"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "DT 23"}), (b: Station {code: "DT 24"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Downtown"}]->(b);

CREATE (:Station {name: "Mattar", code: "DT 25", line: "Downtown", bus_interchange: false,
    names: ["Mattar", "玛达", "மாத்தார்", "Mattar"], coordinates: "1°19′38″N 103°52′58″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.747921295775!2d103.88058911528235!3d1.327222199031989!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTknMzguMCJOIDEwM8KwNTInNTguMCJF!5e0!3m2!1sen!2ssg!4v1617437759116!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "DT 25", line: "Downtown", location: "60 Merpati Road Singapore 379314", operator: "SBS"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "DT 24"}), (b: Station {code: "DT 25"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Downtown"}]->(b);
MATCH (a: Station {code: "DT 25"}), (b: Station {code: "CC 10|DT 26"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Downtown"}]->(b);

CREATE (:Station {name: "Ubi", code: "DT 27", line: "Downtown", bus_interchange: false,
    names: ["Ubi", "乌美", "உபி", "Ubi"], coordinates: "1°19′48″N 103°54′00″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.7434362406725!2d103.89781131528235!3d1.3299999990299753!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMTknNDguMCJOIDEwM8KwNTQnMDAuMCJF!5e0!3m2!1sen!2ssg!4v1617437837930!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "DT 27", line: "Downtown", location: "51 Ubi Avenue 2 Singapore 408899", operator: "SBS"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "CC 10|DT 26"}), (b: Station {code: "DT 27"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Downtown"}]->(b);

CREATE (:Station {name: "Kaki Bukit", code: "DT 28", line: "Downtown", bus_interchange: false,
    names: ["Kaki Bukit", "加基武吉", "காக்கி புக்கிட்", "Kaki Bukit"], coordinates: "1°20′06″N 103°54′32″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.7353395802197!2d103.90670021528236!3d1.3349999990263237!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjAnMDYuMCJOIDEwM8KwNTQnMzIuMCJF!5e0!3m2!1sen!2ssg!4v1617437925534!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "DT 28", line: "Downtown", location: "30 Kaki Bukit Avenue 1 Singapore 415804", operator: "SBS"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "DT 27"}), (b: Station {code: "DT 28"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Downtown"}]->(b);

CREATE (:Station {name: "Bedok North", code: "DT 29", line: "Downtown", bus_interchange: false,
    names: ["Bedok North", "勿洛北", "பிடோக் நார்த்", "Bedok North"], coordinates: "1°20′11″N 103°55′04″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.7330850990293!2d103.91558911528236!3d1.3363888990253296!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjAnMTEuMCJOIDEwM8KwNTUnMDQuMCJF!5e0!3m2!1sen!2ssg!4v1617438098902!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "DT 29", line: "Downtown", location: "651 Bedok North Road Singapore 479481", operator: "SBS"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "DT 28"}), (b: Station {code: "DT 29"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Downtown"}]->(b);

CREATE (:Station {name: "Bedok Reservoir", code: "DT 30", line: "Downtown", bus_interchange: false,
    names: ["Bedok Reservoir", "勿洛蓄水池", "பிடோக் ரெசவோர்", "Bedok Reservoir"], coordinates: "1.3365418°N 103.9309029°E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.732836766472!2d103.92871421528228!3d1.3365417990252115!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjAnMTEuNiJOIDEwM8KwNTUnNTEuMyJF!5e0!3m2!1sen!2ssg!4v1617438193120!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "DT 30", line: "Downtown", location: "371 Bedok North Avenue 3 Singapore 469724", operator: "SBS"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "DT 29"}), (b: Station {code: "DT 30"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Downtown"}]->(b);

CREATE (:Station {name: "Tampines West", code: "DT 31", line: "Downtown", bus_interchange: false,
    names: ["Tampines West", "淡滨尼西", "தெம்பினிஸ் வெஸ்ட்", "Tampines West"], coordinates: "1°20′44″N 103°56′18″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.7181468046333!2d103.93614461528239!3d1.345555599018645!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjAnNDQuMCJOIDEwM8KwNTYnMTguMCJF!5e0!3m2!1sen!2ssg!4v1617438306802!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "DT 31", line: "Downtown", location: "2 Tampines Avenue 4 Singapore 529683", operator: "SBS"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "DT 30"}), (b: Station {code: "DT 31"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "Downtown"}]->(b);
MATCH (a: Station {code: "DT 31"}), (b: Station {code: "EW 2|DT 32"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Downtown"}]->(b);

CREATE (:Station {name: "Tampines East", code: "DT 33", line: "Downtown", bus_interchange: false,
    names: ["Tampines East", "淡滨尼东", "தெம்பினிஸ் ஈஸ்ட்", "Tampines East"], coordinates: "1°21′23″N 103°57′17″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.700360947086!2d103.9525335152824!3d1.3563888990107487!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjEnMjMuMCJOIDEwM8KwNTcnMTcuMCJF!5e0!3m2!1sen!2ssg!4v1617438386177!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "DT 33", line: "Downtown", location: "20 Tampines Avenue 7 Singapore 529623", operator: "SBS"})],
    parking: false, bicycle_facilities: true, disabled_access: true });
MATCH (a: Station {code: "EW 2|DT 32"}), (b: Station {code: "DT 33"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Downtown"}]->(b);

CREATE (:Station {name: "Upper Changi", code: "DT 34", line: "Downtown", bus_interchange: false,
    names: ["Upper Changi", "樟宜上段", "அப்பர் சாங்கி", "Upper Changi"], coordinates: "1°20′31″N 103°57′41″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.7240438987615!2d103.95920021528237!3d1.3419443990212792!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjAnMzEuMCJOIDEwM8KwNTcnNDEuMCJF!5e0!3m2!1sen!2ssg!4v1617438468361!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "DT 34", line: "Downtown", location: "690 Upper Changi Road East Singapore 485990", operator: "SBS"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "DT 33"}), (b: Station {code: "DT 34"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 3, line: "Downtown"}]->(b);
MATCH (a: Station {code: "DT 34"}), (b: Station {code: "CG 1|DT 35"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Downtown"}]->(b);


/* Thomson-East Coast */

CREATE (:Station {name: "Woodlands North", code: "TE 1", line: "Thomson-East Coast", bus_interchange: false,
    names: ["Woodlands North", "兀兰北", "உட்லண்ட்ஸ் நார்த்", "Woodlands North"], coordinates: "1.4482°N 103.7851°E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.5439025575465!2d103.7829113152824!3d1.4481999989438288!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjYnNTMuNSJOIDEwM8KwNDcnMDYuNCJF!5e0!3m2!1sen!2ssg!4v1617438977031!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "TE 1", line: "Thomson-East Coast", location: "20 Woodlands North Coast Road Singapore 737668", operator: "SMRT"})],
    parking: true, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "TE 1"}), (b: Station {code: "NS 9|TE 2"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Thomson-East Coast"}]->(b);

CREATE (:Station {name: "Woodlands South", code: "TE 3", line: "Thomson-East Coast", bus_interchange: false,
    names: ["Woodlands South", "兀兰南", "உட்லண்ட்ஸ் சவுத்", "Woodlands South"], coordinates: "1°25′38″N 103°47′38″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.5805542338403!2d103.7917002152824!3d1.42722219895912!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjUnMzguMCJOIDEwM8KwNDcnMzguMCJF!5e0!3m2!1sen!2ssg!4v1617439420223!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "TE 3", line: "Thomson-East Coast", location: "30 Woodlands Drive 17 Singapore 737741", operator: "SMRT"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "NS 9|TE 2"}), (b: Station {code: "TE 3"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Thomson-East Coast"}]->(b);

/* The following will have assumed travel_time_min value of 2 as they are still new stations */

CREATE (:Station {name: "Springleaf", code: "TE 4", line: "Thomson-East Coast", bus_interchange: false,
    names: ["Springleaf", "春叶", "ஸ்பிரிங்லீஃவ்", "Springleaf"], coordinates: "1°23′52″N 103°49′06″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.631096536423!2d103.81614461528244!3d1.3977777989805713!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjMnNTIuMCJOIDEwM8KwNDknMDYuMCJF!5e0!3m2!1sen!2ssg!4v1617439688233!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "TE 4", line: "Thomson-East Coast", location: "825 Upper Thomson Road Singapore 787140", operator: "SMRT"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "TE 3"}), (b: Station {code: "TE 4"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Thomson-East Coast"}]->(b);

CREATE (:Station {name: "Lentor", code: "TE 5", line: "Thomson-East Coast", bus_interchange: false,
    names: ["Lentor", "伦多", "லென்ட்டோர்", "Lentor"], coordinates: "1°23′05″N 103°50′12″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.65316983249!2d103.8344780152825!3d1.3847221989901037!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjMnMDUuMCJOIDEwM8KwNTAnMTIuMCJF!5e0!3m2!1sen!2ssg!4v1617439809842!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "TE 5", line: "Thomson-East Coast", location: "1 Lentor Drive Singapore 789361", operator: "SMRT"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "TE 4"}), (b: Station {code: "TE 5"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Thomson-East Coast"}]->(b);

CREATE (:Station {name: "Mayflower", code: "TE 6", line: "Thomson-East Coast", bus_interchange: false,
    names: ["Mayflower", "美华", "மேஃபிளவர்", "Mayflower"], coordinates: "1°22′21″N 103°50′14″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.673646397503!2d103.8350335152824!3d1.372499998998994!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjInMjEuMCJOIDEwM8KwNTAnMTQuMCJF!5e0!3m2!1sen!2ssg!4v1617439900907!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "TE 6", line: "Thomson-East Coast", location: "91 Ang Mo Kio Avenue 4 Singapore 569900", operator: "SMRT"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "TE 5"}), (b: Station {code: "TE 6"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Thomson-East Coast"}]->(b);

CREATE (:Station {name: "Bright Hill", code: "TE 7", line: "Thomson-East Coast", bus_interchange: false,
    names: ["Bright Hill", "光明山", "பிரைட் ஹில்", "Bright Hill"], coordinates: "1°21′42″N 103°49′56″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.691644321337!2d103.8300335152823!3d1.3616666990068902!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjEnNDIuMCJOIDEwM8KwNDknNTYuMCJF!5e0!3m2!1sen!2ssg!4v1617439990957!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "TE 7", line: "Thomson-East Coast", location: "100 Sin Ming Avenue Singapore 575737", operator: "SMRT"})],
    parking: true, bicycle_facilities: true, disabled_access: true });
MATCH (a: Station {code: "TE 6"}), (b: Station {code: "TE 7"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Thomson-East Coast"}]->(b);

CREATE (:Station {name: "Upper Thomson", code: "TE 8", line: "Thomson-East Coast", bus_interchange: false,
    names: ["Upper Thomson", "汤申路上段[1]", "அப்பர் தாம்சன்", "Upper Thomson"], coordinates: "1°21′15″N 103°50′00″E",
    googleMap: "https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.704020928017!2d103.83114461528231!3d1.3541666990123613!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zMcKwMjEnMTUuMCJOIDEwM8KwNTAnMDAuMCJF!5e0!3m2!1sen!2ssg!4v1617440087214!5m2!1sen!2ssg",
    lines: [apoc.convert.toJson({code: "TE 8", line: "Thomson-East Coast", location: "1 Jalan Keli Singapore 577937", operator: "SMRT"})],
    parking: false, bicycle_facilities: false, disabled_access: true });
MATCH (a: Station {code: "TE 7"}), (b: Station {code: "TE 8"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Thomson-East Coast"}]->(b);
MATCH (a: Station {code: "TE 8"}), (b: Station {code: "CC 17|TE 9"}) CREATE (a)-[:CONNECTS_TO {travel_time_min: 2, line: "Thomson-East Coast"}]->(b);
