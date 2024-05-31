import 'package:flutter/material.dart';

import '../../../../constants.dart';


class LoginScreenTopImage extends StatelessWidget {
  const LoginScreenTopImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Se connecter".toUpperCase(),
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: kDefaultPadding * 2),
        Row(
          children: [
            const Spacer(),
            Expanded(
              flex: 8,
              child: Image.asset("assets/images/neapolis-x-logo.png"),
            ),
            const Spacer(),
          ],
        ),
        const SizedBox(height: kDefaultPadding * 2),
      ],
    );
  }
}