import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
  bool _isSelected = false;

  void _onTap() {
    setState(() {
      _isSelected = !_isSelected;
    });
  }

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
            unselectedBorderColor: Colors.grey.shade300,
            borderWidth: 1,
            backgroundColor: Colors.black,
            unselectedBackgroundColor: Colors.white,
            unselectedLabelStyle: const TextStyle(
              color: Colors.black,
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
            Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                ListTile(
                  isThreeLine: true,
                  leading: Stack(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(4),
                        child: CircleAvatar(
                          radius: 25,
                          foregroundImage: NetworkImage(
                            "https://thumb.mtstarnews.com/06/2023/06/2023062914274537673_1.jpg",
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          width: 28,
                          height: 28,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            border: Border.all(
                              color: Colors.white,
                              width: 4,
                            ),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: const Center(
                            child: FaIcon(
                              FontAwesomeIcons.plus,
                              color: Colors.white,
                              size: 15,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Text(
                                "rjmithun",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                "4h",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15,
                                    color: Colors.grey.shade600),
                              ),
                            ],
                          ),
                          Text(
                            "Mithun",
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.grey.shade500,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      // Container(
                      //   width: 100,
                      //   height: 50,
                      //   padding: const EdgeInsets.symmetric(
                      //     vertical: 16,
                      //   ),
                      //   decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(20),
                      //     border: Border.all(
                      //       width: 1,
                      //       color: Colors.grey.shade600,
                      //     ),
                      //     color: Colors.white,
                      //   ),
                      //   child: const Text(
                      //     "Follow",
                      //     textAlign: TextAlign.center,
                      //     style: TextStyle(
                      //       color: Colors.black,
                      //       fontWeight: FontWeight.bold,
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                  subtitle: const Text(
                    "Here's a thread you should follow if you love botany @jane_mobbin",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  width: 500,
                  child: Divider(
                    color: Colors.black.withOpacity(0.1),
                    thickness: 2.0,
                  ),
                ),
              ],
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
