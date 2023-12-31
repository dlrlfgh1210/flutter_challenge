import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nomad_flutter_challenge/widget/auth_description.dart';
import 'package:nomad_flutter_challenge/widget/change_color_button.dart';
import 'package:nomad_flutter_challenge/widget/interest_button.dart';
import 'package:nomad_flutter_challenge/interest/interest_detail_screen.dart';

const interests = [
  "Daily Life",
  "Comedy",
  "Entertainment",
  "Animals",
  "Food",
  "Beauty & Style",
  "Drama",
  "Learning",
  "Talent",
  "Sports",
  "Auto",
  "Family",
  "Fitness & Health",
  "DIY & Life Hacks",
  "Arts & Crafts",
  "Dance",
  "Outdoors",
  "Oddly Satisfying",
  "Home & Garden",
  "Daily Life",
  "Comedy",
  "Entertainment",
  "Animals",
  "Food",
  "Beauty & Style",
  "Drama",
  "Learning",
  "Talent",
  "Sports",
  "Auto",
  "Family",
  "Fitness & Health",
  "DIY & Life Hacks",
  "Arts & Crafts",
  "Dance",
  "Outdoors",
  "Oddly Satisfying",
  "Home & Garden",
];

class InterestCategoryScreen extends StatefulWidget {
  const InterestCategoryScreen({super.key});

  @override
  State<InterestCategoryScreen> createState() => _InterestCategoryScreenState();
}

class _InterestCategoryScreenState extends State<InterestCategoryScreen> {
  void _onSubmitTap() {
    // if (_password.isEmpty) {
    //   return;
    // }
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const InterestDetailScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: FaIcon(
          FontAwesomeIcons.twitter,
          color: Colors.blue.shade400,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: Column(
            children: [
              const AuthDescription(
                authTitle: "What do you want to see on Twitter?",
                authDetail:
                    "Select at least 3 interests to personalize your Twitter experience. They will be visible on your profile",
              ),
              const SizedBox(
                height: 20,
              ),
              Wrap(
                runSpacing: 15,
                spacing: 15,
                children: [
                  for (var interest in interests)
                    InterestButton(interest: interest)
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(
            10,
          ),
          child: GestureDetector(
            onTap: _onSubmitTap,
            child: const ChangeColorButton(
              disabled: false,
              buttonName: "Next",
              buttonSize: 0.3,
            ),
          ),
        ),
      ),
    );
  }
}
