import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'title_todo_section.dart';

class ButtonAddSection extends StatelessWidget {
  const ButtonAddSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 28.0),
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blue,
              Colors.blueAccent,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            // backgroundColor: MyColors.primaryColor,
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            fixedSize: Size(MediaQuery.of(context).size.width * 1, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: const Text(
            'Tambah Aktivitas',
            style: TextStyle(fontSize: 15),
          ),
        ),
      ),
    );
  }
}
