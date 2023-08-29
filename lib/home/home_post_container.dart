import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePostContainer extends StatelessWidget {
  final NetworkImage myAvatar;
  final String myNickname, myUploadTime, myReplies, myLikes;
  final String? myText;
  final dynamic myImages;
  const HomePostContainer({
    super.key,
    required this.myAvatar,
    required this.myNickname,
    required this.myUploadTime,
    this.myText,
    required this.myReplies,
    required this.myLikes,
    this.myImages,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        ListTile(
          isThreeLine: true,
          leading: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(4),
                child: CircleAvatar(
                  radius: 35,
                  foregroundImage: myAvatar,
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
              Row(
                children: [
                  Text(
                    myNickname,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  FaIcon(
                    FontAwesomeIcons.circleCheck,
                    color: Colors.blue.shade300,
                    size: 15,
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    myUploadTime,
                    style: const TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Icon(
                    Icons.more_vert,
                  ),
                ],
              ),
            ],
          ),
          subtitle: Column(
            children: [
              Column(
                children: [
                  Text(
                    myText!,
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    // height: 300,
                    child: myImages,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.heart,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  FaIcon(
                    FontAwesomeIcons.comment,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  FaIcon(
                    FontAwesomeIcons.rotate,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  FaIcon(
                    FontAwesomeIcons.paperPlane,
                    color: Colors.black,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    myReplies,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const FaIcon(
                    FontAwesomeIcons.solidCircle,
                    size: 5,
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    myLikes,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: 500,
          child: Divider(
            color: Colors.black.withOpacity(0.1),
            thickness: 2.0,
          ),
        ),
      ],
    );
  }
}
