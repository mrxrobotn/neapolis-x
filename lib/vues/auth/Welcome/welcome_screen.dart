import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../responsive.dart';
import '../../dashboard/components/custom_footer.dart';
import '../background.dart';
import 'components/login_signup_btn.dart';
import 'components/welcome_image.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Background(
      child: SingleChildScrollView(
        child: SafeArea(
          child: Responsive(
            desktop: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      child: WelcomeImage(),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 450,
                            child: LoginAndSignupBtn(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text('Sponsoré par: '),
                      const SizedBox(width: 30),
                      Image.asset(
                        "assets/images/dall-logo.png",
                        width: 160,
                        height: 160,
                      ),
                      const SizedBox(width: 30),
                      Image.asset(
                        "assets/images/createc-logo.png",
                        width: 260,
                        height: 260,
                      ),
                      const SizedBox(width: 30),
                      Image.asset(
                        "assets/images/ticdce-logo.png",
                        width: 260,
                        height: 260,
                      ),
                      const SizedBox(width: 30),
                    ],
                  ),
                ),
                const Footer(),
              ],
            ),
            mobile: const MobileWelcomeScreen(),
          ),
        ),
      ),
    );
  }
}

class MobileWelcomeScreen extends StatelessWidget {
  const MobileWelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const WelcomeImage(),
        const Row(
          children: [
            Spacer(),
            Expanded(
              flex: 8,
              child: LoginAndSignupBtn(),
            ),
            Spacer(),
          ],
        ),
        const SizedBox(height: 30),
        const Text('Sponsoré par: '),
        const SizedBox(height: 30),
        Image.asset(
          "assets/images/dall-logo.png",
          width: 120,
        ),
        const SizedBox(height: 30),
        Image.asset(
          "assets/images/createc-logo.png",
          width: 260,
        ),
        const SizedBox(height: 30),
        Image.asset(
          "assets/images/ticdce-logo.png",
          width: 260,
        ),
        const SizedBox(height: 30),
        const Footer(),
      ],
    );
  }
}
