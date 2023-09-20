import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../../core/constants/const_styles.dart';
import '../../../core/constants/const_texts.dart';
import '../../widgets/custom_button.dart';

class EmailVerificationScreen extends StatelessWidget {
  const EmailVerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
          height: 100.h,
          width: 100.w,
          child: Column(
            children: [
              SizedBox(
                height: 6.h,
              ),
              Image(
                height: 30.h,
                image: const AssetImage('assets/images/email_verification.png'),
              ),
              SizedBox(
                height: 3.h,
              ),
              Text(
                'Verify Your Email',
                style: ConstStyles.centerTextStyleEmailVerification,
              ),
              SizedBox(
                height: 3.h,
              ),
              Text(
                ConstText.verifyEmailSubCenterText,
                style: ConstStyles.verifyEmailSubCenterText,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 3.h,
              ),
              Text(
                ConstText.verificationCode,
                style: ConstStyles.verificationCodeStyle,
                textAlign: TextAlign.left,
              ),

              SizedBox(height: 2.h,),

              OtpTextField(
                textStyle: TextStyle(
                  fontSize: 20.sp
                ),
                numberOfFields: 6,
                fieldWidth: 52,
                filled: true,
                keyboardType: TextInputType.number,
              ),

              SizedBox(height: 4.h,),

              SizedBox(
                  width: 88.w,
                  child: CustomButton(text: 'Submit', onPressed: (){})),
            ],
          )),
    );
  }
}
