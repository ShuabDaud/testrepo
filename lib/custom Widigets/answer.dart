import 'package:flutter/material.dart';

// importing custom
import '../home.dart';

class Answer extends StatelessWidget {
  final double? getTototal;
  Answer({this.getTototal});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("./assets/images/scorepage.png"),
      )),
      child: SafeArea(
        child: Column(children: [
          SizedBox(
            height: 100,
          ),
          Icon(
            Icons.monitor,
            color: Colors.white,
            size: 100,
          ),
          Center(
            child: SizedBox(
              height: 100,
              width: 350,
              child: Card(
                  color: Color.fromRGBO(143, 18, 56, 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Color.fromRGBO(30, 30, 30, 0.7))),
                  shadowColor: Color.fromRGBO(30, 30, 30, 1),
                  child: Center(
                    child: Text(
                      "Score:${(getTototal! / 100).toStringAsFixed(2)}%",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "JetBrains",
                        fontSize: 40,
                      ),
                    ),
                  )),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: SizedBox(
              height: 100,
              width: 350,
              child: Card(
                  color: Color.fromRGBO(143, 18, 56, 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Color.fromRGBO(30, 30, 30, 0.3))),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          double.parse((getTototal! / 100).toStringAsFixed(2)) >
                                  3.0
                              ? "Passed"
                              : "Failed:",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "JetBrains",
                            fontSize: 40,
                          ),
                        ),
                        Icon(
                          double.parse((getTototal! / 100).toStringAsFixed(2)) <
                                  3.0
                              ? Icons.emoji_emotions_outlined
                              : Icons.emoji_emotions_rounded,
                          color: Colors.yellow,
                          size: 60,
                        )
                      ],
                    ),
                  )),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          SizedBox(
            width: 150,
            height: 100,
            child: Card(
              shadowColor: Color.fromRGBO(30, 30, 30, 1),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                  side: BorderSide(color: Color.fromRGBO(19, 19, 19, 0.298))),
              color: Color.fromRGBO(143, 18, 56, 1),
              child: IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (builder) {
                    return Home();
                  }));
                },
                icon: Icon(
                  Icons.restart_alt,
                  color: Colors.white,
                  size: 50,
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
