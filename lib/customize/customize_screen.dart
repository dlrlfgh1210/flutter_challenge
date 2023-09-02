import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nomad_flutter_challenge/widget/change_color_button.dart';

class CustomizeScreen extends StatefulWidget {
  const CustomizeScreen({super.key});

  @override
  State<CustomizeScreen> createState() => _CustomizeScreenState();
}

class _CustomizeScreenState extends State<CustomizeScreen> {
  bool isChecked = false;

  void _onSubmitTap() {
    if (isChecked == false) {
      return;
    }
    Navigator.pop(
      context,
      "Sign Up",
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
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: Column(
          children: [
            const Text(
              "Customize your experience",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Track where you see Twitter content across the web",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Text(
                  "Twitter uses this data to \npersonalize your experience. This \nweb browsing history will never be \nstored with your name, email, or \nphone number.",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                CupertinoSwitch(
                  value: isChecked,
                  onChanged: (value) {
                    setState(() {
                      isChecked = value;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            EasyRichText(
              "By signing up, you agree to our Terms, Privacy Policy, and Cookie Use. Twitter may use your contact information, including your email address and phone number for purposes outlined in our Privacy Policy. Learn more.",
              defaultStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w300,
                color: Colors.black,
              ),
              patternList: [
                EasyRichTextPattern(
                  targetString: 'Terms',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    color: Colors.blue.shade500,
                  ),
                ),
                EasyRichTextPattern(
                  targetString: 'Privacy Policy',
                  matchOption: 'first',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    color: Colors.blue.shade500,
                  ),
                ),
                EasyRichTextPattern(
                  targetString: 'Cookie Use',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    color: Colors.blue.shade500,
                  ),
                ),
                EasyRichTextPattern(
                  targetString: 'Learn more',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    color: Colors.blue.shade500,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            GestureDetector(
              onTap: _onSubmitTap,
              child: ChangeColorButton(
                buttonName: 'Next',
                disabled: isChecked == false,
                buttonSize: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
