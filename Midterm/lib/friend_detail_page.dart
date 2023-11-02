//Roll No 2021-CS-197
//Name: Aftab Ahmad
import 'package:flutter/material.dart';

class FriendDetailPage extends StatelessWidget {
  final String name;
  final int followers;
  final int following;
  final String profileImage;

  FriendDetailPage({
    required this.name,
    required this.followers,
    required this.following,
    required this.profileImage,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of sections (Portfolio, Skills, Articles)
      child: Scaffold(
        appBar: AppBar(
          title: Text('Friend Details'),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.blue, Colors.teal],
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(profileImage),
                        radius: 80,
                      ),
                      SizedBox(height: 20),
                      Text(
                        name,
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Followers: $followers',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Following: $following',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Divider(
                        color: Colors.black,
                        thickness: 2,
                      ),
                      SizedBox(height: 20),
                      Text(
                        'About Me',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Hey. I am Aftab Ahmad and this is my first Flutter project in which I am developing the app for my midterm.',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ],
                  ),
                ),
                TabBar(
                  tabs: [
                    Tab(text: 'Portfolio'),
                    Tab(text: 'Skills'),
                    Tab(text: 'Articles'),
                  ],
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
