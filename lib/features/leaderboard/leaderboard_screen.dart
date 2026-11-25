import 'package:flutter/material.dart';
import 'package:quizbit/widgets/leaderRow.dart';

class LeaderboardScreen extends StatefulWidget {
  const LeaderboardScreen({super.key});

  @override
  State<LeaderboardScreen> createState() => _LeaderboardScreenState();
}

class _LeaderboardScreenState extends State<LeaderboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Leaderboard")),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "Global",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "Local",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    "Friends",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                height: 220,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      left: 0,
                      bottom: 0,
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              CircleAvatar(
                                radius: 40,
                                backgroundColor: Colors.grey,
                                child: Icon(Icons.person, size: 40),
                              ),
                              Positioned(
                                top: 0,
                                right: 0,
                                child: Container(
                                  padding: EdgeInsets.all(6),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                  ),
                                  child: Text("#2"),
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 8),
                          Text(
                            "Kh. Shakil",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "BDT. 1,33,200",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Tech Master",
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 0,
                      // left: 0,
                      // right: 0,
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              CircleAvatar(
                                radius: 40,
                                backgroundColor: Colors.grey,
                                child: Icon(Icons.person, size: 40),
                              ),
                              Positioned(
                                top: 0,
                                right: 0,
                                child: Container(
                                  padding: EdgeInsets.all(6),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                  ),
                                  child: Text("#1"),
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 8),
                          Text(
                            "Kh. Shakil",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "BDT. 1,33,200",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Tech Master",
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              CircleAvatar(
                                radius: 40,
                                backgroundColor: Colors.grey,
                                child: Icon(Icons.person, size: 40),
                              ),
                              Positioned(
                                top: 0,
                                right: 0,
                                child: Container(
                                  padding: EdgeInsets.all(6),
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                  ),
                                  child: Text("#3"),
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 8),
                          Text(
                            "Kh. Shakil",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "BDT. 1,33,200",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Tech Master",
                            style: TextStyle(fontStyle: FontStyle.italic),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 30),

            Expanded(
              child: ListView(
                children: [
                  leaderRow(
                    profileUrl: "https://i.pravatar.cc/150?img=1",
                    rank: "43",
                    name: "Shakil",
                    amount: "BDT 98,435",
                    title: "Sawage Coder",
                    highlighted: true,
                  ),
                  leaderRow(
                    profileUrl: "https://i.pravatar.cc/150?img=2",
                    rank: "5",
                    name: "Kh",
                    amount: "BDT 80,435",
                    title: "Sawage Coder",
                  ),
                  leaderRow(
                    profileUrl: "https://i.pravatar.cc/150?img=2",
                    rank: "5",
                    name: "Kh",
                    amount: "BDT 80,435",
                    title: "Sawage Coder",
                  ),
                  leaderRow(
                    profileUrl: "https://i.pravatar.cc/150?img=2",
                    rank: "5",
                    name: "Kh",
                    amount: "BDT 80,435",
                    title: "Sawage Coder",
                  ),
                  leaderRow(
                    profileUrl: "https://i.pravatar.cc/150?img=7",
                    rank: "6",
                    name: "@Shakil",
                    amount: "BDT 50,000",
                    title: "Sawage Coder",
                  ),
                  leaderRow(
                    profileUrl: "https://i.pravatar.cc/150?img=7",
                    rank: "6",
                    name: "@Shakil",
                    amount: "BDT 50,000",
                    title: "Sawage Coder",
                  ),
                  leaderRow(
                    profileUrl: "https://i.pravatar.cc/150?img=7",
                    rank: "6",
                    name: "@Shakil",
                    amount: "BDT 50,000",
                    title: "Sawage Coder",
                  ),
                  leaderRow(
                    profileUrl: "https://i.pravatar.cc/150?img=7",
                    rank: "6",
                    name: "@Shakil",
                    amount: "BDT 50,000",
                    title: "Sawage Coder",
                  ),
                  leaderRow(
                    profileUrl: "https://i.pravatar.cc/150?img=7",
                    rank: "6",
                    name: "@Shakil",
                    amount: "BDT 50,000",
                    title: "Sawage Coder",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
