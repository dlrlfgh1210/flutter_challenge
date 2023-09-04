import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nomad_flutter_challenge/home/home_post_container.dart';
import 'package:nomad_flutter_challenge/profile/profile_tab_bar.dart';
import 'package:nomad_flutter_challenge/profile/profile_user.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List<String> pageImage = [
    "https://cdn.pixabay.com/photo/2017/09/25/13/12/puppy-2785074_960_720.jpg",
    "https://cdn.pixabay.com/photo/2016/12/13/05/15/puppy-1903313_960_720.jpg",
    "https://cdn.pixabay.com/photo/2016/02/18/18/37/puppy-1207816_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/07/30/05/53/dog-4372036_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/02/06/15/18/puppy-3979350_960_720.jpg",
    "https://dimg.donga.com/wps/NEWS/IMAGE/2022/01/28/111500268.2.jpg",
    "https://newsimg.sedaily.com/2023/04/10/29O8ZA6BWK_1.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(
          10,
        ),
        child: DefaultTabController(
          length: 2,
          child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  leading: const Padding(
                    padding: EdgeInsets.all(11),
                    child: FaIcon(FontAwesomeIcons.baseball),
                  ),
                  actions: [
                    IconButton(
                      onPressed: () {},
                      icon: const FaIcon(
                        FontAwesomeIcons.instagram,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const FaIcon(
                        FontAwesomeIcons.list,
                      ),
                    ),
                  ],
                ),
                const SliverToBoxAdapter(
                  child: ProfileUser(),
                ),
                SliverPersistentHeader(
                  delegate: ProfileTabBar(),
                  pinned: true,
                ),
              ];
            },
            body: TabBarView(
              children: [
                ListView.builder(
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return const Column(
                      children: [
                        HomePostContainer(
                          myAvatar: NetworkImage(
                            "https://file.mk.co.kr/meet/neds/2023/08/image_readtop_2023_619590_16919900415585291.jpg",
                          ),
                          myNickname: "_plantswithkrystal_",
                          myUploadTime: "1h",
                          myText:
                              "If you're reading this, go water that thirsty plant. You're welcome",
                          myReplies: "8 replies",
                          myLikes: "74 likes",
                        ),
                        HomePostContainer(
                          myAvatar: NetworkImage(
                            "https://www.sisajournal.com/news/photo/202306/265204_181493_2229.jpg",
                          ),
                          myNickname: "tropicalseductions",
                          myUploadTime: "30m",
                          myText: "Drop a comment here to test things out.",
                          myReplies: "112 replies",
                          myLikes: "45 likes",
                        ),
                        HomePostContainer(
                          myAvatar: NetworkImage(
                            "https://thumb.mtstarnews.com/06/2023/06/2023062914274537673_1.jpg",
                          ),
                          myNickname: "tropicalseductions",
                          myUploadTime: "45m",
                          myText: "Drop a comment here to test things out.",
                          myReplies: "2 replies",
                          myLikes: "4 likes",
                        ),
                      ],
                    );
                  },
                ),
                const Center(
                  child: Text('Page two'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
