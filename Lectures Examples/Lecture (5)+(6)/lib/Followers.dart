import 'package:flutter/material.dart';
import 'followers_data.dart';

class Followers extends StatefulWidget {
  Followers(this.name, this.followers);
  String name;
  String followers;
  @override
  State<Followers> createState() => _FollowersState();
}

class _FollowersState extends State<Followers> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.name)),
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            TabBar(
              indicatorColor: Colors.black,
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: Colors.black,
              labelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              tabs: [
                Text(widget.followers + " followers"),
                Text("2 " + "following"),
                Text("Suggestes"),
              ],
            ),

            Expanded(
              child: TabBarView(
                children: [
                  ListView.builder(
                      itemCount: users.length,
                      itemBuilder: (context,index){
                        return   ListTile(
                          leading: CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage('images/${users[index]["image"]}'),
                          ),
                          title: Text(users[index]["username"]??"unknown"),
                          subtitle: Text(users[index]["name"]!),
                          trailing: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),

                              backgroundColor:followStates[index]?Colors.blue[700]:Colors.grey,
                            ),
                            onPressed: () {
                              setState(() {
                                followStates[index] = !followStates[index];;
                              });
                            },
                            child: Text(followStates[index]?"Follow":"Message",
                              style: TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                        );

                      }),

                  ListView(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage('images/profile.jpg'),
                        ),
                        title: Text("roland.richards"),
                        subtitle: Text("Roland Richards"),
                        trailing: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),

                            backgroundColor: Colors.blue[700],
                          ),
                          onPressed: () {},
                          child: Text(
                            "Follow",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                      ),

                      ListTile(
                        leading: CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage('images/w.png'),
                        ),
                        title: Text("name.two"),
                        subtitle: Text("Name Two"),
                        trailing: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),

                            backgroundColor: Colors.blue[700],
                          ),
                          onPressed: () {},
                          child: Text(
                            "Follow",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                      ),
                    ],
                  ),

                  ListView.builder(
                    itemCount: users.length,

                    itemBuilder: (context, index) {
                      final user = users[index];

                      return ListTile(
                        leading: CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage(
                            'images/${user["image"]}',
                          ),
                        ),

                        title: Text(user["username"] ?? ""),
                        subtitle: Text(user["name"] ?? ""),

                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                "Message",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ),

                            SizedBox(width: 8),

                            PopupMenuButton<String>(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              icon: Icon(Icons.more_horiz),

                              itemBuilder: (context) => [
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
                                if (value == "unfollow") {
                                  setState(() {
                                    users.removeAt(index);
                                  });
                                }
                              },
                            ),
                          ],
                        ),
                      );
                    },
                  )

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
