import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'donar_request_button.dart';

class DonorRequestConstContainer extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String city;
  final String bloodGroup;

  const DonorRequestConstContainer({
    super.key,
    required this.name,
    required this.city,
    required this.bloodGroup,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 99.w,
      height: 19.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.w),
        boxShadow: [
          BoxShadow(
            blurRadius: 5.sp,
            spreadRadius: 5.sp,
            color: Colors.grey.withOpacity(.15),
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(3.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image(
                  image: AssetImage(imageUrl),
                  height: 6.5.h,
                  width: 16.w,
                ),
                SizedBox(
                  width: 3.w,
                ),
                Column(
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 17.sp),
                    ),
                    Row(
                      children: [
                        const Icon(Icons.location_on),
                        Text(
                          city,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15.5.sp),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: 2.w,
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.send)),
                Container(
                  clipBehavior: Clip.antiAlias,
                  height: 6.h,
                  width: 10.w,
                  decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15.sp),
                          bottomLeft: Radius.circular(15.sp))),
                  child: Center(
                      child: Text(
                    bloodGroup,
                    style:
                        TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
                  )),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 1.5.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              DonorRequestButton(text: 'Confirm', onPressed: () {}),
              DonorRequestButton(text: 'View Profile', onPressed: () {}),
            ],
          )
        ],
      ),
    );
  }


}
