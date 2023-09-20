
import 'package:flutter/material.dart';
import 'package:im_stepper/stepper.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../core/constants/const_styles.dart';
import '../../../core/constants/const_texts.dart';
import '../../widgets/listtile_verify_screen.dart';




class VerifyYourIdentity extends StatelessWidget {
   const VerifyYourIdentity({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return
        Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SizedBox(
          width: 100.w,
          height: 100.h,
          child: Column(
            children: [
              Container(
                height: 5.5.h,
                decoration:const BoxDecoration(
                  color: Colors.redAccent,
                ),
                child: Center(
                  child: Text(
                    ConstText.topText,
                    style: ConstStyles.topContainerTextStyle,
                  ),
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              NumberStepper(
                numbers: const [
                  1,
                  2,
                  3
                ],
              ),

              SizedBox(
                height: 1.h,
              ),
              Padding(
                padding: EdgeInsets.all(2.h),
                child: Form(
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            ConstText.centerTextVerifyScreen,
                            style: ConstStyles.centerTextStyle,
                          )),
                      SizedBox(
                        height:1.h,
                      ),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            ConstText.subCenterTextVerifyScreen,
                            style: ConstStyles.subCenterTextStyle,
                          )),
                      SizedBox(
                        height: 2.5.h,
                      ),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            ConstText.subCenterTextVerifyScreen2,
                            style: ConstStyles.subCenteStyleVerify,
                          )),

                      SizedBox(
                        height: 2.h,
                      ),


                      ListTileVerifyScreen(text: 'National ID', onPressed:(){},),


                      SizedBox(
                        height: 2.h,
                      ),
                      ListTileVerifyScreen(text: 'Passport', onPressed:(){},),

                      SizedBox(
                        height: 2.h,
                      ),

                      ListTileVerifyScreen(text: 'Driver Licences', onPressed:(){}),


                      SizedBox(
                        height: 2.h,
                      ),

                      ListTileVerifyScreen(text: 'Student ID', onPressed:(){}),

                      SizedBox(
                        height: 2.h,
                      ),

                      ListTileVerifyScreen(text: 'Form B', onPressed:(){}),



                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ) ;


  }
}
