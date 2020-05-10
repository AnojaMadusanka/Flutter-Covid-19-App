import 'dart:convert';

import 'package:covidapp/models/Country.dart';
import 'package:covidapp/services/Service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart' as http;


class DropDown extends StatefulWidget {

  const DropDown({Key key,}): super(key: key);

  @override
  _DropDownState createState() => _DropDownState();

}

class _DropDownState extends State<DropDown> {

  List<Country> _countries;
  bool _loading;

  @override
  void initState(){
    super.initState();
    _loading = true;
    Service.getCountry().then((countries) {
     setState(() {
      _countries = countries;
      _loading  = false;
     });
    });
     //print(countries);
      print('.................');
      print(_countries);
  }

  //final String data = '[{"id":"1", "country":"Sri Lanka"},{"id":"2", "country":"UK"}]';
  // final String data = getCountry().toString();
  // List<Country> country= [];
   String dropdownValue;
  // String _mySelection ;
  // final String url = "https://api.covid19api.com/summary";
  // List data = List();

  // Future<String> getCountry() async {
  //   var res = await http
  //       .get(Uri.encodeFull(url), headers: {"Accept": "application/json"});
  //   var resBody = json.decode(res.body);

  //   setState(() {
  //     data = resBody.sort();
  //     print(data);
  //     print("..................................................");
  //     print("..................................................");
  //     print("..................................................");
  //     print("..................................................");
  //     print(resBody);
  //   });

  //   print(resBody);

  //   return "Success";
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   this.getCountry();
  // }

  @override
  Widget build(BuildContext context){
    
    // var json = JsonDecoder().convert(data);

    // country = (json).map<Country>((data){
    //   return Country.fromJson(data);
    // }).toList();
    // //country = JsonDecoder().convert(data);

    // dropdownValue = country[0].country;

    return 
      Container(    //Container for the border box and the DropDown
        margin: EdgeInsets.symmetric(horizontal: 20),
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),    //Gap between inside and the BorderBox
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            color: Color(0xFFE5E5E5),
          )
        ),

        // child: Row(     //Dropdown
        //   children: <Widget>[
        //     SvgPicture.asset("assets/icons/maps-and-flags.svg"),
        //     SizedBox(width: 20),    // space between location icon and the Dropdown selected value
        //     Expanded(
        //       child: DropdownButton<String>(
        //         isExpanded: true,     //Expand dropdown mark to right corner
        //         underline: SizedBox(),      //Remove the underline mark in Dropdown
        //         icon: SvgPicture.asset("assets/icons/dropdown.svg"),    //Replace the default Dropdown with this icon 
        //         //value: "Sri Lanka",
        //         value: _mySelection,
        //         items: _countries
        //         // items: ['Sri Lanka', 'India', 'US', 'UK']
        //              .map<DropdownMenuItem<String>>((item) {
        //           return DropdownMenuItem<String>(
        //             value: item['Country'].toString(),
        //             child: Text(item['Country']),
        //           );
        //         }).toList(), 
        //         onChanged: (value) {
        //           setState(() {
        //              _mySelection = value;
        //           });
        //         },
        //       ), 
        //     ),
        //   ],
        // ),

      );
  }
}

// class Country {
//   //String id;
//   String country;

//   Country({this.country});     //Pass positional argument

//   factory Country.fromJson(Map<String, dynamic> json) {   //Map the json object to the Country model
//     return Country(
//       //id: json['id'],
//       country: json['Country']
//     );
//   }
// }

// Future<Country> getCountry() async{
//   final url = "https://api.covid19api.com/countries";
//   final response = await http.get(url);

//   if(response.statusCode ==200) {
//     //String jsonCountry = jsonDecode(response.body); 
//        //convert raw text into the json object of the country
//     return Country.fromJson(jsonDecode(response.body));
//   } else {
//     throw Exception();
//   }  
// }

