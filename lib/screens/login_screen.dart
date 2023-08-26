import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:insta_clone/utils/colors.dart';
import 'package:insta_clone/widgets/text_field_input.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(child: Container(), flex: 1),
            // ignore: deprecated_member_use
            SvgPicture.asset(
              'assets/ic_instagram.svg',
              color: primaryColor,
              height: 64,
            ),
            const SizedBox(
              height: 40,
            ),
            TextFieldInput(
                textEditingController: _emailcontroller,
                hintText: 'Enter your email',
                textInputType: TextInputType.emailAddress),

            const SizedBox(
              height: 24,
            ),

            TextFieldInput(
                textEditingController: _passwordcontroller,
                hintText: 'Enter your password',
                textInputType: TextInputType.text,
                isPass: true,
            ),

            const SizedBox(
              height: 24,
            ),

            InkWell(
              child: Container(
                child: const Text('Log in'),
                width: double.infinity,
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 12),
                decoration: const ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(4)
                    )
                  ),
                  color: blueColor,
                ),
              ),
            ),

            const SizedBox(
              height: 12,
            ),

            Flexible(child: Container(), flex: 1),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text("Don't have an account? "),
                  padding: const EdgeInsets.symmetric(
                    vertical: 8
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    child: const Text(
                      "Sign up", 
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 8
                    ),
                  ),
                )
              ],
            )

          ],
        ),
      )),
    );
  }
}
