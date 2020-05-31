import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'customisablebuttons.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFE1E3E6),
        body: Container(
          // layout uncomment all of this
//          decoration: BoxDecoration(
//            gradient: LinearGradient(
//
//                colors: [
//                  Color(0xFFFFBC00),
//                  Color(0xFFE1E3E6),
//                ], begin: Alignment.topCenter),
//          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xFFFFBC00),
              Color(0xFFE1E3E6),
            ], begin: Alignment.topCenter),
          ),

          child: Column(
//            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SafeArea(
                  child: Text(
                'JUGADU.IN ',
                style: TextStyle(color: Colors.blueGrey, fontSize: 30),
              )),
              SizedBox(
                height: 20,
              ),
              Text(
                'WELCOMES YOU ',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              Expanded(
                child: Container(
//                  margin: EdgeInsets.only(),
                  child: Center(
                    child: CircleAvatar(
                      child: Image.asset('images/jugadu Logo_Circle.png'),
                      radius: 50,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
//              margin:
//                  EdgeInsets.only(bottom: 10, top: 400, right: 20, left: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 15),
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xFFF1F1F3),
                          ),
                          child: Row(
                            children: <Widget>[
                              Image.asset(
                                'images/icons8-google-64 (2).png',
                                width: 30,
                              ),
                              Expanded(
                                flex: 3,
                                child: SizedBox(
//                          width: 0,
                                    ),
                              ),
                              Expanded(
                                flex: 6,
                                child: Text(
                                  'GMAIL',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
//                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              )
                            ],
                          )),
//              Custombuttons(
//                text: 'GMAIL',
//                colour: Color(0xFFF1F1F3),
//                icon: FontAwesomeIcons.google,
//              ),
                      Custombuttons(
                        text: 'FACEBOOK',
                        colour: Color(0xFF3251A4),
                        icon: FontAwesomeIcons.facebook,
                        iconcolor: Color(0xFFF1F1F3),
                        textcolor: Color(0xFFF1F1F3),
                      ),
                      Custombuttons(
                        text: 'MOBILE',
                        colour: Color(0xFF0D73C0),
                        icon: FontAwesomeIcons.mobileAlt,
                        iconcolor: Color(0xFFF1F1F3),
                        textcolor: Color(0xFFF1F1F3),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
