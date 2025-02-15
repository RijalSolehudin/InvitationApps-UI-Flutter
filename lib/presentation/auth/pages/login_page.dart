import 'package:flutter/material.dart';
import 'package:my_work/core/assets/assets.dart';
import 'package:my_work/core/components/components.dart';
import 'package:my_work/core/constants/color.dart';
import 'package:my_work/presentation/home/pages/main_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool _isObscure = true;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 59,
              child: Assets.images.logo.image(),
            ),
            const SpaceHeight(40),
            SizedBox(
              height: 39,
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: appColors.stroke)),
                    hintText: "Username/Email",
                    hintStyle:
                        const TextStyle(color: appColors.grey, fontSize: 13)),
              ),
            ),
            const SpaceHeight(20),
            SizedBox(
              height: 39,
              child: TextField(
                controller: passwordController,
                obscureText: _isObscure,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: appColors.stroke)),
                  hintText: "Password",
                  hintStyle:
                      const TextStyle(color: appColors.grey, fontSize: 13),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isObscure ? Icons.visibility_off : Icons.visibility,
                      color: appColors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    },
                  ),
                ),
              ),
            ),
            const SpaceHeight(20),
            SizedBox(
              height: 44,
              child: Button.filled(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MainPage(),
                        ));
                  },
                  label: "login"),
            )
          ],
        ),
      ),
    );
  }
}
