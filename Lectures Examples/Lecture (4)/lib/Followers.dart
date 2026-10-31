import 'package:flutter/material.dart';

class Followers extends StatefulWidget {

  Followers(this.name,this.followers);

  String name ;
String followers;
  @override
  State<Followers> createState() => _FollowersState();
}

class _FollowersState extends State<Followers> {
  @override
bool check = true;

  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(

      title: Text(widget.name),
    ),
    body: DefaultTabController(
        length: 3, child: Column(children: [

      TabBar(
          indicatorColor: Colors.black,
          indicatorSize: TabBarIndicatorSize.tab,
          labelColor: Colors.black,
          labelStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),
          tabs: [

        Text(widget.followers+" followers"),
        Text("2 "+"following"),
        Text("Suggestes"),
      ]),

      Expanded(
        child: TabBarView(children: [
          ListView(children: [

            ListTile(leading:
            CircleAvatar(radius: 20,backgroundImage: AssetImage('images/g1.jpg'),
                 ),
            title: Text("name.one"),
              subtitle: Text("Name One"),
              trailing: ElevatedButton(style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),

                  backgroundColor: check?Colors.blue[700]:Colors.grey),onPressed: (){

           setState(() {
             check = !check;
             print(check);
           });

              }, child: Text(check?"Follow":"message" ,style: TextStyle(color: Colors.white,fontSize: 15),)),
            ),




            ListTile(leading:
            CircleAvatar(radius: 20,backgroundImage: AssetImage('images/g2.png'),
            ),
              title: Text("name.two"),
              subtitle: Text("Name Two"),
              trailing: ElevatedButton(style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),

                  backgroundColor: Colors.blue[700]),onPressed: (){


              }, child: Text( "Follow" ,style: TextStyle(color: Colors.white,fontSize: 15),)),
            ),


            ListTile(leading:
            CircleAvatar(radius: 20,backgroundImage: AssetImage('images/g3.jpg'),
            ),
              title: Text("name.three"),
              subtitle: Text("Name Three"),
              trailing: ElevatedButton(style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),

                  backgroundColor: Colors.blue[700]),onPressed: (){}, child: Text("Follow",style: TextStyle(color: Colors.white,fontSize: 15),)),
            ),



            ListTile(leading:
            CircleAvatar(radius: 20,backgroundImage: AssetImage('images/g4.png'),
            ),
              title: Text("name.four"),
              subtitle: Text("Name Four"),
              trailing: ElevatedButton(style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),

                  backgroundColor: Colors.blue[700]),onPressed: (){}, child: Text("Follow",style: TextStyle(color: Colors.white,fontSize: 15),)),
            ),

            ListTile(leading:
            CircleAvatar(radius: 20,backgroundImage: AssetImage('images/g5.jpg'),
            ),
              title: Text("name.five"),
              subtitle: Text("Name Five"),
              trailing: ElevatedButton(style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),

                  backgroundColor: Colors.blue[700]),onPressed: (){}, child: Text("Follow",style: TextStyle(color: Colors.white,fontSize: 15),)),
            ),


            ListTile(leading:
            CircleAvatar(radius: 20,backgroundImage: AssetImage('images/h1.png'),
            ),
              title: Text("name.six"),
              subtitle: Text("Name Six"),
              trailing: ElevatedButton(style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),

                  backgroundColor: Colors.blue[700]),onPressed: (){}, child: Text("Follow",style: TextStyle(color: Colors.white,fontSize: 15),)),
            ),

            ListTile(leading:
            CircleAvatar(radius: 20,backgroundImage: AssetImage('images/h2.jpg'),
            ),
              title: Text("name.seven"),
              subtitle: Text("Name Seven"),
              trailing: ElevatedButton(style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),

                  backgroundColor: Colors.blue[700]),onPressed: (){}, child: Text("Follow",style: TextStyle(color: Colors.white,fontSize: 15),)),
            ),

            ListTile(leading:
            CircleAvatar(radius: 20,backgroundImage: AssetImage('images/h3.jpeg'),
            ),
              title: Text("name.eight"),
              subtitle: Text("Name Eight"),
              trailing: ElevatedButton(style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),

                  backgroundColor: Colors.blue[700]),onPressed: (){}, child: Text("Follow",style: TextStyle(color: Colors.white,fontSize: 15),)),
            ),


            ListTile(leading:
            CircleAvatar(radius: 20,backgroundImage: AssetImage('images/h5.jpg'),
            ),
              title: Text("name.nine"),
              subtitle: Text("Name Nine"),
              trailing: ElevatedButton(style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),

                  backgroundColor: Colors.blue[700]),onPressed: (){}, child: Text("Follow",style: TextStyle(color: Colors.white,fontSize: 15),)),
            ),
          ],),

          ListView(children: [

            ListTile(leading:
            CircleAvatar(radius: 20,backgroundImage: AssetImage('images/profile.jpg'),
            ),
              title: Text("roland.richards"),
              subtitle: Text("Roland Richards"),
              trailing: ElevatedButton(style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),

                  backgroundColor: Colors.blue[700]),onPressed: (){

              }, child: Text("Follow",style: TextStyle(color: Colors.white,fontSize: 15),)),
            ),

            ListTile(leading:
            CircleAvatar(radius: 20,backgroundImage: AssetImage('images/w.png'),
            ),
              title: Text("name.two"),
              subtitle: Text("Name Two"),
              trailing: ElevatedButton(style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),

                  backgroundColor: Colors.blue[700]),onPressed: (){}, child: Text("Follow",style: TextStyle(color: Colors.white,fontSize: 15),)),
            ),

          ],),

          ListView(children: [

              ListTile(leading:
              CircleAvatar(
                radius: 20, backgroundImage: AssetImage(
                  'images/g1.jpg'),
                         ),
                  title: Text("name.one"),
                  subtitle: Text("Name One"),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ElevatedButton(style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),

                          backgroundColor: Colors.grey),
                          onPressed: () {},
                          child: Text("Message", style: TextStyle(
                              color: Colors.white, fontSize: 15),)),

                      SizedBox(width: 8,),

                      PopupMenuButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        icon: Icon(Icons.more_horiz),

                        itemBuilder: (context) =>
                        [
                          PopupMenuItem(
                            value: "unfollow",
                            child: Text("Unfollow"),
                          ),

                          PopupMenuItem(
                            value: "activity",
                            child: Text("See shared activity"),
                          ),

                          PopupMenuItem(
                            value: "mute",
                            child: Text("Mute"),
                          ),
                        ],

                        onSelected: (value) {

                        },
                      )
                    ],)
              ),


            ListTile(leading:
            CircleAvatar(radius: 20, backgroundImage: AssetImage(
                'images/h3.jpeg'),
            ),
                title: Text("name.two"),
                subtitle: Text("Name Two"),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ElevatedButton(style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),

                        backgroundColor: Colors.grey),
                        onPressed: () {},
                        child: Text("Message", style: TextStyle(
                            color: Colors.white, fontSize: 15),)),

                    SizedBox(width: 8,),

                    PopupMenuButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      icon: Icon(Icons.more_horiz),

                      itemBuilder: (context) =>
                      [
                        PopupMenuItem(
                          value: "unfollow",
                          child: Text("Unfollow"),
                        ),

                        PopupMenuItem(
                          value: "activity",
                          child: Text("See shared activity"),
                        ),

                        PopupMenuItem(
                          value: "mute",
                          child: Text("Mute"),
                        ),
                      ],

                      onSelected: (value) {

                      },
                    )
                  ],)
            ),

            if(check)
            ListTile(leading:
            CircleAvatar(radius: 20, backgroundImage: AssetImage(
                'images/h2.jpg'),
            ),
                title: Text("name.three"),
                subtitle: Text("Name Three"),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ElevatedButton(style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),

                        backgroundColor: Colors.grey),
                        onPressed: () {},
                        child: Text("Message", style: TextStyle(
                            color: Colors.white, fontSize: 15),)),

                    SizedBox(width: 8,),

                    PopupMenuButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      icon: Icon(Icons.more_horiz),

                      itemBuilder: (context) =>
                      [
                        PopupMenuItem(
                          value: "unfollow",
                          child: Text("Unfollow"),
                        ),

                        PopupMenuItem(
                          value: "activity",
                          child: Text("See shared activity"),
                        ),

                        PopupMenuItem(
                          value: "mute",
                          child: Text("Mute"),
                        ),
                      ],

                      onSelected: (value) {


                      },
                    )
                  ],)
            ),
          ],)

        ]),
      )


    ],)),



    );
  }
}
