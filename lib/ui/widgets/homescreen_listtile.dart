import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../core/constants/const_styles.dart';
import '../../core/constants/const_texts.dart';
import 'descriptionText.dart';

class HomeScreenListTile extends StatelessWidget {
  final String image;
  final String name;
  final String status;
  final String buttonText;

  const HomeScreenListTile({
    Key? key,
    required this.image,
    required this.name,
    required this.status,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2.w),
      margin: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.w),
      clipBehavior: Clip.antiAlias,
      decoration:
          BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.sp),
              boxShadow: [ BoxShadow(
                  color: Colors.blueGrey,
                  blurRadius: 15.sp,
                  spreadRadius: 10.sp,
                  blurStyle: BlurStyle.normal,
                  offset: const Offset(05, 05))]

      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 15.w,
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  height: 30.sp,
                  width: 30.sp,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(15.sp)),
                  child: Image.asset(image),
                ),
              ),
              SizedBox(
                width: 50.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 0.5.h,
                    ),
                    Text(
                      status,
                      style: TextStyle(
                        fontSize: 16.sp,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 13.w,
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  height: 13.w,
                  decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15.sp),
                          bottomLeft: Radius.circular(15.sp))),
                  child: Center(
                      child: Text(
                    buttonText,
                    style:
                        TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
                  )),
                ),
              ),
            ],
          ),
          SizedBox(height: 1.h),
          DescriptionTextWidget(
            text: ConstText.homeScreenContainerText,
          ),
          SizedBox(height: 1.h),
          Divider(
            height: 1.h,
            color: Colors.blueGrey,
          ),
          SizedBox(height: 1.h),
          ListTile(
            leading: const Icon(
              Icons.water_drop_outlined,
              color: Colors.redAccent,
            ),
            title: Text(
              'Plasma Donation',
              style: ConstStyles.subCenterTextStyle,
            ),
          ),
          SizedBox(height: 0.5.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 14.w,
                child:
                    const Icon(Icons.location_on_outlined, color: Colors.redAccent),
              ),
              SizedBox(
                width: 45.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Karimabad Kota Barikot Swat',
                      style: ConstStyles.subCenterTextStyle
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                              text: '8 KM ',
                              style: ConstStyles.subCenterTextStyle
                                  .copyWith(color: Colors.redAccent)),
                          TextSpan(
                              text: '. Barikot',
                              style: ConstStyles.subCenterTextStyle),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(5.sp),
                  height: 5.h,
                  width: 18.w,
                  decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(3.w)),
                  child: Center(
                      child: Text(
                    'Donate',
                    style:
                        ConstStyles.buttonTextStyle.copyWith(fontSize: 15.sp),
                  )),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
