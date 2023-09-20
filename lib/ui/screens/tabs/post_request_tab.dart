import 'package:blood_unity_aap/core/constants/const_texts.dart';
import 'package:blood_unity_aap/ui/widgets/custom_button.dart';
import 'package:blood_unity_aap/ui/widgets/custom_text_filed.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../widgets/post_requestt_button.dart';
import '../../widgets/reason_textfield.dart';

class PostRequestTab extends StatelessWidget {
  const PostRequestTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
          children: [
        Container(
          width: 99.w,
          height: 15.h,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                // blurRadius: 5.sp,
                // spreadRadius: 5.sp,
                color: Colors.grey.withOpacity(.35),
              ),
            ],
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(4.w),
              bottomRight: Radius.circular(4.w),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(2.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 45.w,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 2.h,
                      ),
                      Text(
                        'Post A Request',
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 1.5.h,
                      ),
                      Text(
                        ConstText.upperContanerText,
                        style: TextStyle(
                          fontSize: 15.sp,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 45.w,
                  child: const Image(
                    image: AssetImage(
                        'assets/images/boardingScreens/boardingScreen1.png'),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
            height: 80.h,
            width: 100.w,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                blurRadius: 5.sp,
                color: Colors.grey.withOpacity(.2),
              ),
            ]),
            child: Column(
              children: [
                SizedBox(
                  height: 1.5.h,
                ),
                ReasonTextField(
                  hintText: 'Type You Reason Here',
                  labelText: 'Type You Reason Here',
                ),
                SizedBox(
                  height: 1.5.h,
                ),
                CustomTextField(
                  hintText: 'Location',
                  labelText: 'Location',
                  prefix: const Icon(Icons.location_on),
                ),
                SizedBox(
                  height: 1.5.h,
                ),
                CustomTextField(
                  hintText: 'Hospital',
                  labelText: 'Hospital',
                  prefix: const Icon(Icons.broadcast_on_home),
                ),
                SizedBox(
                  height: 1.5.h,
                ),
                CustomTextField(
                  hintText: 'Type of Blood Location',
                  labelText: 'Blood Location',
                  prefix: const Icon(Icons.arrow_drop_down),
                ),
                SizedBox(
                  height: 3.5.h,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Blood Type',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18.sp),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    PostRequestButton(text: 'A+', onPressed: () {}),
                    PostRequestButton(text: 'A+', onPressed: () {}),
                    PostRequestButton(text: 'A+', onPressed: () {}),
                    PostRequestButton(text: 'A+', onPressed: () {}),
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    PostRequestButton(text: 'A+', onPressed: () {}),
                    PostRequestButton(text: 'A+', onPressed: () {}),
                    PostRequestButton(text: 'A+', onPressed: () {}),
                    PostRequestButton(text: 'A+', onPressed: () {}),
                  ],
                ),
                SizedBox(
                  height: 3.h,
                ),
                SizedBox(
                    width: 95.w,
                    child: CustomButton(text: 'Request', onPressed: () {}))
              ],
            )),
      ]),
    );
  }
}
