import 'package:flutter/material.dart';

class ActivityContainer extends StatelessWidget {
  final dynamic profileImage;
  final dynamic profileContainer;
  final String nickName, uploadTime, title, detail;
  final Container? followingBox;
  const ActivityContainer({
    super.key,
    required this.profileImage,
    required this.profileContainer,
    required this.nickName,
    required this.uploadTime,
    required this.title,
    required this.detail,
    this.followingBox,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        ListTile(
          isThreeLine: true,
          leading: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(4),
                child: CircleAvatar(
                  radius: 30,
                  foregroundImage: profileImage,
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: profileContainer,
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
                      Text(
                        nickName,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        uploadTime,
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            color: Colors.grey.shade600),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.grey.shade500,
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ],
          ),
          subtitle: Text(
            detail,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: const TextStyle(
              color: Colors.black,
            ),
          ),
          trailing: followingBox,
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
