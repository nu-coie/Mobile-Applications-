import 'package:flutter/material.dart';
import 'quiz_brain.dart';
//////////////  🚨🚨🚨  🚨🚨🚨 🚨🚨🚨 🚨🚨🚨 🚨🚨🚨 🚨🚨🚨 🚨🚨🚨 //////////////////
// Add import For Alert Package
import 'package:rflutter_alert/rflutter_alert.dart';
////////////////////////////////////////////////////////


class Version5 extends StatefulWidget {
  @override
  _Version5State createState() => _Version5State();
}

class _Version5State extends State<Version5> {
  QuizBrain quizBrain = new QuizBrain();

  // List For Icons
  List<Icon> scoreKeper = [];

  void checkAnswer(bool userAswer)
  {


    //////////////  🚨🚨🚨  🚨🚨🚨 🚨🚨🚨 🚨🚨🚨 🚨🚨🚨 🚨🚨🚨 🚨🚨🚨 //////////////////
// -----------------------------------------------------------------------------------
// ALERT: Uncovered Material Ahead
// If no further questions arise regarding this new section, inform the user with an
// alert message.
// Reminder: The alert functionality requires the 'rflutter_alert' package. Please
// ensure it is installed. For package installation, visit:
// 👇
// https://pub.dev/packages/rflutter_alert
// -----------------------------------------------------------------------------------



    //if There is no more Question
    if(quizBrain.checknext() == false ) {
      Alert(context: context,
          title: "Alert",
          desc: "The test is over :) ",
       




      ).show();

      setState(()
      {
        // Reset Question Counter
        quizBrain.resetnumber();
        // Reset Icons List
        scoreKeper = [];
      });


    }
    // Verify if there are any outstanding questions and ensure answers are provided. Once confirmed, display the corresponding icon.

    else
    {
      setState(()
      {
        if (quizBrain.getquestionAnswer() == userAswer) {
          scoreKeper.add(Icon(Icons.check, color: Colors.green,));
        }
        else
        {
          scoreKeper.add(Icon(Icons.close, color: Colors.red,));
        }

        quizBrain.nextQuestion();
      }
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Quiz App"),),
      backgroundColor: Colors.blue[900],
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 5,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Center(
                  child: Text(
                    quizBrain.getquestiontext(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.green
                  ),
                  child: Text(
                    'True',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  onPressed: () {
                    checkAnswer(true);
                  },
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.red
                  ),
                  child: Text(
                    'False',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    checkAnswer(false);
                    //The user picked false.
                  },
                ),
              ),
            ),
            Row(children: scoreKeper,)
          ],
    ),
        ),
      ),);
  }
}