import 'package:flutter/material.dart';
import 'package:flutter_application_day7/screens/result_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  TextEditingController gradeController = TextEditingController();
  String result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          "Grades",
          style: TextStyle(
            fontSize: 32,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(18),
            child: TextField(
              controller: gradeController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Type your grade",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
            ),
            child: Text(
              "Calcualte",
              style: TextStyle(
                fontSize: 32,
                color: Colors.white,
              ),
            ),
            onPressed: () {
              double myGrade = double.parse(gradeController.text);

              if (myGrade >= 90) {
                result = "A";
              } else if (myGrade >= 80) {
                result = "B";
              } else if (myGrade >= 70) {
                result = "C";
              } else if (myGrade >= 60) {
                result = "D";
              } else {
                result = "F";
              }

              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ResultScreen(
                          result: result,
                        )),
              );
            },
          ),
          Container(
            margin: EdgeInsets.only(top: 100),
            color: Colors.red.withOpacity(0.5),
            child: Text(
              result,
              style: TextStyle(
                fontSize: 70,
                color: Colors.red,
              ),
            ),
          )
        ],
      ),
    );
  }
}
