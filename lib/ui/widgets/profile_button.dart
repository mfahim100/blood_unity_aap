import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../core/constants/const_styles.dart';

class ProfileButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  const ProfileButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 4.5.h,
        width: 45.w,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.red
          ),
            borderRadius: BorderRadius.circular(3.w)),
        child: Center(
            child: Text(
              text,
              style: ConstStyles.profileButtonTextStyle,
            )),
      ),
    );
  }
}
