import 'package:http/http.dart' as http;
import 'package:html/parser.dart' as parser;
import 'package:html/dom.dart' as dom;

class Webscrape {
  var infectedToday;
  //String infectedToday = '';
  var recovered;
  var deathsToday;
  var infectedYesterday;
  var recoveredYesterday;
  var deathsYesterday;
  scrapeInfectionsToday() async {
    var url = 'https://www.worldometers.info/coronavirus/country/saudi-arabia/';
    var response = await http.get(url);
    dom.Document document = parser.parse(response.body);
    final mainclass = document.getElementsByClassName('news_post');
    //var infectedFull = mainclass[0].getElementsByTagName('strong')[0].innerHtml;
    //infectedToday = infectedFull.substring(0, 3); //4
    infectedToday = mainclass[0].getElementsByTagName('strong')[0].innerHtml;
    print(infectedToday);
    //print(infectedToday);
    //print(infectedToday.runtimeType);
  }

  scrapeInfectionsYesterday() async {
    var url = 'https://www.worldometers.info/coronavirus/country/saudi-arabia/';
    var response = await http.get(url);
    dom.Document document = parser.parse(response.body);
    final mainclass = document.getElementsByClassName('news_post');
    var infectedFullYesterday =
        mainclass[1].getElementsByTagName('strong')[0].innerHtml;
    infectedYesterday = infectedFullYesterday.substring(0, 3);
    return infectedYesterday as String;
  }

  scrapeRecovered() async {
    var url = 'https://www.worldometers.info/coronavirus/country/saudi-arabia/';
    var response = await http.get(url);
    dom.Document document = parser.parse(response.body);
    final mainclassRecover = document.getElementsByClassName('maincounter-number');
    recovered = mainclassRecover[2].getElementsByTagName('span')[0].innerHtml;
    print(recovered);
  }

  scrapeDeaths() async {
    var url = 'https://www.worldometers.info/coronavirus/country/saudi-arabia/';
    var response = await http.get(url);
    dom.Document document = parser.parse(response.body);
    final mainclass = document.getElementsByClassName('news_post');
    var deathsFull = mainclass[0].getElementsByTagName('strong')[1].innerHtml;
    deathsToday = deathsFull.substring(0, 2);
    print(deathsToday);
    var deathsFullYesterday =
        mainclass[1].getElementsByTagName('strong')[1].innerHtml;
    deathsYesterday = deathsFullYesterday.substring(0, 2);
    print(deathsYesterday);
  }

  calculatePercentage(String today, String yesterday) {
    var percent = double.parse(today) - double.parse(yesterday);
    percent = (percent / double.parse(yesterday)) * 100;
    return percent;
  }

  calculatePercentageDeaths() {}
}

//create init state in home class so that it keep doing it all the time
