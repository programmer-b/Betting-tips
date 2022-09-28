// ignore_for_file: unnecessary_getters_setters

class BTAllTipsModel {
  List<String>? _time;
  List<String>? _flagUrl;
  List<String>? _country;
  List<String>? _sport;
  List<String>? _competitions;
  List<String>? _teams;
  List<String>? _tip;
  List<String>? _odds;
  List<String>? _results;

  BTAllTipsModel(
      {List<String>? time,
      List<String>? flagUrl,
      List<String>? country,
      List<String>? sport,
      List<String>? competitions,
      List<String>? teams,
      List<String>? tip,
      List<String>? odds,
      List<String>? results}) {
    if (time != null) {
      _time = time;
    }
    if (flagUrl != null) {
      _flagUrl = flagUrl;
    }
    if (country != null) {
      _country = country;
    }
    if (sport != null) {
      _sport = sport;
    }
    if (competitions != null) {
      _competitions = competitions;
    }
    if (teams != null) {
      _teams = teams;
    }
    if (tip != null) {
      _tip = tip;
    }
    if (odds != null) {
      _odds = odds;
    }
    if (results != null) {
      _results = results;
    }
  }

  List<String>? get time => _time;
  set time(List<String>? time) => _time = time;
  List<String>? get flagUrl => _flagUrl;
  set flagUrl(List<String>? flagUrl) => _flagUrl = flagUrl;
  List<String>? get country => _country;
  set country(List<String>? country) => _country = country;
  List<String>? get sport => _sport;
  set sport(List<String>? sport) => _sport = sport;
  List<String>? get competitions => _competitions;
  set competitions(List<String>? competitions) => _competitions = competitions;
  List<String>? get teams => _teams;
  set teams(List<String>? teams) => _teams = teams;
  List<String>? get tip => _tip;
  set tip(List<String>? tip) => _tip = tip;
  List<String>? get odds => _odds;
  set odds(List<String>? odds) => _odds = odds;
  List<String>? get results => _results;
  set results(List<String>? results) => _results = results;

  BTAllTipsModel.fromJson(Map<String, dynamic> json) {
    _time = json['time'].cast<String>();
    _flagUrl = json['flag_url'].cast<String>();
    _country = json['country'].cast<String>();
    _sport = json['sport'].cast<String>();
    _competitions = json['competitions'].cast<String>();
    _teams = json['teams'].cast<String>();
    _tip = json['tip'].cast<String>();
    _odds = json['odds'].cast<String>();
    _results = json['results'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['time'] = _time;
    data['flag_url'] = _flagUrl;
    data['country'] = _country;
    data['sport'] = _sport;
    data['competitions'] = _competitions;
    data['teams'] = _teams;
    data['tip'] = _tip;
    data['odds'] = _odds;
    data['results'] = _results;
    return data;
  }
}

List<List<Map<String, String>>> dummy = [
  [
    {
      "date": "",
      "time": "",
      "flag_url": "",
      "country": "",
      "sport": "",
      "competitions": "",
      "teams": "",
      "tip": "",
      "odds": "",
      "results": "",
    },
    {
      "date": "",
      "time": "",
      "flag_url": "",
      "country": "",
      "sport": "",
      "competitions": "",
      "teams": "",
      "tip": "",
      "odds": "",
      "results": "",
    },
    {
      "date": "",
      "time": "",
      "flag_url": "",
      "country": "",
      "sport": "",
      "competitions": "",
      "teams": "",
      "tip": "",
      "odds": "",
      "results": "",
    },
    {
      "date": "",
      "time": "",
      "flag_url": "",
      "country": "",
      "sport": "",
      "competitions": "",
      "teams": "",
      "tip": "",
      "odds": "",
      "results": "",
    },
    {
      "date": "",
      "time": "",
      "flag_url": "",
      "country": "",
      "sport": "",
      "competitions": "",
      "teams": "",
      "tip": "",
      "odds": "",
      "results": "",
    },
    {
      "date": "",
      "time": "",
      "flag_url": "",
      "country": "",
      "sport": "",
      "competitions": "",
      "teams": "",
      "tip": "",
      "odds": "",
      "results": "",
    },
    {
      "date": "",
      "time": "",
      "flag_url": "",
      "country": "",
      "sport": "",
      "competitions": "",
      "teams": "",
      "tip": "",
      "odds": "",
      "results": "",
    },
    {
      "date": "",
      "time": "",
      "flag_url": "",
      "country": "",
      "sport": "",
      "competitions": "",
      "teams": "",
      "tip": "",
      "odds": "",
      "results": "",
    },
    {
      "date": "",
      "time": "",
      "flag_url": "",
      "country": "",
      "sport": "",
      "competitions": "",
      "teams": "",
      "tip": "",
      "odds": "",
      "results": "",
    },
    {
      "date": "",
      "time": "",
      "flag_url": "",
      "country": "",
      "sport": "",
      "competitions": "",
      "teams": "",
      "tip": "",
      "odds": "",
      "results": "",
    },
    {
      "date": "",
      "time": "",
      "flag_url": "",
      "country": "",
      "sport": "",
      "competitions": "",
      "teams": "",
      "tip": "",
      "odds": "",
      "results": "",
    },
    {
      "date": "",
      "time": "",
      "flag_url": "",
      "country": "",
      "sport": "",
      "competitions": "",
      "teams": "",
      "tip": "",
      "odds": "",
      "results": "",
    }
  ],
  [
    {
      "date": "",
      "time": "",
      "flag_url": "",
      "country": "",
      "sport": "",
      "competitions": "",
      "teams": "",
      "tip": "",
      "odds": "",
      "results": "",
    },
    {
      "date": "",
      "time": "",
      "flag_url": "",
      "country": "",
      "sport": "",
      "competitions": "",
      "teams": "",
      "tip": "",
      "odds": "",
      "results": "",
    },
    {
      "date": "",
      "time": "",
      "flag_url": "",
      "country": "",
      "sport": "",
      "competitions": "",
      "teams": "",
      "tip": "",
      "odds": "",
      "results": "",
    },
    {
      "date": "",
      "time": "",
      "flag_url": "",
      "country": "",
      "sport": "",
      "competitions": "",
      "teams": "",
      "tip": "",
      "odds": "",
      "results": "",
    },
    {
      "date": "",
      "time": "",
      "flag_url": "",
      "country": "",
      "sport": "",
      "competitions": "",
      "teams": "",
      "tip": "",
      "odds": "",
      "results": "",
    },
    {
      "date": "",
      "time": "",
      "flag_url": "",
      "country": "",
      "sport": "",
      "competitions": "",
      "teams": "",
      "tip": "",
      "odds": "",
      "results": "",
    },
    {
      "date": "",
      "time": "",
      "flag_url": "",
      "country": "",
      "sport": "",
      "competitions": "",
      "teams": "",
      "tip": "",
      "odds": "",
      "results": "",
    },
    {
      "date": "",
      "time": "",
      "flag_url": "",
      "country": "",
      "sport": "",
      "competitions": "",
      "teams": "",
      "tip": "",
      "odds": "",
      "results": "",
    },
    {
      "date": "",
      "time": "",
      "flag_url": "",
      "country": "",
      "sport": "",
      "competitions": "",
      "teams": "",
      "tip": "",
      "odds": "",
      "results": "",
    },
    {
      "date": "",
      "time": "",
      "flag_url": "",
      "country": "",
      "sport": "",
      "competitions": "",
      "teams": "",
      "tip": "",
      "odds": "",
      "results": "",
    },
    {
      "date": "",
      "time": "",
      "flag_url": "",
      "country": "",
      "sport": "",
      "competitions": "",
      "teams": "",
      "tip": "",
      "odds": "",
      "results": "",
    },
    {
      "date": "",
      "time": "",
      "flag_url": "",
      "country": "",
      "sport": "",
      "competitions": "",
      "teams": "",
      "tip": "",
      "odds": "",
      "results": "",
    }
  ],
  [
    {
      "date": "",
      "time": "",
      "flag_url": "",
      "country": "",
      "sport": "",
      "competitions": "",
      "teams": "",
      "tip": "",
      "odds": "",
      "results": "",
    },
    {
      "date": "",
      "time": "",
      "flag_url": "",
      "country": "",
      "sport": "",
      "competitions": "",
      "teams": "",
      "tip": "",
      "odds": "",
      "results": "",
    },
    {
      "date": "",
      "time": "",
      "flag_url": "",
      "country": "",
      "sport": "",
      "competitions": "",
      "teams": "",
      "tip": "",
      "odds": "",
      "results": "",
    },
    {
      "date": "",
      "time": "",
      "flag_url": "",
      "country": "",
      "sport": "",
      "competitions": "",
      "teams": "",
      "tip": "",
      "odds": "",
      "results": "",
    },
    {
      "date": "",
      "time": "",
      "flag_url": "",
      "country": "",
      "sport": "",
      "competitions": "",
      "teams": "",
      "tip": "",
      "odds": "",
      "results": "",
    },
    {
      "date": "",
      "time": "",
      "flag_url": "",
      "country": "",
      "sport": "",
      "competitions": "",
      "teams": "",
      "tip": "",
      "odds": "",
      "results": "",
    },
    {
      "date": "",
      "time": "",
      "flag_url": "",
      "country": "",
      "sport": "",
      "competitions": "",
      "teams": "",
      "tip": "",
      "odds": "",
      "results": "",
    },
    {
      "date": "",
      "time": "",
      "flag_url": "",
      "country": "",
      "sport": "",
      "competitions": "",
      "teams": "",
      "tip": "",
      "odds": "",
      "results": "",
    },
    {
      "date": "",
      "time": "",
      "flag_url": "",
      "country": "",
      "sport": "",
      "competitions": "",
      "teams": "",
      "tip": "",
      "odds": "",
      "results": "",
    },
    {
      "date": "",
      "time": "",
      "flag_url": "",
      "country": "",
      "sport": "",
      "competitions": "",
      "teams": "",
      "tip": "",
      "odds": "",
      "results": "",
    },
    {
      "date": "",
      "time": "",
      "flag_url": "",
      "country": "",
      "sport": "",
      "competitions": "",
      "teams": "",
      "tip": "",
      "odds": "",
      "results": "",
    },
    {
      "date": "",
      "time": "",
      "flag_url": "",
      "country": "",
      "sport": "",
      "competitions": "",
      "teams": "",
      "tip": "",
      "odds": "",
      "results": "",
    }
  ],
  [
    {
      "date": "",
      "time": "",
      "flag_url": "",
      "country": "",
      "sport": "",
      "competitions": "",
      "teams": "",
      "tip": "",
      "odds": "",
      "results": "",
    },
    {
      "date": "",
      "time": "",
      "flag_url": "",
      "country": "",
      "sport": "",
      "competitions": "",
      "teams": "",
      "tip": "",
      "odds": "",
      "results": "",
    },
    {
      "date": "",
      "time": "",
      "flag_url": "",
      "country": "",
      "sport": "",
      "competitions": "",
      "teams": "",
      "tip": "",
      "odds": "",
      "results": "",
    },
    {
      "date": "",
      "time": "",
      "flag_url": "",
      "country": "",
      "sport": "",
      "competitions": "",
      "teams": "",
      "tip": "",
      "odds": "",
      "results": "",
    },
    {
      "date": "",
      "time": "",
      "flag_url": "",
      "country": "",
      "sport": "",
      "competitions": "",
      "teams": "",
      "tip": "",
      "odds": "",
      "results": "",
    },
    {
      "date": "",
      "time": "",
      "flag_url": "",
      "country": "",
      "sport": "",
      "competitions": "",
      "teams": "",
      "tip": "",
      "odds": "",
      "results": "",
    },
    {
      "date": "",
      "time": "",
      "flag_url": "",
      "country": "",
      "sport": "",
      "competitions": "",
      "teams": "",
      "tip": "",
      "odds": "",
      "results": "",
    },
    {
      "date": "",
      "time": "",
      "flag_url": "",
      "country": "",
      "sport": "",
      "competitions": "",
      "teams": "",
      "tip": "",
      "odds": "",
      "results": "",
    },
    {
      "date": "",
      "time": "",
      "flag_url": "",
      "country": "",
      "sport": "",
      "competitions": "",
      "teams": "",
      "tip": "",
      "odds": "",
      "results": "",
    },
    {
      "date": "",
      "time": "",
      "flag_url": "",
      "country": "",
      "sport": "",
      "competitions": "",
      "teams": "",
      "tip": "",
      "odds": "",
      "results": "",
    },
    {
      "date": "",
      "time": "",
      "flag_url": "",
      "country": "",
      "sport": "",
      "competitions": "",
      "teams": "",
      "tip": "",
      "odds": "",
      "results": "",
    },
    {
      "date": "",
      "time": "",
      "flag_url": "",
      "country": "",
      "sport": "",
      "competitions": "",
      "teams": "",
      "tip": "",
      "odds": "",
      "results": "",
    }
  ],
  [
    {
      "date": "",
      "time": "",
      "flag_url": "",
      "country": "",
      "sport": "",
      "competitions": "",
      "teams": "",
      "tip": "",
      "odds": "",
      "results": "",
    },
    {
      "date": "",
      "time": "",
      "flag_url": "",
      "country": "",
      "sport": "",
      "competitions": "",
      "teams": "",
      "tip": "",
      "odds": "",
      "results": "",
    },
    {
      "date": "",
      "time": "",
      "flag_url": "",
      "country": "",
      "sport": "",
      "competitions": "",
      "teams": "",
      "tip": "",
      "odds": "",
      "results": "",
    },
    {
      "date": "",
      "time": "",
      "flag_url": "",
      "country": "",
      "sport": "",
      "competitions": "",
      "teams": "",
      "tip": "",
      "odds": "",
      "results": "",
    },
    {
      "date": "",
      "time": "",
      "flag_url": "",
      "country": "",
      "sport": "",
      "competitions": "",
      "teams": "",
      "tip": "",
      "odds": "",
      "results": "",
    },
    {
      "date": "",
      "time": "",
      "flag_url": "",
      "country": "",
      "sport": "",
      "competitions": "",
      "teams": "",
      "tip": "",
      "odds": "",
      "results": "",
    },
    {
      "date": "",
      "time": "",
      "flag_url": "",
      "country": "",
      "sport": "",
      "competitions": "",
      "teams": "",
      "tip": "",
      "odds": "",
      "results": "",
    },
    {
      "date": "",
      "time": "",
      "flag_url": "",
      "country": "",
      "sport": "",
      "competitions": "",
      "teams": "",
      "tip": "",
      "odds": "",
      "results": "",
    },
    {
      "date": "",
      "time": "",
      "flag_url": "",
      "country": "",
      "sport": "",
      "competitions": "",
      "teams": "",
      "tip": "",
      "odds": "",
      "results": "",
    },
    {
      "date": "",
      "time": "",
      "flag_url": "",
      "country": "",
      "sport": "",
      "competitions": "",
      "teams": "",
      "tip": "",
      "odds": "",
      "results": "",
    },
    {
      "date": "",
      "time": "",
      "flag_url": "",
      "country": "",
      "sport": "",
      "competitions": "",
      "teams": "",
      "tip": "",
      "odds": "",
      "results": "",
    },
    {
      "date": "",
      "time": "",
      "flag_url": "",
      "country": "",
      "sport": "",
      "competitions": "",
      "teams": "",
      "tip": "",
      "odds": "",
      "results": "",
    }
  ],
];