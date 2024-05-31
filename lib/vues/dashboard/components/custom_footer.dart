import 'package:flutter/material.dart';

import '../../../constants.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: 50,
      decoration: const BoxDecoration(color: kPrimaryLightColor),
      child: const Center(
          child: Text("Copyright © 2024 | Powered by DigiArt LivingLab")),
    );
  }
}
