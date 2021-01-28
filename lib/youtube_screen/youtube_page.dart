import 'package:countup/countup.dart';
import 'package:flutter/material.dart';
import 'package:social_profile/main.dart';
import 'package:social_profile/profile_photo.dart';
import 'package:social_profile/youtube_button.dart';
import 'package:social_profile/youtube_screen/shimmer.dart';
import 'package:social_profile/youtube_screen/youtube_screen_animator.dart';

class YouTubeScreen extends StatefulWidget {
  @override
  _YouTubeScreenState createState() => _YouTubeScreenState();
}

class _YouTubeScreenState extends State<YouTubeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  YouTubeScreenAnimator animation;

  @override
  void initState() {
    _controller = new AnimationController(
      duration: const Duration(milliseconds: 3000),
      vsync: this,
    );

    animation = YouTubeScreenAnimator(_controller);
    _controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation.controller,
      builder: (context, child) => Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            verticalSpace(64),
            Row(
              children: [
                Opacity(
                    opacity: animation.profileOpacity.value,
                    child: ProfilePhoto(54)),
                horizontalSpace(24),
                Transform(
                  transform: new Matrix4.translationValues(
                    animation.infoX.value,
                    0.0,
                    0.0,
                  ),
                  child: Opacity(
                    opacity: animation.profileOpacity.value,
                    child: _infoWithButton(),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Opacity(
                opacity: animation.placeHolderOpacity.value,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (context, index) => YouTubeVideoPlaceHolder(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  _infoWithButton() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Pooja Bhaumik',
          style: TextStyle(fontSize: 24),
        ),
        Row(
          children: [
            Countup(
              begin: 600,
              end: 680,
              duration: Duration(seconds: 3),
              separator: ',',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Text(
              ' subscribers',
              style: TextStyle(fontSize: 18, color: Colors.blueGrey),
            ),
          ],
        ),
        verticalSpace(24),
        Transform(
            transform: new Matrix4.diagonal3Values(
              animation.buttonPop.value,
              animation.buttonPop.value,
              1.0,
            ),
            child: YouTubeButton()),
      ],
    );
  }
}
