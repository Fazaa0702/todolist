import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../section/title_todo_section.dart';
import '../section/button_add_section.dart';

class Todo extends StatelessWidget {
  const Todo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = Get.width;
    double height = Get.height;

    return Scaffold(
      body: SizedBox(
        height: height,
        width: width,
        child: Container(
          color: Color(0xFFF8F8F8),
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitleTodoSection(),
                ButtonAddSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
