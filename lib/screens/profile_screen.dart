import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "Profile Page",
        style: TextStyle(
          fontSize: 45.0,
        ),
      ),
    );
  }
}
