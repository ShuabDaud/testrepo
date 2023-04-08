import 'package:flutter/material.dart';
import 'package:quizapp/custom%20Widigets/questionshow.dart';

// my imports
import './login.dart';
import '../model/login_register.dart';

class Register extends StatefulWidget {
  final _registerInfo = getRegisterDetails();

  int index = 0;
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("./assets/images/register.png"),
            fit: BoxFit.contain,
          ),
        ),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Card(
                      color: Color.fromRGBO(8, 18, 15, 1),
                      child: Text("Register",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "JotiOne",
                            fontSize: 30,
                          ))),
                  SizedBox(
                    height: 10,
                  ),
                  ...(widget._registerInfo[0]["allData"]
                          as List<Map<String, dynamic>>)
                      .map((EachOne) {
                    return Center(
                        child: SizedBox(
                            width: 380,
                            height: 80,
                            child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: BorderSide(
                                      color: Color.fromRGBO(148, 18, 56, 0.5)),
                                ),
                                color: Color.fromRGBO(30, 30, 30, 0.5),
                                child: Center(
                                    child: SizedBox(
                                        height: 30,
                                        width: 350,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            EachOne["icon"],
                                            SizedBox(
                                              width: 3,
                                            ),
                                            SizedBox(
                                                width: 310,
                                                height: 50,
                                                child: TextField(
                                                    decoration: InputDecoration(
                                                      hintText: EachOne["text"]
                                                          .toString(),
                                                      hintStyle: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 17,
                                                      ),
                                                      border: InputBorder.none,
                                                    ),
                                                    cursorColor: Colors.white,
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 30,
                                                      fontFamily: "FiraCode",
                                                      fontWeight:
                                                          FontWeight.w300,
                                                    ))),
                                          ],
                                        ))))));
                  }),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (builder) {
                            return QuesionShow();
                          }));
                        },
                        child: Text(
                          "SignUp",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "JetBrains",
                            fontSize: 20,
                          ),
                        ),
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Color.fromRGBO(148, 18, 56, 1))),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(
                              Icons.clear,
                              color: Colors.white,
                              size: 20,
                            ),
                            Text(
                              "Clear",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "JetBrains",
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Color.fromRGBO(148, 18, 56, 1))),
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return Login();
                      }));
                    },
                    child: Text(
                      "Already Have Account?Login",
                      style: TextStyle(
                        color: Color.fromRGBO(73, 83, 202, 1),
                        fontFamily: "JetBrainsMono",
                        fontSize: 12,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
