import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../core/constants/const_styles.dart';
import '../../widgets/homescreen_listtile.dart';


class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: SizedBox(
            width: 100.w,
            height: 100.h,
            child: Column(children: [
              SizedBox(
                height: 12.h,
                child: Padding(
                  padding: EdgeInsets.only(left: 3.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'HELP THE \nCOMMUNITY',
                        style: ConstStyles.homeTabTop,
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.person,
                              size: 30,
                            ),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.notifications,
                                size: 30,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.logout,
                                size: 30,
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 74.h,
                child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) =>
                    const HomeScreenListTile(
                      image: 'assets/images/avatar.jpg',
                      name: 'Muhammad Fahim',
                      status: 'On Progress',
                      buttonText: "B+",
                    ),
                ),
              )
            ]),
          ),
        ));
  }
}
