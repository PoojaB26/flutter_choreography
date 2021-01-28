import 'package:countup/countup.dart';
import 'package:flutter/material.dart';
import 'package:social_profile/profile_photo.dart';
import 'package:social_profile/youtube_button.dart';
import 'package:social_profile/youtube_screen/youtube_page.dart';

void main() {
  runApp(MyApp());
}

verticalSpace(double size) {
  return SizedBox(height: size);
}

horizontalSpace(double size) {
  return SizedBox(width: size);
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(body: YouTubeScreen()),
    );
  }
}
