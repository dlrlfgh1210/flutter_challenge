import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nomad_flutter_challenge/home_post_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const FaIcon(
          FontAwesomeIcons.at,
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Column(
            children: [
              HomePostContainer(
                myAvatar: NetworkImage(
                  "https://thumb.mtstarnews.com/06/2023/06/2023062914274537673_1.jpg",
                ),
                myNickname: "tropicalseductions",
                myUploadTime: "2h",
                myText: "Drop a comment here to test things out.",
                myReplies: "2 replies",
                myLikes: "4 likes",
              ),
              HomePostContainer(
                myAvatar: NetworkImage(
                  "https://thumb.mtstarnews.com/06/2023/06/2023062914274537673_1.jpg",
                ),
                myNickname: "tropicalseductions",
                myUploadTime: "2h",
                myText: "Drop a comment here to test things out.",
                myReplies: "2 replies",
                myLikes: "4 likes",
              ),
              HomePostContainer(
                myAvatar: NetworkImage(
                  "https://thumb.mtstarnews.com/06/2023/06/2023062914274537673_1.jpg",
                ),
                myNickname: "tropicalseductions",
                myUploadTime: "2h",
                myText: "Drop a comment here to test things out.",
                myReplies: "2 replies",
                myLikes: "4 likes",
              ),
              HomePostContainer(
                myAvatar: NetworkImage(
                  "https://thumb.mtstarnews.com/06/2023/06/2023062914274537673_1.jpg",
                ),
                myNickname: "tropicalseductions",
                myUploadTime: "2h",
                myText: "Drop a comment here to test things out.",
                myReplies: "2 replies",
                myLikes: "4 likes",
              ),
              HomePostContainer(
                myAvatar: NetworkImage(
                  "https://thumb.mtstarnews.com/06/2023/06/2023062914274537673_1.jpg",
                ),
                myNickname: "tropicalseductions",
                myUploadTime: "2h",
                myText: "Drop a comment here to test things out.",
                myReplies: "2 replies",
                myLikes: "4 likes",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
