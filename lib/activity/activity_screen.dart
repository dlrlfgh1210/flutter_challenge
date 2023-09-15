import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nomad_flutter_challenge/activity/activity_container.dart';
import 'package:nomad_flutter_challenge/setting/view_models/dark_config_view_model.dart';
import 'package:provider/provider.dart';

final tabs = [
  "All",
  "Replies",
  "Mentions",
  "Verified",
  "Repost",
];

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Activity'),
          bottom: ButtonsTabBar(
            buttonMargin: const EdgeInsets.symmetric(horizontal: 10),
            radius: 15,
            contentPadding: const EdgeInsets.symmetric(horizontal: 25),
            unselectedBorderColor: Colors.grey.shade500,
            borderWidth: 1,
            backgroundColor: context.read<DarkConfigViewModel>().isDarked
                ? Colors.grey.shade400
                : Colors.black,
            unselectedBackgroundColor:
                context.read<DarkConfigViewModel>().isDarked
                    ? Colors.black
                    : Colors.white,
            unselectedLabelStyle: TextStyle(
              color: context.read<DarkConfigViewModel>().isDarked
                  ? Colors.white
                  : Colors.black,
              fontWeight: FontWeight.w600,
            ),
            labelStyle: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            tabs: [
              for (var tab in tabs)
                Tab(
                  text: tab,
                ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  ActivityContainer(
                    profileImage: const NetworkImage(
                      "https://thumb.mtstarnews.com/06/2023/06/2023062914274537673_1.jpg",
                    ),
                    profileContainer: Container(
                      width: 28,
                      height: 28,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: const Center(
                        child: FaIcon(
                          FontAwesomeIcons.solidHeart,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                    ),
                    nickName: "rjmithun",
                    uploadTime: "4h",
                    title: "Mithun",
                    detail:
                        "Here's a thread you should follow if you love botany @jane_mobbin",
                  ),
                  ActivityContainer(
                    profileImage: const NetworkImage(
                      "https://image.ytn.co.kr/osen/2023/01/4934c786-1e08-4f52-aca2-a600838e5655.jpg",
                    ),
                    profileContainer: Container(
                      width: 28,
                      height: 28,
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: const Center(
                        child: FaIcon(
                          FontAwesomeIcons.solidUser,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                    ),
                    nickName: "john_mobbin",
                    uploadTime: "30m",
                    title: "Starting our my gardening club",
                    detail: "Count me in!",
                  ),
                  ActivityContainer(
                    profileImage: const NetworkImage(
                      "https://cdn.9oodnews.com/news/photo/202204/16142_23757_5022.jpg",
                    ),
                    profileContainer: Container(
                      width: 28,
                      height: 28,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: const Center(
                        child: FaIcon(
                          FontAwesomeIcons.solidHeart,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                    ),
                    nickName: "the.plantdads",
                    uploadTime: "10h",
                    title: "Followde you",
                    detail: "",
                  ),
                  ActivityContainer(
                    profileImage: const NetworkImage(
                      "https://thumb.mtstarnews.com/06/2023/06/2023062914274537673_1.jpg",
                    ),
                    profileContainer: Container(
                      width: 28,
                      height: 28,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: const Center(
                        child: FaIcon(
                          FontAwesomeIcons.solidStar,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                    ),
                    nickName: "I_love_France",
                    uploadTime: "1h",
                    title: "🇫🇷🇫🇷🇫🇷",
                    detail: "",
                    followingBox: Container(
                      width: 100,
                      padding: const EdgeInsets.symmetric(
                        vertical: 16,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: context.read<DarkConfigViewModel>().isDarked
                              ? null
                              : Colors.white,
                          border: Border.all(
                            width: 1,
                            color: Colors.grey,
                          )),
                      child: const Text(
                        "Following",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  ActivityContainer(
                    profileImage: const NetworkImage(
                      "https://weekly.cnbnews.com/data/photos/20221146/art_146687_1668476400.jpg",
                    ),
                    profileContainer: Container(
                      width: 28,
                      height: 28,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: const Center(
                        child: FaIcon(
                          FontAwesomeIcons.heart,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                    ),
                    nickName: "rjmithun",
                    uploadTime: "4h",
                    title: "Mithun",
                    detail:
                        "Here's a thread you should follow if you love botany @jane_mobbin",
                  ),
                ],
              ),
            ),
            for (var tab in tabs.skip(1))
              Center(
                child: Text(
                  tab,
                  style: const TextStyle(
                    fontSize: 28,
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
