import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nomad_flutter_challenge/setting/view_models/dark_config_view_model.dart';

class ProfileUser extends ConsumerWidget {
  const ProfileUser({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: 230,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Jane",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: ref.watch(darkConfigProvider).isDarked
                          ? null
                          : Colors.black,
                      fontSize: 30,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "jane_mobbin",
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          color: ref.watch(darkConfigProvider).isDarked
                              ? null
                              : Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              20,
                            ),
                            color: Colors.grey.shade300),
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Text(
                            "threads.net",
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              color: Colors.grey.shade600,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const CircleAvatar(
                radius: 40,
                foregroundImage: NetworkImage(
                  "https://ssl.pstatic.net/mimgnews/image/144/2023/09/04/0000910939_001_20230904154401286.jpg",
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Plant enthusiast!",
            style: TextStyle(
              fontWeight: FontWeight.w300,
              color:
                  ref.watch(darkConfigProvider).isDarked ? null : Colors.black,
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "2 Followers",
            style: TextStyle(
              fontWeight: FontWeight.w300,
              color:
                  ref.watch(darkConfigProvider).isDarked ? null : Colors.grey,
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                width: 100,
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: ref.watch(darkConfigProvider).isDarked
                        ? Colors.grey
                        : Colors.white,
                    border: Border.all(
                      width: 1,
                      color: Colors.grey,
                    )),
                child: Text(
                  "Edit profile",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: ref.watch(darkConfigProvider).isDarked
                        ? Colors.white
                        : Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                width: 100,
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: ref.watch(darkConfigProvider).isDarked
                        ? Colors.grey
                        : Colors.white,
                    border: Border.all(
                      width: 1,
                      color: Colors.grey,
                    )),
                child: Text(
                  "Share profile",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: ref.watch(darkConfigProvider).isDarked
                        ? Colors.white
                        : Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
