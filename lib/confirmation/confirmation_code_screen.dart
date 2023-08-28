import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nomad_flutter_challenge/widget/auth_description.dart';
import 'package:nomad_flutter_challenge/widget/change_color_button.dart';
import 'package:nomad_flutter_challenge/confirmation/confirmation_code_form.dart';
import 'package:nomad_flutter_challenge/password_screen.dart';

class ConfirmationCodeScreen extends StatefulWidget {
  const ConfirmationCodeScreen({super.key});

  @override
  State<ConfirmationCodeScreen> createState() => _ConfirmationCodeScreenState();
}

class _ConfirmationCodeScreenState extends State<ConfirmationCodeScreen> {
  final TextEditingController codeController = TextEditingController();
  final TextEditingController codeController2 = TextEditingController();
  final TextEditingController codeController3 = TextEditingController();
  final TextEditingController codeController4 = TextEditingController();

  String codeNumber = '';
  String codeNumber2 = '';
  String codeNumber3 = '';
  String codeNumber4 = '';

  @override
  void initState() {
    super.initState();
    codeController.addListener(() {
      setState(() {
        codeNumber = codeController.text;
      });
    });
    codeController2.addListener(() {
      setState(() {
        codeNumber2 = codeController2.text;
      });
    });
    codeController3.addListener(() {
      setState(() {
        codeNumber3 = codeController3.text;
      });
    });
    codeController4.addListener(() {
      setState(() {
        codeNumber4 = codeController4.text;
      });
    });
  }

  @override
  void dispose() {
    codeController.dispose();
    codeController2.dispose();
    codeController3.dispose();
    codeController4.dispose();
    super.dispose();
  }

  void _onSubmitTap() {
    if (codeNumber.isEmpty ||
        codeNumber2.isEmpty ||
        codeNumber3.isEmpty ||
        codeNumber4.isEmpty) {
      return;
    }
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const PasswordScreen(),
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const AuthDescription(
              authTitle: "We sent you a code",
              authDetail: "Enter it below to verify",
            ),
            Row(
              children: [
                const SizedBox(
                  width: 40,
                ),
                ConfirmationCodeForm(
                  textInputAction: TextInputAction.next,
                  codeController: codeController,
                ),
                const SizedBox(
                  width: 40,
                ),
                ConfirmationCodeForm(
                  textInputAction: TextInputAction.next,
                  codeController: codeController2,
                ),
                const SizedBox(
                  width: 40,
                ),
                ConfirmationCodeForm(
                  textInputAction: TextInputAction.next,
                  codeController: codeController3,
                ),
                const SizedBox(
                  width: 40,
                ),
                ConfirmationCodeForm(
                  textInputAction: TextInputAction.done,
                  codeController: codeController4,
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            codeNumber.isEmpty ||
                    codeNumber2.isEmpty ||
                    codeNumber3.isEmpty ||
                    codeNumber4.isEmpty
                ? const FaIcon(null)
                : FaIcon(
                    FontAwesomeIcons.circleCheck,
                    color: Colors.green.shade300,
                  ),
            const SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: _onSubmitTap,
              child: ChangeColorButton(
                disabled: codeNumber.isEmpty ||
                    codeNumber2.isEmpty ||
                    codeNumber3.isEmpty ||
                    codeNumber4.isEmpty,
                buttonName: "Next",
                buttonSize: 0.4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
