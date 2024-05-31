import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neapolisx/vues/dashboard/components/custom_footer.dart';
import '../../constants.dart';
import '../../responsive.dart';
import 'components/analytic_cards.dart';
import 'components/country_table.dart';
import 'components/custom_appbar.dart';
import 'components/data_results.dart';
import 'components/drawer_menu.dart';
import 'components/questions.dart';
import 'components/rating.dart';
import 'components/users_list.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 5,
              child: SafeArea(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(kDefaultPadding),
                  child: Column(
                    children: [
                      const CustomAppbar(),
                      const SizedBox(
                        height: kDefaultPadding,
                      ),
                      Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 5,
                                child: Column(
                                  children: [
                                    const AnalyticCards(),
                                    const SizedBox(
                                      height: kDefaultPadding,
                                    ),
                                    const DataResults(),


                                  ],
                                ),
                              ),

                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 5,
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: kDefaultPadding,
                                    ),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        if(!Responsive.isMobile(context))
                                          const Expanded(
                                            flex: 2,
                                            child: CountryTable(),
                                          ),
                                        if(!Responsive.isMobile(context))
                                          const SizedBox(width: kDefaultPadding,),
                                        const Expanded(
                                          flex: 3,
                                          child: Questions(),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: kDefaultPadding,
                                    ),
                                    if (Responsive.isMobile(context))
                                      const SizedBox(
                                        height: kDefaultPadding,
                                      ),
                                    if (Responsive.isMobile(context)) const CountryTable(),
                                    if (Responsive.isMobile(context))
                                      const SizedBox(
                                        height: kDefaultPadding,
                                      ),
                                    if (Responsive.isMobile(context)) const AppRating(),
                                  ],
                                ),
                              ),
                              if (!Responsive.isMobile(context))
                                const SizedBox(
                                  width: kDefaultPadding,
                                ),
                              if (!Responsive.isMobile(context))
                                const Expanded(
                                  flex: 2,
                                  child: AppRating(),
                                ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: kDefaultPadding,
                      ),
                      Column(
                        children: [
                          const SizedBox(
                            height: 50,
                            child: Center(
                                child: Text("Copyright © 2023 | Powered by DigiArt LivingLab")),
                          ),
                          Image.asset(
                            "assets/images/dall-logo.png",
                            width: 150,
                            height: 150,
                          ),
                          Image.asset(
                            "assets/images/createc-logo.png",
                            width: 250,
                            height: 80,
                          ),
                          Image.asset(
                            "assets/images/ticdce-logo.png",
                            width: 250,
                            height: 80,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}