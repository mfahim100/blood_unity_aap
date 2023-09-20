import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ListTileVerifyScreen extends StatelessWidget {
  final String text;
  final Function() onPressed;

  const ListTileVerifyScreen({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 5.8.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3.w),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
            )
          ],
        ),
        child: Padding(
          padding: EdgeInsets.all(1.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
              ),
              const Icon(Icons.last_page_outlined),
            ],
          ),
        ),
      ),
    );
  }
}
