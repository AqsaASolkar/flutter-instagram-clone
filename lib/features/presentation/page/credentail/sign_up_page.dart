import 'package:flutter/material.dart';
import 'package:insta_clone/consts.dart';
import 'package:insta_clone/features/presentation/page/credentail/sign_in_page.dart';

import '../../widgets/button_conatiner_widget.dart';
import '../../widgets/form_container_widget.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

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
                      height: 100,
                      width: 200)),
              sizeVer(30),
              Center(
                child: Stack(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Image.asset('${imagePath}user_profile.png'),
                    ),
                    Positioned(
                        right: -10,
                        bottom: -10,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.add_a_photo,
                            color: blueColor,
                          ),
                        ))
                  ],
                ),
              ),
              sizeVer(15),
              const FormContainerWidget(
                hintText: "Username",
              ),
              sizeVer(15),
              const FormContainerWidget(
                hintText: "Email",
              ),
              sizeVer(15),
              const FormContainerWidget(
                hintText: "Password",
                isPasswordField: true,
              ),
              sizeVer(15),
              const FormContainerWidget(
                hintText: "bio",
              ),
              sizeVer(15),
              ButtonContainerWidget(
                color: blueColor,
                text: 'Sign Up',
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
                    "Already have an account? ",
                    style: TextStyle(color: primaryColor),
                  ),
                  InkWell(
                    onTap: () {
                      // Navigator.pushNamedAndRemoveUntil(context, PageConst.signUpPage, (route) => false);
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => SignInPage()),
                          (route) => false);
                    },
                    child: const Text(
                      "Sign In.",
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
