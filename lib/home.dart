import 'package:flutter/material.dart';

// my imports
import './custom Widigets/login.dart';

// import
import './custom Widigets/questionshow.dart';

class Home extends StatelessWidget {
  final font = "JetBrains";
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(46)),
        image: DecorationImage(
          image: AssetImage("./assets/images/home.png"),
          fit: BoxFit.contain,
        ),
      ),
      child: Center(
        child: Column(children: [
          SizedBox(
            height: 600,
          ),
          SizedBox(
            width: 190,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Login();
                }));
              },
              child: Text(
                "GetStarted",
                style: TextStyle(
                  fontFamily: font,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                Color.fromRGBO(143, 18, 56, 1),
              )),
            ),
          ),
          Card(
            color: Color.fromRGBO(8, 18, 15, 1),
            child: Text(
              "All Rights Reserved:@abdifitah.seaph",
              style: TextStyle(
                fontFamily: "",
                color: Color.fromRGBO(255, 255, 255, 0.3),
                fontSize: 14,
              ),
            ),
          ),
          Card(
            color: Color.fromRGBO(8, 18, 15, 1),
            child: Text(
              "V:1.0.0",
              style: TextStyle(
                fontFamily: "",
                color: Color.fromRGBO(255, 255, 255, 0.3),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
