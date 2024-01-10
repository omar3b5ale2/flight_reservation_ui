import 'package:flutter/material.dart';

class ChallengeTicketClipper extends CustomClipper<Path> {
  ChallengeTicketClipper({required this.right, required this.holeRadius});

  final double right;
  final double holeRadius;

  @override
  Path getClip(Size size) {
    final path = Path()
      ..moveTo(0, 0)
//For left side shape of container
      ..lineTo(0.0, size.height - right - holeRadius)
      ..arcToPoint(
        Offset(0, size.height - right),
        clockwise: true,
        radius: const Radius.circular(1),
      )

//For Right side shape of container
      ..lineTo(0.0, size.height)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, size.height - right)
      ..arcToPoint(
        Offset(size.width, size.height - right - holeRadius),
        clockwise: true,
        radius: const Radius.circular(1),
      );

    path.lineTo(size.width, 0.0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(ChallengeTicketClipper oldClipper) => true;
}
