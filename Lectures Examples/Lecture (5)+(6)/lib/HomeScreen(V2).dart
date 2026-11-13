import 'package:flutter/material.dart';
import 'package:profile/lecExample.dart';
import 'StoryPage.dart';
import 'Followers.dart';
import 'Basic.dart';

void main() => runApp(MaterialApp(home: ProfileApp()));

class ProfileApp extends StatefulWidget {
  const ProfileApp({super.key});

  @override
  State<ProfileApp> createState() => _ProfileAppState();
}

class _ProfileAppState extends State<ProfileApp> {
  String name = "Roland Richards";
  String followers = "97.5K";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Column(
            spacing: 20,
            children: [
              buildHeader(), // Block 1
              Text(
                name,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "@richards",
                style: TextStyle(color: Colors.grey, fontSize: 19),
              ),

              //Block 2
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildStats(statsNumber: "200", blockTitle: "Posts",nextPage: Followers(name, followers)),
                  SizedBox(
                    height: 60,
                    child: VerticalDivider(color: Colors.white24, thickness: 1),
                  ),


                  buildStats(statsNumber: "97.5K", blockTitle: "Followers",nextPage: Followers(name, followers)),
                  SizedBox(
                    height: 60,
                    child: VerticalDivider(color: Colors.white24, thickness: 1),
                  ),

                  buildStats(statsNumber: "3.25M", blockTitle: "Likes",nextPage: Followers(name, followers)),

                ],
              ),

              buildHighlights(), // Block 3

              buildTabs(),       // Block 5
            ],
          ),
        ],
      ),
    );
  }

  // Block 1
  Stack buildHeader() {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 45),
          child: Image.asset('images/bg.jpg'),
        ),
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.transparent, Colors.black],
                stops: [0.2, 0.9],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.blueGrey.withOpacity(0.35),
                      child: Icon(Icons.arrow_back, color: Colors.white),
                    ),
                    Text(
                      "Profile",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ],
                ),
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.blueGrey.withOpacity(0.35),
                  child: Icon(Icons.menu, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Center(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(pageBuilder: (_, _, _) => Storypage()),
                );
              },
              child: CircleAvatar(
                backgroundColor: Colors.purple,
                radius: 45,
                child: CircleAvatar(
                  radius: 43,
                  backgroundImage: AssetImage('images/profile.jpg'),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }



  // Reusable method for each highlight circle
  Widget _buildHighlight(String image, String title) {
    return Expanded(
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.purpleAccent[700],
            child: CircleAvatar(
              radius: 29,
              backgroundImage: AssetImage(image),
            ),
          ),
          Text(title, style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }

  // Block 3 Profile highlights
  Row buildHighlights() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: Column(
            children: [
              CircleAvatar(
                backgroundColor: Colors.purpleAccent[700],
                radius: 30,
                child: CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.add, color: Colors.black, size: 13),
                ),
              ),
              Text(" ."),
            ],
          ),
        ),
        _buildHighlight('images/h1.png', 'Hangout'),
        _buildHighlight('images/h2.jpg', 'Night'),
        _buildHighlight('images/h3.jpeg', 'Friends'),
        _buildHighlight('images/h4.jpg', 'Travel'),
        _buildHighlight('images/h5.jpg', 'Moments'),
      ],
    );
  }


  Row buildTab(IconData icon, String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: Colors.white),
        Text(title, style: TextStyle(color: Colors.white)),
      ],
    );
  }

  // Reusable method for the Feed images
  ClipRRect _buildFeedImage(String image) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(10),
      child: Image.asset(image, fit: BoxFit.cover),
    );
  }

  // Reusable method for Shorts images and their view counts
  Stack _buildShort(String image, String views) {
    return Stack(
      fit: StackFit.expand,
      alignment: AlignmentGeometry.bottomLeft,
      children: [
        ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(10),
          child: Image.asset(image, fit: BoxFit.cover),
        ),
        Positioned(
          left: 0,
          bottom: 0,
          child: Row(
            children: [
              Icon(Icons.remove_red_eye_outlined, color: Colors.white),
              SizedBox(width: 12),
              Text(views, style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
      ],
    );
  }

  // Block 5: Feeds, Shorts and Tags
  DefaultTabController buildTabs() {

    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          TabBar(
            indicatorColor: Colors.purpleAccent,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              buildTab(Icons.video_call, "Feeds"),
              buildTab(Icons.video_call_outlined, "Shorts"),
              buildTab(Icons.people_alt_outlined, "Tag"),
            ],
          ),
          AspectRatio(
            aspectRatio: 2 / 3,
            child: TabBarView(
              children: [
                GridView.count(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  padding: EdgeInsets.all(3),
                  children: [
                    _buildFeedImage('images/g1.jpg'),
                    _buildFeedImage('images/g2.png'),
                    _buildFeedImage('images/g3.jpg'),
                    _buildFeedImage('images/g4.png'),
                    _buildFeedImage('images/g5.jpg'),
                    _buildFeedImage('images/g6.avif'),
                  ],
                ),
                GridView.count(
                  physics: ClampingScrollPhysics(),
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  crossAxisCount: 3,
                  childAspectRatio: 0.6,
                  padding: EdgeInsets.all(3),
                  children: [
                    _buildShort('images/Story.jpg', '789K'),
                    _buildShort('images/w.png', '889K'),
                    _buildShort('images/g5.jpg', '789K'),
                    _buildShort('images/g3.jpg', '789K'),
                    _buildShort('images/g2.png', '789K'),
                  ],
                ),
                GridView.count(
                  crossAxisCount: 3,
                  padding: EdgeInsets.all(3),
                  children: [
                    Card(color: Colors.purpleAccent),
                    Card(color: Colors.yellow),
                    Card(color: Colors.purple),
                    Card(color: Colors.green),
                    Card(color: Colors.white),
                    Card(color: Colors.brown),
                    Card(color: Colors.blueGrey),
                    Card(color: Colors.blue),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  TextButton buildStats({required String statsNumber,required String blockTitle, required  nextPage}) {
    return TextButton(
      onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>nextPage));

      },
      child: Column(
        children: [
          Text(
            statsNumber,
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            blockTitle,
            style: TextStyle(color: Colors.grey, fontSize: 15),
          ),
        ],
      ),
    );
  }

}
