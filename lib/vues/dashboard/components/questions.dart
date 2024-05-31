import 'package:flutter/material.dart';
import '../../../constants.dart';
import 'questions_data_list.dart';



class Questions extends StatelessWidget {
  const Questions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      padding: const EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Questions:',
            style: TextStyle(
              color: kGrey,
              fontWeight: FontWeight.w700,
              fontSize: 15,
            ),
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          Expanded(
            child: QuestionsDataList(),
          )
        ],
      ),
    );
  }
}
