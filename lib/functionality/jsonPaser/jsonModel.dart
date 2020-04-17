//The full data
class CovidData {
  final String country;
  final Cases cases;
  final Deaths deaths;
  final Tests tests;
  final String day;
  final String time;

  CovidData({
    this.country,
    this.cases,
    this.deaths,
    this.tests,
    this.day,
    this.time,
  });

  factory CovidData.fromJson(Map<String, dynamic> json) {
    return CovidData(
        country: json["country"],
        cases: json["cases"],
        deaths: json["deaths"],
        tests: json["tests"],
        day: json["day"],
        time: json["time"]);
  }
}

//Data on just the cases
class Cases {
  final String newCases;
  final String activeCases;
  final String criticalCases;
  final String recoveredCases;
  final String totalCases;

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
  final String newDeaths;
  final String totalDeaths;

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
  final String totalTests;

  Tests({this.totalTests});

  factory Tests.fromJson(Map<String, dynamic> json) {
    return Tests(
      totalTests: json["total"],
    );
  }
}
