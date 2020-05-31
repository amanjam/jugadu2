import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Custombuttons extends StatelessWidget {
  Custombuttons(
      {this.text,
      this.colour,
      this.icon,
      this.iconcolor,
      this.textcolor,
      this.assetimage});
  final String text, assetimage;
  final Color colour;
  final IconData icon;
  final Color iconcolor;
  final Color textcolor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: colour,
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Icon(
              icon,
              color: iconcolor,
            ),
          ),
          Expanded(
            flex: 3,
            child: SizedBox(
//              width: 20,
                ),
          ),
          Expanded(
            flex: 6,
            child: Text(
              text,
              style: TextStyle(
                fontFamily: 'Roboto',
//                fontStyle: FontStyle.italic,
                color: textcolor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
