import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              children: [
                //Block 1
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.settings),
                    ),

                    Stack(
                      alignment: AlignmentGeometry.centerLeft,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.white,
                            child: Icon(Icons.add_alert),
                          ),
                        ),

                        Positioned(
                          child: CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.red[400],
                            child: Text(
                              "3",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                //Block 2
                CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage('images/profile.png'),
                ),

                Text(
                  "Friedrich Beren",
                  style: TextStyle(
                    fontFamily: 'Play',
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Text("@friedrich_beren"),
                ),

                //Block 3
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Card(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Column(
                            children: [
                              Text(
                                "28K",
                                style: TextStyle(fontSize: 16,fontWeight: FontWeight.w900),
                              ),

                              Text("Followers")
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Column(
                            children: [
                              Text(
                                "28K",
                                style: TextStyle(fontSize: 16,fontWeight: FontWeight.w900),
                              ),

                              Text("Followers")
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Column(
                            children: [
                              Text(
                                "28K",
                                style: TextStyle(fontSize: 16,fontWeight: FontWeight.w900),
                              ),

                              Text("Followers")
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Column(
                            children: [
                              Text(
                                "28K",
                                style: TextStyle(fontSize: 16,fontWeight: FontWeight.w900),
                              ),

                              Text("Followers")
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                //Block 4
SizedBox(height: 20,),
                Row(
                   children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.grey[850]),
                      onPressed: (){}, child: Text("Update",style: TextStyle(color: Colors.white),))
                  ,Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 10),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
                        onPressed: (){}, child: Text("Update",style: TextStyle(color: Colors.white),)),
                  )
                 , ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
                      onPressed: (){}, child: Text("Update",style: TextStyle(color: Colors.white),))

                ],),

                //Block 5

                Card(color: Colors.green[100],

                child: AspectRatio(aspectRatio: 2.2,child:
                  Column(children: [

                    ListTile(title: Text("Added new post to"),
                    subtitle: Text("Technology and data"),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [Text("15min ago"),CircleAvatar(radius: 20,backgroundColor: Colors.white,)],),
                    ),

                    Padding(padding: EdgeInsets.only(right: 16,left: 16,bottom: 16),
                      child: Row(

                        children: [

                          ClipRRect(
                            child: Image.asset('images/cpu.jpg',
                              width: 75,
                              height: 75,
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(7),
                          ),

                          Expanded(child: Card(color: Colors.white,
                            child: Padding(padding: EdgeInsets.all(10),
                              child: Text("Video Recommendations at Joyn:\nTwo Tower or Not to Tower, That Was Never..."),
                            ),),)
                        ],
                      ),
                    )
                  ],)
                  ,),
                ),

                Expanded(
                  child: GridView.count(crossAxisCount: 4,

                  children: [



                    Card(color: Colors.red,),
                    Card(color: Colors.yellow,),
                    Card(color: Colors.green,),

                    Card(color: Colors.red,),
                    Card(color: Colors.yellow,),
                    Card(color: Colors.green,),
                  ],

                  ),
                )
                
                



              ],
            ),
          ),
        ),
      ),
    ),
  );
}
