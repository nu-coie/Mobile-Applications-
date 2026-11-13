 import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'question.dart';

class Version4 extends StatefulWidget {
  const Version4({Key? key}) : super(key: key);

  @override
  _Version4State createState() => _Version4State();
}

class _Version4State extends State<Version4> {
  @override
  List<Icon> score =
  [Icon(Icons.check,color: Colors.green,),
    Icon(Icons.close,color: Colors.red,)
  ];

  /*

 List<String> question = [
    'The black box in a plane is black',
    'Marrakesh is the capital of Morocco',
    'An octopus has three hearts'
  ];

  List<bool> Answers = [false,false,true];

  */


  List<Question> Brain = [

    Question(q: 'The black box in a plane is black',a: false),
    Question(q: 'Marrakesh is the capital of Morocco',a: false),
    Question(q: 'An octopus has three hearts',a: true)

  ];
  int questionCounter = 0;
  Widget build(BuildContext context) {


    return MaterialApp(home: Scaffold(
      backgroundColor: Color(0xFF17145E),
      appBar: AppBar(title:Text('Quiz')),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Center(child: Center(
                    child: Text(Brain[questionCounter].questioeText

                      ,style: TextStyle(color: Colors.white,fontSize: 25),),
                  )),
                )),
            Expanded(child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.green,),

                onPressed: (){

                  setState(() {
                    questionCounter++;

                  });
                  if (Brain[questionCounter].questionAnswer == true)
                    score.add(Icon(Icons.check,color: Colors.green,));
                  else
                    score.add(Icon(Icons.close,color: Colors.red,));


                },child: Center(child: Text('True',style: TextStyle(color: Colors.white,fontSize: 26),)),),
            )),
            Expanded(

                child: Padding(

                  padding: const EdgeInsets.all(15.0),
                  child: TextButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.red,),

                    onPressed: (){
                      setState(() {
                        questionCounter++;

                      });
                      if (Brain[questionCounter].questionAnswer == false)
                        score.add(Icon(Icons.close,color: Colors.red,));
                      else
                        score.add(Icon(Icons.check,color: Colors.green,));
                    },child: Center(child: Text('False',style: TextStyle(color: Colors.white,fontSize: 26),)),),
                )),


            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(children: score,),
            )

          ],
        ),
      ),
    ),);
  }
}
/*
Question ( 1 ) :  The black box in a plane is black, False
Question ( 2 ) :  Marrakesh is the capital of Morocco, False
Question ( 3 ) :  An octopus has three hearts , True



 */