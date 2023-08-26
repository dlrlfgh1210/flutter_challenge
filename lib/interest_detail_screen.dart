import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nomad_flutter_challenge/auth_description.dart';
import 'package:nomad_flutter_challenge/interest_bottom_app_bar.dart';
import 'package:nomad_flutter_challenge/interest_button.dart';
import 'package:nomad_flutter_challenge/interest_detail_container.dart';

const kPops = [
  "뉴진스",
  "르세라핌",
  "방탄소년단",
  "세븐틴",
  "아이브",
  "트와이스",
  "블랙핑크",
  "있지",
  "에스파",
  "(여자)아이들",
  "스테이씨",
];

const premierLeagues = [
  "Manchester City",
  "Arsenal",
  "Liverpool",
  "Tottenham Hotspur",
  "Chelsea",
  "Manchester United",
  "Newcastle United",
];

const countries = [
  "Korea",
  "Japan",
  "China",
  "England",
  "France",
  "Spain",
  "Italy",
  "USA",
  "Canada",
  "Mexico",
  "Brazil",
];

class InterestDetailScreen extends StatefulWidget {
  const InterestDetailScreen({super.key});

  @override
  State<InterestDetailScreen> createState() => _InterestDetailScreenState();
}

class _InterestDetailScreenState extends State<InterestDetailScreen> {
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AuthDescription(
                authTitle: "What do you want to see on Twitter?",
                authDetail:
                    "Interests are used to personalize your experience and will be visible on your profile.",
              ),
              InterestDetailContainer(
                categoryTitle: "K-Pop Stars",
                categoryList: [
                  for (var kPop in kPops) InterestButton(interest: kPop)
                ],
              ),
              InterestDetailContainer(
                categoryTitle: "PremierLeague Teams",
                categoryList: [
                  for (var premierLeague in premierLeagues)
                    InterestButton(interest: premierLeague),
                ],
              ),
              InterestDetailContainer(
                categoryTitle: "Countries",
                categoryList: [
                  for (var country in countries)
                    InterestButton(interest: country),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const InterestBottomAppBar(),
    );
  }
}
