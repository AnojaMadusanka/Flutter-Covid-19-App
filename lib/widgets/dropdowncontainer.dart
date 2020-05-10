import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'dropdown.dart';

class DropDownContainer extends StatefulWidget {

  const DropDownContainer({Key key,}): super(key: key);

  @override
  _DropDownContainerState createState() => _DropDownContainerState();

}

class _DropDownContainerState extends State<DropDownContainer> {

  @override
  Widget build(BuildContext context) {
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
              child: DropDown()
      );
  }

}