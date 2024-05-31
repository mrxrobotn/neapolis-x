import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constants.dart';
import 'data_results_list.dart';

class DataResults extends StatelessWidget {
  const DataResults({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: double.infinity,
      padding: const EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Utilisateurs :",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 15,
              color: kGrey,
            ),
          ),
          Expanded(
            child: DataResultsList(),
          )
        ],
      ),
    );
  }
}
