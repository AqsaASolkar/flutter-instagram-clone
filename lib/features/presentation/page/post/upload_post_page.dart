import 'package:flutter/material.dart';

import '../../../../consts.dart';

class UploadPostPage extends StatefulWidget {
  const UploadPostPage({Key? key}) : super(key: key);

  @override
  State<UploadPostPage> createState() => _UploadPostPageState();
}

class _UploadPostPageState extends State<UploadPostPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text(
      'Upload Post',
      style: TextStyle(color: primaryColor),
    ));
  }
}
