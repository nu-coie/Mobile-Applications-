import 'package:flutter/material.dart';

class Storypage extends StatefulWidget {
  const Storypage({super.key});

  @override
  State<Storypage> createState() => _StorypageState();
}

class _StorypageState extends State<Storypage> {
  @override

  bool isClicked = true;
  Widget build(BuildContext context) {
    return GestureDetector(
        onVerticalDragEnd: (details) {
          if (details.primaryVelocity! > 300) {

            Navigator.pop(context);
          }
        },
        child:

      Scaffold(
backgroundColor: Colors.black,
          body: SafeArea(
            child: Column(
              children: [
                Expanded(
                  child: Stack(
                    fit: StackFit.expand,
                      children: [
                        Image.asset(
                       'images/Story.jpg',
                       fit: BoxFit.cover,
                     ),

                      Positioned(
                          top: 0,
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Row(children: [
     CircleAvatar(radius: 20,backgroundImage: AssetImage('images/profile.jpg'),),SizedBox(width: 10,),Text("Roland Richards",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),),
                            SizedBox(width: 10,),Text("10 h",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w100),),

                            ],),
                          ),
                      )
                    ],
                  ),
                ),

                Row(children: [
                  Expanded(
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Send Message",
                        hintStyle: TextStyle(color: Colors.white70),

                        filled: true,
                        fillColor: Colors.white.withOpacity(0.12),

                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 16,
                        ),

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35),
                          borderSide: BorderSide(color: Colors.white24),
                        ),

                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35),
                          borderSide: BorderSide(color: Colors.white24),
                        ),

                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35),
                          borderSide: BorderSide(color: Colors.white54),
                        ),
                      ),
                    )
                  ),

                  IconButton(onPressed: (){
setState(() {
  isClicked = !isClicked;
});

                  }, icon: Icon(Icons.heart_broken,size: 30,color: isClicked?Colors.white:Colors.red,)),

                  Icon(Icons.messenger,size: 30,color: Colors.white,),
                  Icon(Icons.send_sharp,size: 30,color: Colors.white,)

                ],)
              ],
            ),
          ),
    ));


  }
}
