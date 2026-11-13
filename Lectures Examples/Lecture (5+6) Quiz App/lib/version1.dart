import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



class Version1 extends StatefulWidget {
  const Version1({Key? key}) : super(key: key);

  @override
  _Version1State createState() => _Version1State();
}

class _Version1State extends State<Version1> {
  @override
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
                  child: Center(child: Text('Put Your Question Here',style: TextStyle(color: Colors.white,fontSize: 25),)),
                )),
            Expanded(child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.green,),

                onPressed: (){},child: Center(child: Text('True',style: TextStyle(color: Colors.white,fontSize: 26),)),),
            )),
            Expanded(

                child: Padding(

                  padding: const EdgeInsets.all(15.0),
                  child: TextButton(
                    style: TextButton.styleFrom(backgroundColor: Colors.red,),

                    onPressed: (){},child: Center(child: Text('False',style: TextStyle(color: Colors.white,fontSize: 26),)),),
                )),


            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(children: [Icon(Icons.radio)],),
            )

          ],
        ),
      ),
    ),);
  }
}