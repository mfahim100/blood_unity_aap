import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ReasonTextField extends StatelessWidget {
  final String hintText;
  final String labelText;
  final TextInputType textInputType;
  TextEditingController? controller = TextEditingController();
  final String? Function(String?)? validator;

  ReasonTextField({
    Key? key,
    required this.hintText,
    required this.labelText,
    this.textInputType = TextInputType.text,
    this.validator,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 93.w,
      child: TextFormField(
        maxLines: 06,
        textAlign: TextAlign.start,
        validator: validator,
        keyboardType: textInputType,
        controller: controller,
        cursorColor: Colors.white,
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(3.w),
          ),
        ),
      ),
    );
  }
}
