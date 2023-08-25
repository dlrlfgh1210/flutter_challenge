import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nomad_flutter_challenge/change_color_button.dart';
import 'package:nomad_flutter_challenge/create_account_form.dart';
import 'package:nomad_flutter_challenge/customize_screen.dart';
import 'package:nomad_flutter_challenge/confirmation_code_screen.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _birthdayController = TextEditingController();

  DateTime initialDate = DateTime.now();

  String _username = "";
  String _email = "";
  String buttonName = "Next";

  @override
  void initState() {
    super.initState();
    _setTextFieldDate(initialDate);
    _usernameController.addListener(() {
      setState(() {
        _username = _usernameController.text;
      });
    });
    _emailController.addListener(() {
      setState(() {
        _email = _emailController.text;
      });
    });
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _birthdayController.dispose();
    super.dispose();
  }

  void _setTextFieldDate(DateTime date) {
    final textDate = date.toString().split(" ").first;
    _birthdayController.value = TextEditingValue(text: textDate);
  }

  void _onSubmitTap() async {
    if (_username.isEmpty ||
        _email.isEmpty ||
        _birthdayController.text.isEmpty) {
      return;
    }
    final data = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const CustomizeScreen(),
      ),
    );
    setState(() {
      buttonName = data;
    });
  }

  void _onAgainTap() {
    if (_username.isEmpty ||
        _email.isEmpty ||
        _birthdayController.text.isEmpty) {
      return;
    }
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const ConfirmationCodeScreen(),
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
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Create your account",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CreateAccountForm(
              createController: _usernameController,
              createHint: "Name",
              createText: _username,
            ),
            CreateAccountForm(
              createController: _emailController,
              createHint: "Email",
              createText: _email,
            ),
            CreateAccountForm(
              createController: _birthdayController,
              createHint: "Date of birth",
              createText: _birthdayController.text,
            ),
            GestureDetector(
              onTap: buttonName == 'Next' ? _onSubmitTap : _onAgainTap,
              child: ChangeColorButton(
                buttonName: buttonName,
                disabled: _username.isEmpty ||
                    _email.isEmpty ||
                    _birthdayController.text.isEmpty,
                buttonSize: 0.3,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: SizedBox(
          height: 200,
          child: CupertinoDatePicker(
            maximumDate: initialDate,
            initialDateTime: initialDate,
            mode: CupertinoDatePickerMode.date,
            onDateTimeChanged: _setTextFieldDate,
          ),
        ),
      ),
    );
  }
}
