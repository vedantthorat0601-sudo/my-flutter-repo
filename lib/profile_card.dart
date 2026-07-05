import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
    required this.url,
    this.radius,
    this.height,
    this.width,
    this.color,
  });

  final String url;
  final double? radius;
  final double? height;
  final double? width;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        CircleAvatar(
          radius: radius,
          backgroundColor: Colors.white60,
          backgroundImage: AssetImage(url),
        ),
        Positioned(
          right: 20,
          bottom: 2,
          child: Container(
            height: 22,
            width: 22,

            decoration: BoxDecoration(
              color: Colors.lightGreenAccent,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.white70, width: 2),
            ),
          ),
        ),
      ],
    );
  }
}
