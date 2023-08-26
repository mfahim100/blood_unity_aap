import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../widgets/donar_request_const_container.dart';

class DonorRequest extends StatelessWidget {
  const DonorRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: 100.h,
        width: 100.w,
        child: Column(
          children: [
            Container(
              width: 99.w,
              height: 11.h,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    // blurRadius: 5.sp,
                    // spreadRadius: 5.sp,
                    color: Colors.grey.withOpacity(.25),
                  ),
                ],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(4.w),
                  bottomRight: Radius.circular(4.w),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_back_ios)),
                      Text(
                        'Donor Request',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 19.5.sp,
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                              Icons.do_not_disturb_on_total_silence_rounded))
                    ],
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'All',
                        style: TextStyle(
                            fontSize: 15.sp, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Nearby',
                        style: TextStyle(
                            fontSize: 15.sp, fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            SizedBox(
              height: 80.h,
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        const DonorRequestConstContainer(
                          name: 'Muhammad Adil',
                          city: 'Talash Timergarah',
                          bloodGroup: 'O+',
                          imageUrl: 'assets/images/avatar.jpg',
                        ),
                        SizedBox(
                          height: 1.5.h,
                        ),
                      ],
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
