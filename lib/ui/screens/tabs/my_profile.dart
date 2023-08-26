import 'package:blood_unity_aap/core/constants/const_texts.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../widgets/profile_button.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Container(
            height: 20.h,
            width: 100.w,
            color: Colors.redAccent,
          ),

          Container(
            margin: EdgeInsets.only(top: 15.h),
            height: 80.h,
            decoration:  BoxDecoration(
                color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.w),topRight: Radius.circular(10.w)
              )
            ),
            child: SizedBox(
              child: Column(
                children: [
                  SizedBox(height: 10.h,),
                  Text('Hassan Jamal',style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold
                  ),),
                  SizedBox(height: 2.h,),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.star),
                      Icon(Icons.star),
                      Icon(Icons.star),
                      Icon(Icons.star),
                      Icon(Icons.star),
                      Text('4.5')
                    ],
                  ),
                  SizedBox(height: 2.h,),
                  ProfileButton(text: 'Edit Profile',onPressed: (){},),

                  Divider(height: 2.5.h,color: Colors.black,),

                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Post'),
                      Text('About'),
                      Text('History'),
                      Text('Review'),
                    ],
                  ),
                  Divider(height: 2.5.h,color: Colors.black,),

              SizedBox(
                height: 45.h,
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context,index){
                      return Column(
                        children: [
                          Container(
                            width: 99.w,
                            height: 16.h,
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
                                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image(
                                        image: const AssetImage('assets/images/avatar.jpg'),
                                        height: 6.5.h,
                                        width: 16.w,
                                      ),

                                      SizedBox(width: 3.w,),

                                      Column(
                                        children: [
                                          Text(
                                            'Name of the Person',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold, fontSize: 17.sp),
                                          ),
                                          const Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Icon(Icons.star),
                                              Icon(Icons.star),
                                              Icon(Icons.star),
                                              Icon(Icons.star),
                                              Icon(Icons.star),
                                              Text('4.5')
                                            ],
                                          ),
                                        ],
                                      ),
                                      SizedBox(width: 14.w,),

                                      SizedBox(
                                        height: 6.h,
                                        width: 20.w,
                                        child: const Text('10/10/2023'),
                                      ),

                                    ],
                                  ),
                                ),

                                Text(ConstText.profileContainerText),

                              ],
                            ),
                          ),
                          SizedBox(height: 1.h,)
                        ],
                      );
                    }),
              ),


                ],
              ),
            ),
          ),

          Positioned(
            top: 8.h,
            left: 0,
            right: 0,
            child: SizedBox(
              height: 17.h,
              width: 17.h,
              child: Image.asset(
                  "assets/images/avatar.jpg"),
            ),
          )
              ],
            ),
    );



  }
}
