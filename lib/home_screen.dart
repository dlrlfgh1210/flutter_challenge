import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nomad_flutter_challenge/home_post_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const FaIcon(
          FontAwesomeIcons.at,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Column(
            children: [
              HomePostContainer(
                myAvatar: const NetworkImage(
                  "https://thumb.mtstarnews.com/06/2023/06/2023062914274537673_1.jpg",
                ),
                myNickname: "tropicalseductions",
                myUploadTime: "2h",
                myText: "Drop a comment here to test things out.",
                myReplies: "2 replies",
                myLikes: "4 likes",
                myImages: SizedBox(
                  height: 300,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Image.network(
                        pageImage[index],
                        fit: BoxFit.cover,
                      );
                    },
                    itemCount: pageImage.length,
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 20),
                  ),
                ),
              ),
              HomePostContainer(
                myAvatar: const NetworkImage(
                  "https://cdn.mhnse.com/news/photo/202304/176813_175528_956.jpg",
                ),
                myNickname: "shityoushouldcareabout",
                myUploadTime: "2h",
                myText:
                    // "my phone feels like a vibrator with all these notifications rn",
                    "",
                myReplies: "64 replies",
                myLikes: "631 likes",
                myImages: Image.network(
                  "https://thumb.mtstarnews.com/06/2023/06/2023062914274537673_1.jpg",
                ),
              ),
              const HomePostContainer(
                myAvatar: NetworkImage(
                  "https://file.mk.co.kr/meet/neds/2023/08/image_readtop_2023_619590_16919900415585291.jpg",
                ),
                myNickname: "_plantswithkrystal_",
                myUploadTime: "2h",
                myText:
                    "If you're reading this, go water that thirsty plant. You're welcome",
                myReplies: "8 replies",
                myLikes: "74 likes",
              ),
              const HomePostContainer(
                myAvatar: NetworkImage(
                  "https://www.sisajournal.com/news/photo/202306/265204_181493_2229.jpg",
                ),
                myNickname: "tropicalseductions",
                myUploadTime: "2h",
                myText: "Drop a comment here to test things out.",
                myReplies: "2 replies",
                myLikes: "4 likes",
              ),
              const HomePostContainer(
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
