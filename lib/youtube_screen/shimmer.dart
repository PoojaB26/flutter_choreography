import 'package:flutter/material.dart';

import '../main.dart';

class ShimmerPlaceholder extends StatelessWidget {
  final double height;
  final double width;
  final Color color;

  ShimmerPlaceholder({this.width, this.height, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: color ?? Colors.grey, borderRadius: BorderRadius.circular(4)),
    );
  }
}

class YouTubeVideoPlaceHolder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24.0),
      child: Column(
        children: [
          ShimmerPlaceholder(
            width: MediaQuery.of(context).size.width * 0.8,
            height: 120,
            color: Colors.grey.shade300,
          ),
          verticalSpace(8),
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Row(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundColor: Colors.grey.shade300,
                ),
                horizontalSpace(8),
                Expanded(
                  child: Column(
                    children: [
                      ShimmerPlaceholder(
                        height: 20,
                        color: Colors.grey.shade300,
                      ),
                      verticalSpace(8),
                      ShimmerPlaceholder(
                        height: 12,
                        color: Colors.grey.shade300,
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
