import 'package:flutter/material.dart';
import 'profile_info.dart';
import 'search_field.dart';


class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: SearchField()
        ),
        ProfileInfo()
      ],
    );
  }
}
