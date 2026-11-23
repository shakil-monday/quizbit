import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:quizbit/widgets/custom_slidershow.dart';
import 'package:quizbit/widgets/quiz_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "QuizBit".toUpperCase(),
          style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomSlideshow(
              img_urls: [
                "http://images.seeklogo.com/logo-png/34/1/flutter-logo-png_seeklogo-349577.png",
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8ZsGUVMvZSNsxh7vvUY3_aPkuVgsPrUC_BnahnctmF4f1Y0JZBUxnw29_&s=10",
                "http://s3.ap-south-1.amazonaws.com/stage.radixweb.com/what_is_flutter_716ae56937.jpg",
              ],
            ),
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "This Week SuperStar ⭐️",
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                          "https://i.pravatar.cc/150?img=1",
                        ),
                      ),
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                          "https://i.pravatar.cc/150?img=5",
                        ),
                      ),
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                          "https://i.pravatar.cc/150?img=12",
                        ),
                      ),
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage(
                          "https://i.pravatar.cc/150?img=32",
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Weekly Dhamaka 🔥",
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "More",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    height: 270,
                    child: ListView.separated(
                      itemCount: 15,
                      separatorBuilder: (context, index) {
                        return SizedBox(width: 10);
                      },
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return QuizeItem(
                          title: "Dhaka",
                          coverImgUrl: "https://images.unsplash.com/photo-1506744038136-46273834b3fb?w=700&h=700&fit=crop",
                          entryFees: 4000,
                          playCount: 4000,
                          prizeMoney: 12000,
                          level: 3,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Lastest Quiz ⚡️",
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "More",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 8,
                    child: Container(
                      width: double.infinity,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://images.unsplash.com/photo-1768147765107-5eef8e032a62?w=1920&h=1080&fit=crop&q=80",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),

                      child: Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.black38,
                            ),
                          ),
                          Positioned(
                            top: 40,
                            bottom: 40,
                            left: 10,
                            right: 10,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Text(
                                    "Bangladesh's Heaven Sajek",
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 11),
                                ElevatedButton(
                                  onPressed: () {
                                    print("Cliked on latest Quiz button");
                                  },
                                  child: Text("PLAY"),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Mostly Played ❤️",
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "More",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    height: 270,
                    child: ListView.separated(
                      itemCount: 15,
                      separatorBuilder: (context, index) {
                        return SizedBox(width: 10);
                      },
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return QuizeItem(
                          title: "The Geek Coder",
                          coverImgUrl: "https://images.unsplash.com/photo-1618477388954-7852f32655ec?w=1080&h=1920&fit=crop&q=80",
                          entryFees: 3500,
                          playCount: 3500,
                          prizeMoney: 30000,
                          level: 1,
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Want any Specific Quiz?",
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 8,
                    child: Container(
                      width: double.infinity,
                      height: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://images.unsplash.com/photo-1614850523060-8da1d56ae167?w=1080&q=80",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),

                      child: Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.black38,
                            ),
                          ),
                          Positioned(
                            top: 20,
                            bottom: 20,
                            left: 10,
                            right: 10,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Submit Your Topic",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 11),
                                TextField(
                                  decoration: InputDecoration(
                                    hintText: "Space Exploration",
                                    filled: true,
                                    fillColor: Colors.grey.shade200,
                                    contentPadding: EdgeInsets.symmetric(
                                      horizontal: 12,
                                      vertical: 16,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide.none,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 11),
                                Text(
                                  "We will bring that quiz for you.",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 50),
            Divider(),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "MADE WITH",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 4),
                          Icon(Icons.favorite, color: Colors.red, size: 18),
                          SizedBox(width: 4),
                          Text(
                            "BY",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Text("Version 1.0.0"),
                    ],
                  ),
                  SizedBox(height: 5),
                  CircleAvatar(
                    radius: 45,
                    backgroundImage: NetworkImage(
                      "https://i.pravatar.cc/150?img=2",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Stay in Touch",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.wechat_sharp),
                SizedBox(width: 5),
                Icon(Icons.facebook),
                SizedBox(width: 5),
                Icon(Icons.wine_bar),
              ],
            ),
            SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}
