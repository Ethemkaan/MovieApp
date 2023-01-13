import 'dart:convert';

import 'package:http/http.dart' as http;

class FilmService {
  Future<String?> findFilmId(String promptedFilmName) async {
    final String url =
        "https://online-movie-database.p.rapidapi.com/title/find?q=${promptedFilmName}";
    var res = await http.get(Uri.parse(url), headers: {
      'X-RapidAPI-Key': '7513cb2285mshb19348aa76dba2cp11be8bjsn70cf26e8521f',
      'X-RapidAPI-Host': 'online-movie-database.p.rapidapi.com'
    });
    if (res.statusCode == 200) {
      return (jsonDecode(res.body)['results'][0]["id"].split("/")[2]);
    } else {
      print("Error on server => ${res.statusCode}");
      return "tt0133093";
    }
  }

  Future<Map<String, Object>?> findFilmInfo(String promptedFilmName) async {
    var filmId = await findFilmId(promptedFilmName);
    var filmName = "Film not found";
    var filmRating = 0.0;
    var filmImageUrl = "https://i.ytimg.com/vi/6kCSVT3r_Qg/hqdefault.jpg";
    var filmPlot = "Film not found";
    final String url =
        "https://online-movie-database.p.rapidapi.com/title/get-overview-details?tconst=${filmId}";
    var res = await http.get(Uri.parse(url), headers: {
      'X-RapidAPI-Key': '7513cb2285mshb19348aa76dba2cp11be8bjsn70cf26e8521f',
      'X-RapidAPI-Host': 'online-movie-database.p.rapidapi.com'
    });
    if (res.statusCode == 200) {
      var decodedJson = jsonDecode(res.body);
      if (decodedJson['title']['title'] != null &&
          decodedJson['ratings']['rating'] != null &&
          decodedJson['title']['image']['url'] != null &&
          decodedJson['plotSummary']['text'] != null) {
        filmName = decodedJson['title']['title'];
        filmRating = decodedJson['ratings']['rating'];
        filmImageUrl = decodedJson['title']['image']['url'];
        filmPlot = decodedJson['plotSummary']['text'];
      }
      var filmInfo = {
        'filmName': filmName,
        'filmRating': filmRating,
        'filmImageUrl': filmImageUrl,
        'filmPlot': filmPlot
      };
      return (filmInfo);
    } else {
      print("Error on server => ${res.statusCode}");
      return null;
    }
  }
}
