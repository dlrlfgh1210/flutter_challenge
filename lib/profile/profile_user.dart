import 'package:flutter/material.dart';

class ProfileUser extends StatelessWidget {
  const ProfileUser({super.key});

  @override
  Widget build(BuildContext context) {
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
                  const Text(
                    "Jane",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 30,
                    ),
                  ),
                  Row(
                    children: [
                      const Text(
                        "jane_mobbin",
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          color: Colors.black,
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
                  "https://cdn.9oodnews.com/news/photo/202204/16142_23757_5022.jpg",
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Plant enthusiast!",
            style: TextStyle(
              fontWeight: FontWeight.w300,
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "2 Followers",
            style: TextStyle(
              fontWeight: FontWeight.w300,
              color: Colors.grey,
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
                    color: Colors.white,
                    border: Border.all(
                      width: 1,
                      color: Colors.grey,
                    )),
                child: const Text(
                  "Edit profile",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
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
                    color: Colors.white,
                    border: Border.all(
                      width: 1,
                      color: Colors.grey,
                    )),
                child: const Text(
                  "Share profile",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
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
