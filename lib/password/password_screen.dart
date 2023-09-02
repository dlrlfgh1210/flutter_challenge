
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nomad_flutter_challenge/widget/auth_description.dart';
import 'package:nomad_flutter_challenge/widget/change_color_button.dart';
import 'package:nomad_flutter_challenge/interest/interest_category_screen.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({super.key});

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  final TextEditingController _passwordController = TextEditingController();

  String _password = "";
  bool _passwordVisible = false;
  @override
  void initState() {
    super.initState();
    _passwordController.addListener(() {
      setState(() {
        _password = _passwordController.text;
      });
    });
  }

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

  void toggleObscureText() {
    setState(() {
      _passwordVisible = !_passwordVisible;
    });
  }

  void _onSubmitTap() {
    if (_password.isEmpty) {
      return;
    }
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const InterestCategoryScreen(),
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
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: Column(
          children: [
            const AuthDescription(
              authTitle: "You'll need a password",
              authDetail: "Make sure it's 8 characters or more.",
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              obscureText: !_passwordVisible,
              controller: _passwordController,
              decoration: InputDecoration(
                prefixIcon: GestureDetector(
                  onTap: toggleObscureText,
                  child: _passwordVisible
                      ? const FaIcon(FontAwesomeIcons.eye)
                      : const FaIcon(FontAwesomeIcons.eyeSlash),
                ),
                suffixIcon: _password.isEmpty
                    ? null
                    : FaIcon(
                        FontAwesomeIcons.circleCheck,
                        color: Colors.green.shade300,
                      ),
                hintText: "Password",
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey.shade400,
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey.shade400,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: _onSubmitTap,
              child: ChangeColorButton(
                disabled: _password.isEmpty,
                buttonName: "Next",
                buttonSize: 0.3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
