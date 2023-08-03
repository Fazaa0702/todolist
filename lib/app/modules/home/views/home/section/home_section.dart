import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'date_section.dart';

class HomeSection extends StatelessWidget {
  HomeSection({super.key});

  double width = Get.width;
  double height = Get.height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: width,
        height: height,
        child: SingleChildScrollView(
          child: Container(
            color: Color(0xFF8F8F8),
            padding: const EdgeInsets.only(
              bottom: 30,
              right: 20,
              left: 20,
            ),
          ),
        ));
  }
}
