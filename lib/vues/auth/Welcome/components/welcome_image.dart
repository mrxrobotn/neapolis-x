import 'package:flutter/material.dart';
import '../../../../constants.dart';


class WelcomeImage extends StatelessWidget {
  const WelcomeImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(width: 30),
        const Text(
          "BIENVENUE AU NEAPOLIS_X",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: kDefaultPadding * 2),
        Row(
          children: [
            const Spacer(),
            Expanded(
              flex: 8,
              child: Image.asset(
                "assets/images/neapolis-x-logo.png",width: 80, height: 80,
              ),
            ),
            const Spacer(),
          ],
        ),
        const SizedBox(height: kDefaultPadding * 2),
      ],
    );
  }
}