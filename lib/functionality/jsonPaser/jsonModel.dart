//The full data
class Response {
  String country;
  Cases cases;
  Deaths deaths;
  Tests tests;
  String day;
  String time;

  Response({
    this.country,
    this.cases,
    this.deaths,
    this.tests,
    this.day,
    this.time,
  });

  factory Response.fromJson(Map<String, dynamic> json) {
    return Response(
      country: json["country"],
      cases: Cases.fromJson(json["cases"]),
      deaths: Deaths.fromJson(json["deaths"]),
      tests: Tests.fromJson(json["tests"]),
      day: json["day"],
      time: json["time"],
    );
  }
}

//Data on just the cases
class Cases {
  String newCases;
  int activeCases;
  int criticalCases;
  int recoveredCases;
  int totalCases;

  Cases({
    this.newCases,
    this.activeCases,
    this.criticalCases,
    this.recoveredCases,
    this.totalCases,
  });

  factory Cases.fromJson(Map<String, dynamic> json) {
    return Cases(
      newCases: json["new"],
      activeCases: json["active"],
      criticalCases: json["critical"],
      recoveredCases: json["recovered"],
      totalCases: json["total"],
    );
  }
}

//Data on deaths
class Deaths {
  String newDeaths;
  int totalDeaths;

  Deaths({
    this.newDeaths,
    this.totalDeaths,
  });

  factory Deaths.fromJson(Map<String, dynamic> json) {
    return Deaths(
      newDeaths: json["new"],
      totalDeaths: json["total"],
    );
  }
}

//Data on tests performed
class Tests {
  int totalTests;

  Tests({this.totalTests});

  factory Tests.fromJson(Map<String, dynamic> json) {
    return Tests(
      totalTests: json["total"],
    );
  }
}
