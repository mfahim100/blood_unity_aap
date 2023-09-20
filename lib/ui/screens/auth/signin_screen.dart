
import 'package:blood_unity_aap/ui/screens/auth/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../../core/constants/const_styles.dart';
import '../../../core/constants/const_texts.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text_filed.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);


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
              SizedBox(
                height: 17.h,
              ),
              Padding(
                padding: EdgeInsets.all(2.h),
                child: Form(
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Log In',
                            style: ConstStyles.logInTextStyle,
                          )),
                      SizedBox(
                        height: 1.5.h,
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      CustomTextField(
                          hintText: 'Enter Your Email',
                          labelText: 'Email',
                          prefix: const Icon(Icons.email)),
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
                      Align(
                          alignment: Alignment.bottomRight,
                          child: TextButton(
                              onPressed: () {},
                              child: Text(ConstText.forgotPassword,
                                  style: ConstStyles.forgotPasswordStyle))),


                      SizedBox(
                        height: 1.5.h,
                      ),

                      CustomButton(text: 'Log In', onPressed: () {}
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Don,t have Account?',
                            style: ConstStyles.subCenterTextStyle,
                          ),
                          TextButton(
                            child: Text(
                              'Sign Up',
                              style: ConstStyles.subCenterTextStyle,
                            ),
                            onPressed: () {
                              Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context) {
                                    return SignUpScreen();
                                  }));
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
                              onPressed: () {},
                              icon: const Icon(Icons.facebook, size: 40)),
                          IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                'assets/images/googlelogo.png',
                                fit: BoxFit.fitWidth,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.facebook, size: 40)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

