
import 'package:blood_unity_aap/ui/screens/auth/email_verifiacation_screen.dart';
import 'package:blood_unity_aap/ui/screens/auth/personal_information.dart';
import 'package:blood_unity_aap/ui/screens/auth/signin_screen.dart';
import 'package:blood_unity_aap/ui/screens/auth/signup_screen.dart';
import 'package:blood_unity_aap/ui/screens/auth/verify_your_identity.dart';
import 'package:blood_unity_aap/ui/screens/home/home_screen.dart';
import 'package:blood_unity_aap/ui/screens/splash/onboarding_screens.dart';
import 'package:blood_unity_aap/ui/screens/tabs/donor_request.dart';
import 'package:blood_unity_aap/ui/screens/tabs/my_profile.dart';
import 'package:blood_unity_aap/ui/screens/tabs/post_request_tab.dart';

import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'core/app_theme.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
        builder: (context, orientation, deviceType) {
          return GetMaterialApp(
            theme: AppTheme.get(isLight: true),
            darkTheme: AppTheme.get(isLight: false),
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',

            home:
                const MyProfile(),
                // const DonorRequest(),
            // const HomeScreen(),
            // const BoardingScreen(),
            // const EmailVerificationScreen(),
            //  const SignInScreen(),
            // VerifyYourIdentity(),
            //  const PersonalInformation(),
            // SignUpScreen(),
            //  const HomeScreen(),
            // const PostRequestTab(),
            // HomeScreenListTile(image: Image.network('https://png.pngtree.com/png-vector/20220709/ourmid/pngtree-businessman-user-avatar-wearing-suit-with-red-tie-png-image_5809521.png'), name: 'Name Of The Person',status: 'Status',buttonText:'BG' ,),
            builder: EasyLoading.init(),
          );
        }
    );


  }
}


