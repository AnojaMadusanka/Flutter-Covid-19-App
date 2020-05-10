import 'package:http/http.dart' as http;
import 'package:covidapp/models/Country.dart';

class Service {

  static const String url = 'https://api.covid19api.com/summary';

  //method to get countries
  static Future<List<Country>> getCountry() async {
    try {
      final response = await http.get(url);
      if(200 == response.statusCode) {
        final List<Country> countries = countryFromJson(response.body) as List<Country>;
        return countries;
      }else {
        return List<Country>();     //pass empty list of countries
      }
    }catch(e){
      return List<Country>();     //pass empty list of countries
    }
  }

}