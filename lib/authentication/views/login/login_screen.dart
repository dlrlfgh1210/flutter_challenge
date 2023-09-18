import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nomad_flutter_challenge/authentication/view_models/login_view_model.dart';
import 'package:nomad_flutter_challenge/authentication/views/login/login_form.dart';
import 'package:nomad_flutter_challenge/widget/change_color_button.dart';

class LogInScreen extends ConsumerStatefulWidget {
  static const String routeName = "login";
  static const String routeURL = "/login";
  const LogInScreen({super.key});

  @override
  ConsumerState<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends ConsumerState<LogInScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Map<String, String> formData = {};

  bool obscureText = true;

  void _onSubmitTap() {
    if (_formKey.currentState != null) {
      if (_formKey.currentState!.validate()) {
        _formKey.currentState!.save();
        ref.read(loginProvider.notifier).login(
              formData["email"]!,
              formData["password"]!,
              context,
            );
      }
    }
  }

  void onScaffoldTap() {
    FocusScope.of(context).unfocus();
  }

  void toggleObscureText() {
    obscureText = !obscureText;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onScaffoldTap,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('로그인'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 36,
          ),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                LoginForm(
                  logInHint: '이메일',
                  eyePass: null,
                  secret: false,
                  saveValue: (newValue) {
                    if (newValue != null) {
                      formData['email'] = newValue;
                    }
                  },
                  logInKeyBoard: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 16,
                ),
                LoginForm(
                  logInHint: '비밀번호',
                  eyePass: GestureDetector(
                    onTap: toggleObscureText,
                    child: obscureText
                        ? const Icon(Icons.open_in_new)
                        : const Icon(Icons.open_in_new_off),
                  ),
                  secret: obscureText,
                  saveValue: (newValue) {
                    if (newValue != null) {
                      formData['password'] = newValue;
                    }
                  },
                  logInKeyBoard: TextInputType.text,
                ),
                const SizedBox(
                  height: 28,
                ),
                GestureDetector(
                  onTap: _onSubmitTap,
                  child: ChangeColorButton(
                    disabled: ref.watch(loginProvider).isLoading,
                    buttonName: 'Log in',
                    buttonSize: 1,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
