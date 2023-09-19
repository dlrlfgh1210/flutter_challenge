import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nomad_flutter_challenge/authentication/view_models/sign_up_view_model.dart';
import 'package:nomad_flutter_challenge/authentication/views/sign_up/sign_up_form.dart';
import 'package:nomad_flutter_challenge/widget/change_color_button.dart';

class SignUpScreen extends ConsumerStatefulWidget {
  static const String routeName = "signup";
  static const String routeURL = "/signup";
  const SignUpScreen({super.key});

  @override
  ConsumerState<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends ConsumerState<SignUpScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordCheckController = TextEditingController();

  String email = '';
  String password = '';
  String passwordCheck = '';

  @override
  void initState() {
    super.initState();
    emailController.addListener(() {
      setState(() {
        email = emailController.text;
      });
    });
    passwordController.addListener(() {
      setState(() {
        password = passwordController.text;
      });
    });
    passwordCheckController.addListener(() {
      setState(() {
        passwordCheck = passwordCheckController.text;
      });
    });
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    passwordCheckController.dispose();
    super.dispose();
  }

  String? isEmailValid() {
    if (email.isEmpty) return null;
    final regExp = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    if (!regExp.hasMatch(email)) {
      return '잘못된 이메일 형식입니다.';
    }
    return null;
  }

  String? isPasswordValid() {
    if (password.isEmpty) return null;
    final regExp = RegExp(
        r'^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?~^<>,.&+=])[A-Za-z\d$@$!%*#?~^<>,.&+=]{8,15}$');
    if (!regExp.hasMatch(password)) {
      return '특수문자, 대소문자, 숫자 등 8~15자로 입력하세요.';
    }
    if (password != passwordCheck) {
      return '비밀번호가 일치하지 않습니다.';
    }
    return null;
  }

  String? isPasswordCheckValid() {
    if (passwordCheck.isEmpty) return null;
    final regExp = RegExp(
        r'^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?~^<>,.&+=])[A-Za-z\d$@$!%*#?~^<>,.&+=]{8,15}$');
    if (!regExp.hasMatch(passwordCheck)) {
      return '특수문자, 대소문자, 숫자 등 8~15자로 입력하세요.';
    }
    if (passwordCheck != password) {
      return '비밀번호가 일치하지 않습니다.';
    }
    return null;
  }

  void onScaffoldTap() {
    FocusScope.of(context).unfocus();
  }

  onSubmit() {
    if (email.isEmpty ||
        isEmailValid() != null ||
        password.isEmpty ||
        isPasswordValid() != null ||
        passwordCheck.isEmpty ||
        isPasswordCheckValid() != null) return;
    ref.read(signUpForm.notifier).state = {
      "email": email,
      "password": password,
    };
    ref.read(signUpProvider.notifier).signUp(context);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onScaffoldTap,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text(
            '회원가입',
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              SignUpForm(
                signUpInfo: '이메일',
                signUpHint: '예: nomadcoders123@nomad.com',
                signUpController: emailController,
                signUpKeyBoard: TextInputType.emailAddress,
                isValid: isEmailValid(),
              ),
              SignUpForm(
                signUpInfo: '비밀번호',
                signUpHint: '비밀번호를 입력해주세요',
                signUpController: passwordController,
                signUpKeyBoard: TextInputType.visiblePassword,
                isValid: isPasswordValid(),
              ),
              SignUpForm(
                signUpInfo: '비밀번호확인',
                signUpHint: '비밀번호를 한번 더 입력해주세요',
                signUpController: passwordCheckController,
                signUpKeyBoard: TextInputType.visiblePassword,
                isValid: isPasswordCheckValid(),
              ),
              GestureDetector(
                onTap: onSubmit,
                child: ChangeColorButton(
                  disabled: email.isEmpty ||
                      password.isEmpty ||
                      passwordCheck.isEmpty ||
                      ref.watch(signUpProvider).isLoading,
                  buttonName: 'Sign Up',
                  buttonSize: 1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
