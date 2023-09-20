
import 'package:blood_unity_aap/ui/screens/auth/signin_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:im_stepper/stepper.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../core/constants/const_styles.dart';
import '../../../core/constants/const_texts.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text_filed.dart';

class SignUpScreen extends StatelessWidget {
    const SignUpScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SizedBox(
          width: 100.w,
          height: 100.h,
          child: Column(
            children: [
              Container(
                height: 6.h,
                decoration: const BoxDecoration(
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
                height: 2.h,
              ),
              Padding(
                padding: EdgeInsets.all(2.h),
                child: Form(
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            ConstText.centerText,
                            style: ConstStyles.centerTextStyle,
                          )),
                      SizedBox(
                        height: 1.5.h,
                      ),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            ConstText.subCenterText,
                            style: ConstStyles.subCenterTextStyle,
                          )),
                      SizedBox(
                        height: 2.h,
                      ),
                      CustomTextField(
                          hintText: 'Enter Your Email',
                          labelText: 'Email',
                          prefix: const Icon(Icons.email)
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      CustomTextField(
                        obscureText: true,
                        hintText: 'Enter YourPassword',
                        labelText: 'Password',
                        prefix: const Icon(Icons.lock),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      CustomTextField(
                          obscureText: true,
                          hintText: 'Confirm Password',
                          labelText: 'Confirm Password',
                          prefix: const Icon(Icons.lock)),
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(
                        children: [
                          SizedBox(
                              width: 10.w,
                              child: Checkbox(value: false, onChanged: (val) {})),
                          SizedBox(
                              width: 80.w,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    ConstText.tickText1,
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.visible,
                                  ),
                                  Text(
                                    ConstText.tickText2,
                                    textAlign: TextAlign.start,
                                    overflow: TextOverflow.visible,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      CustomButton(text: 'Create Account', onPressed: () {}),
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Already Have Account?',
                            style: ConstStyles.textButtonTextStyle,
                          ),
                          TextButton(
                            child: Text(
                              'Sign In',
                              style: ConstStyles.textButtonTextStyle,
                            ),
                            onPressed: () {
                              Get.to( const SignInScreen());
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () {}, icon: const Icon(Icons.facebook,size: 40)),

                          IconButton(
                              onPressed: () {}, icon:Image.asset('assets/images/googlelogo.png',fit: BoxFit.fitWidth,)),

                          IconButton(
                              onPressed: () {}, icon: const Icon(Icons.facebook,size: 40)),

                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      )

      );


  }
}
