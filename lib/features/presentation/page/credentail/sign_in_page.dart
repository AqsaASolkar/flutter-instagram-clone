import 'package:flutter/material.dart';
import 'package:insta_clone/consts.dart';
import 'package:insta_clone/features/presentation/page/credentail/sign_up_page.dart';

import '../../widgets/button_conatiner_widget.dart';
import '../../widgets/form_container_widget.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backGroundColor,
        body: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                  child: Image.asset(
                      '${imagePath}instagram-logo_black_on_white.png',
                      height: 200,
                      width: 200)),
              sizeVer(30),
              const FormContainerWidget(
                hintText: "Email",
              ),
              sizeVer(15),
              const FormContainerWidget(
                hintText: "Password",
                isPasswordField: true,
              ),
              sizeVer(15),
              ButtonContainerWidget(
                color: blueColor,
                text: 'Sign In',
                onTapListener: () {},
              ),
              Flexible(
                flex: 2,
                child: Container(),
              ),
              const Divider(
                color: secondaryColor,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account? ",
                    style: TextStyle(color: primaryColor),
                  ),
                  InkWell(
                    onTap: () {
                      //Navigator.pushNamedAndRemoveUntil(context, PageConst.signUpPage, (route) => false);
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUpPage()),
                          (route) => false);
                    },
                    child: const Text(
                      "Sign Up.",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: primaryColor),
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
