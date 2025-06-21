import 'package:flutter/material.dart';

import '../constant/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
      child: TextField(
        controller: TextEditingController(),
        decoration: InputDecoration(
            fillColor: AppColors.primaryColor, filled: true,
            border: InputBorder.none
        ),
        style: TextStyle(fontSize: 50),
        readOnly: true,
        autofocus: true,
        showCursor: true,
      ),
    );
  }
}