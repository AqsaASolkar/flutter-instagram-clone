import 'package:flutter/material.dart';

import 'features/presentation/page/credentail/sign_in_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Instagram clone",
      darkTheme: ThemeData.dark(),
      home: const SignInPage(),
    );
  }
}
