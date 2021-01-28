import 'package:flutter/material.dart';

class YouTubeButton extends StatefulWidget {
  @override
  _YouTubeButtonState createState() => _YouTubeButtonState();
}

class _YouTubeButtonState extends State<YouTubeButton> {
  double size = 250;
  var opacityVal = 1.0;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    size = MediaQuery.of(context).size.width * 0.5;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.5,
          height: 40,
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(4),
          ),
          child: Text(
            'Subscribed',
            style: TextStyle(color: Colors.black45, fontSize: 18),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              size = 0.0;

              opacityVal = 0.0;
            });
          },
          child: AnimatedContainer(
            width: size,
            height: 40,
            alignment: Alignment.center,
            duration: Duration(seconds: 1),
            padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(4),
            ),
            child: AnimatedOpacity(
              duration: Duration(milliseconds: 300),
              opacity: opacityVal,
              child: Text(
                'Subscribe',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
