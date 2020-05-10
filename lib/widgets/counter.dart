import 'package:covidapp/constant.dart';
import 'package:flutter/material.dart';

class Counter extends StatelessWidget {

  final Color color;
  final int number;
  final String title;


  const Counter({     //Constructor for final fields
          Key key, 
          this.color,
          this.number,
          this.title,
        }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding:
              EdgeInsets.all(6), //padding inside circle with outer circle logo
          height: 25,
          width: 25,
          decoration: BoxDecoration(
            // circle logo inside box
            shape: BoxShape.circle,
            color: color.withOpacity(.26),
            // color: kInfectedColor.withOpacity(.26),
          ),

          child: Container(
            //Small circle inside the big logo circle
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.transparent,
              border: Border.all(
                color: color,
                width: 2,
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        Text("$number",
            style: TextStyle(
              fontSize: 40,
              color: color,
            )),
        Text(title, style: kSubTextStyle),
      ],
    );
  }
}
