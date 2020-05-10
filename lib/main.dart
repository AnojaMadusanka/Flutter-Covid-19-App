import 'package:covidapp/constant.dart';
import 'package:covidapp/widgets/counter.dart';
import 'package:covidapp/widgets/dropdown.dart';
import 'package:covidapp/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'services/Service.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Covid 19',
      theme: ThemeData(
        scaffoldBackgroundColor: KBackgroundColor,
        fontFamily: "Poppins",
        textTheme: TextTheme(
          body1: TextStyle(color: kBodyTextColor),
        ),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Header(
              image: "assets/icons/Drcorona.svg",
            ),

            DropDown(),
            // ClipPath(
            //   clipper: MyClipper(),

            //   child: Container(      //Header Container (Blue Area)
            //       padding: EdgeInsets.only(left:40, top: 50, right: 20),
            //       height: 350,
            //       width: double.infinity,
            //       decoration: BoxDecoration(
            //         gradient: LinearGradient(
            //             begin: Alignment.topRight, //Gradient begins from
            //             end: Alignment.bottomLeft, //Gradient ends from
            //             colors: [Color(0xFF3383CD), Color(0xFF11249F)]),
            //         image: DecorationImage(
            //             image: AssetImage("assets/images/virus.png")),
            //       ),

            //       child: Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: <Widget>[
            //           Align(
            //             alignment: Alignment.topRight,
            //             child: SvgPicture.asset("assets/icons/menu.svg"),
            //           ),

            //           SizedBox(height: 20),
            //           Expanded(
            //             child: Stack(
            //               children: <Widget>[
            //                 SvgPicture.asset(
            //                   "assets/icons/Drcorona.svg",
            //                   width: 230,
            //                   fit: BoxFit.fitWidth,
            //                   alignment: Alignment.topCenter,
            //                 ),
            //                 Positioned(     // Stay at home text positioning
            //                   top: 20,
            //                   left: 150,
            //                   child: Text(
            //                     "Stay at home.",
            //                     style: kHeadingTextStyle.copyWith(
            //                       color: Colors.white,
            //                     ),
            //                   ),
            //                 ),
            //                 Container(),    //Need to add this to show the full word phrase in Stay at home
            //               ],
            //             )
            //           ),


            //         ],
            //       ),

            //     ),
              
            // ),

            // Container(    //Container for the border box and the DropDown
            //   margin: EdgeInsets.symmetric(horizontal: 20),
            //   padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),    //Gap between inside and the BorderBox
            //   height: 60,
            //   width: double.infinity,
            //   decoration: BoxDecoration(
            //     color: Colors.white,
            //     borderRadius: BorderRadius.circular(25),
            //     border: Border.all(
            //       color: Color(0xFFE5E5E5),
            //     )
            //   ),

            //   child: Row(     //Dropdown
            //     children: <Widget>[
            //       SvgPicture.asset("assets/icons/maps-and-flags.svg"),
            //       SizedBox(width: 20),    // space between location icon and the Dropdown selected value
            //       Expanded(
            //         child: DropdownButton(
            //           isExpanded: true,     //Expand dropdown mark to right corner
            //           underline: SizedBox(),      //Remove the underline mark in Dropdown
            //           icon: SvgPicture.asset("assets/icons/dropdown.svg"),    //Replace the default Dropdown with this icon 
            //           value: "Sri Lanka",
            //           items: ['Sri Lanka', 'India', 'US', 'UK']
            //               .map<DropdownMenuItem<String>>((String value) {
            //             return DropdownMenuItem<String>(
            //               value: value,
            //               child: Text(value),
            //             );
            //           }).toList(), 
            //           onChanged: (value) {},
            //         ), 
            //       ),
            //     ],
            //   ),

            // ),

            SizedBox(height: 20),
            Padding(      // Case update text and other texts
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Case Update\n",
                              style: kTitleTextStyle,
                            ),
                            TextSpan(
                              text: "Newest update March 28",
                              style: TextStyle(
                                color: kTextLightColor,
                              ),
                            ),
                          ],
                        ),
                      
                      ),
                      Spacer(),   //Space between Case Update and the See details
                      Text(
                        "See details", 
                        style:TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 20),   //Box Decoration
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 5),
                          blurRadius: 30,
                          color: kShadowColor,
                        ),
                      ],
                    ),
                    
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Counter(
                          color: kInfectedColor,
                          number: 709,
                          title: "Infected",
                        ),
                        Counter(
                          color: kDeathColor,
                          number: 7,
                          title: "Death",
                        ),
                        Counter(
                          color: kRecovercolor,
                          number: 180,
                          title: "Recovered",
                        ),
                        // Column(
                        //   children: <Widget>[
                        //     Container(
                        //       padding: EdgeInsets.all(6),
                        //       height: 25,
                        //       width: 25,
                        //       decoration: BoxDecoration(
                        //         shape: BoxShape.circle,
                        //         color: kInfectedColor.withOpacity(.26)
                        //       ),
                        //       child: Container(
                        //         decoration: BoxDecoration(
                        //           shape: BoxShape.circle,
                        //           color: Colors.transparent,
                        //           border: Border.all(
                        //             color: kInfectedColor,
                        //             width: 2,
                        //           ),  
                        //         ),
                        //       ),
                        //     ),
                        //     SizedBox(height: 10),
                        //     Text(
                        //       "709",
                        //       style: TextStyle(
                        //         fontSize: 40,
                        //         color: kInfectedColor,
                        //       ),
                        //     ),
                        //   ],
                        // ),
                      ],
                    ),
                  
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Spread of Virus",
                        style: kTitleTextStyle,
                      ),
                      //Spacer(),
                      Text(
                        "See details",
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),

                  Container(
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.all(20),
                    height: 170,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 30,
                          color: kShadowColor,
                        ),
                      ],
                    ),
                    child: Image.asset(
                      "assets/images/map.png",
                      fit: BoxFit.contain,
                    ),
                  ),

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}

// class MyClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     var path = Path();
//     path.lineTo(0, size.height - 80);
//     path.quadraticBezierTo(
//       size.width / 2, size.height, size.width, size.height - 80);
//     path.lineTo(size.width, 0);
//     path.close();
//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) {
//     return false;
//   }
// }
