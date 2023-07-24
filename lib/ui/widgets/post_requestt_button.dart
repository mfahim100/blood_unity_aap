import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../core/constants/const_styles.dart';

class PostRequestButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  const PostRequestButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 5.h,
      width: 13.w,
      child: InkWell(
        onTap: onPressed,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(3.w)),
          child: Center(
              child: Text(
                text,
                style: ConstStyles.buttonTextStyle,
              )),
        ),
      ),
    );
  }
}
