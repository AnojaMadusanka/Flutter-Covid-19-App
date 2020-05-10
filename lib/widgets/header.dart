import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:covidapp/constant.dart';

class Header extends StatefulWidget {
  final String image;

  const Header({    //Constructor for final variables
                Key key,
                this.image,
              })
              : super(key: key);

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClipper(),
      child: Container(
        padding: EdgeInsets.only(
            left: 40,
            top: 50,
            right:20
        ), //padding set for the Container human image and Stay At Home phrase
        height: 350,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xFF3383CD),
              Color(0xFF11249F),
            ],
          ),
          image: DecorationImage(
            image: AssetImage("assets/images/virus.png"),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Align(
              alignment: Alignment.topRight,
              child: SvgPicture.asset("assets/icons/menu.svg"),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Stack(
                children: <Widget>[
                  SvgPicture.asset(
                    widget.image,
                    width: 230,
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter,
                  ),
                  Positioned(
                      top: 20,
                      left: 150,
                      child: Text(
                        "Stay At Home.",
                        style: kHeadingTextStyle.copyWith(
                          color: Colors.white,
                        ),
                      )),
                  Container(), // may not work without container. All the texts are not shown
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(size.width /2, size.height, size.width, size.height - 80);  //quadraticBezierTo(x1, y1, x2, y2)
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
