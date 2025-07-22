import 'package:flutter/material.dart';
import 'package:zimro/core/utils/app_text_styles.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42,
      width: 343,
      child: TextFormField(
        cursorColor: Colors.white,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          labelText: "Email",
          labelStyle: AppTextStyles.caption3Regular.copyWith(
            fontSize: 14,
            color: Colors.white,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(4),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        autocorrect: true,
        autofocus: true,
        cursorOpacityAnimates: true,
      ),
    );
  }
}
