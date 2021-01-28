import 'package:flutter/material.dart';

class ProfilePhoto extends StatelessWidget {
  final double size;

  ProfilePhoto(this.size);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CircleAvatar(
          radius: size + 2,
          backgroundColor: Colors.red,
        ),
        CircleAvatar(
          radius: size,
          backgroundImage: NetworkImage(
              'https://avatars3.githubusercontent.com/u/19394896?v=4'),
        ),
      ],
    );
  }
}
