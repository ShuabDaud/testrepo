import 'package:flutter/material.dart';

import '../model/quesions.dart';
import 'answer.dart';

class QuesionShow extends StatefulWidget {
  final getQuesion = getQuesions();
  int index = 0;
  double total = 0;

  Color _backgroundColor = Color.fromRGBO(30, 30, 30, 0.9);

  @override
  State<QuesionShow> createState() => _QuesionShowState();
}

class _QuesionShowState extends State<QuesionShow> {
  void _increment() {
    if (widget.index + 1 < widget.getQuesion.length) {
      setState(() {
        widget.index++;
      });
    } else {
      _goAnswerPage();
    }
  }

// got the answer page
  void _goAnswerPage() {
    Navigator.push(context, MaterialPageRoute(builder: (builder) {
      return Answer(
        getTototal: calcualtedResult,
      );
    }));
  }

  //calcalte the total
  void _calculateTototal(int score) {
    setState(() {
      widget.total += score as num;
    });
  }

  double get calcualtedResult {
    return widget.total;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Color.fromRGBO(8, 18, 15, 1),
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 45,
          ),
          Center(
            child: Text(
              "Quesions",
              style: TextStyle(
                color: Colors.white,
                fontFamily: "JotiOne",
                fontSize: 48,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              width: 96,
              child: TextButton(
                child: Text(
                  "Q:${widget.index + 1 > widget.getQuesion.length ? widget.getQuesion.length - 1 : widget.index + 1}/${widget.getQuesion.length}",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "FiraCode",
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                  Color.fromRGBO(148, 18, 56, 1),
                )),
                onPressed: () {},
              ),
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: 380,
                height: 120,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side:
                          BorderSide(color: Color.fromRGBO(148, 18, 56, 0.2))),
                  color: Color.fromRGBO(30, 30, 30, 0.3),
                  shadowColor: Color.fromRGBO(30, 30, 30, 0.3),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Text(
                          widget.getQuesion[widget.index]["quesionText"]
                              .toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "FiraCode",
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.question_mark,
                          color: Color.fromRGBO(148, 18, 56, 1),
                          size: 30,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          ...(widget.getQuesion[widget.index]["answerText"]
                  as List<Map<String, Object>>)
              .map((eachElement) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: SizedBox(
                width: 450,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SizedBox(
                    width: 400,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        _calculateTototal(eachElement["score"] as int);

                        _increment();
                      },
                      child: Text(
                        eachElement["Text"].toString(),
                        style: TextStyle(
                          fontFamily: "FiraMono",
                          fontSize: 20,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(widget._backgroundColor),
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
        ]),
      ),
    ));
  }
}
