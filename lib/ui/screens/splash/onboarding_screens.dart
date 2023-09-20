
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../../core/constants/const_styles.dart';
import '../../../core/constants/const_texts.dart';
import '../../widgets/custom_button.dart';
import '../auth/signin_screen.dart';
import '../auth/signup_screen.dart';

class BoardingScreen extends StatefulWidget {
  const BoardingScreen({Key? key}) : super(key: key);

  @override
  State<BoardingScreen> createState() => _BoardingScreenState();
}

class _BoardingScreenState extends State<BoardingScreen> {
  late LiquidController liquidController;
  @override
  void initState() {
    super.initState();
    liquidController = LiquidController();
  }

  var pages = [
    Container(
      color: Colors.green,
      child: Column(
        children: [
          SizedBox(
            height: 15.h,
          ),
          SizedBox(
            height: 60.h,
            child: SizedBox(
              height: 60.h,
              child: Column(
                children: [
                  Image(
                    height: 37.h,
                    image: const AssetImage(
                        'assets/images/boardingScreens/boardingScreen.png'),
                  ),
                  Text(
                    ConstText.centerTextBoardingText,
                    style: ConstStyles.centerTextBoardingScreenOne,
                  ),
                  SizedBox(
                    height: 4.5.h,
                  ),
                  Text(ConstText.subCenterTextBoardingText,
                      style: ConstStyles.subCenterTextBoardingScreenOne,
                      textAlign: TextAlign.center),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
    Container(
      color: Colors.red,
      child: Column(
        children: [
          SizedBox(
            height: 15.h,
          ),
          SizedBox(
            height: 60.h,
            child: SizedBox(
              height: 60.h,
              child: Column(
                children: [
                  Image(
                    height: 37.h,
                    image: const AssetImage(
                        'assets/images/boardingScreens/boardingScreen1.png'),
                  ),
                  Text(
                    ConstText.centerBoardingScreenTwoText,
                    style: ConstStyles.centerTextBoardingScreenOne,
                  ),
                  SizedBox(
                    height: 4.5.h,
                  ),
                  Text(ConstText.subCenterBoardingScreenTwoText,
                      style: ConstStyles.subCenterTextBoardingScreenOne,
                      textAlign: TextAlign.center),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
    Container(
      color: Colors.grey,
      child: Column(
        children: [
          SizedBox(
            height: 15.h,
          ),
          SizedBox(
            height: 60.h,
            child: SizedBox(
              height: 60.h,
              child: Column(
                children: [
                  Image(
                    height: 37.h,
                    image: const AssetImage(
                        'assets/images/boardingScreens/boardingScreen2.png'),
                  ),
                  Text(
                    ConstText.centerBoardingScreenThreeText,
                    style: ConstStyles.centerTextBoardingScreenOne,
                  ),
                  SizedBox(
                    height: 4.5.h,
                  ),
                  Text(ConstText.subCenterBoardingScreenThreeText,
                      style: ConstStyles.subCenterTextBoardingScreenOne,
                      textAlign: TextAlign.center),
                ],
              ),
            ),
          ),
        ],
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          LiquidSwipe(
            pages: pages,
            liquidController: liquidController,
          ),
          Positioned(
            bottom: 12.h,
            child: SizedBox(
              //color: Colors.blue,
              width: MediaQuery.of(context).size.width,
              height: 17.h,
              child: Row(
                children: [
                  Expanded(
                    child: CustomButton(text: 'REGISTER', onPressed: () {
                    Get.to( const SignUpScreen());
                    }
                    ),
                  ),
                  SizedBox(
                    width: 1.w,
                  ),
                  Expanded(
                      child: CustomButton(text: 'LOGIN ', onPressed: () {
                        Get.to(const SignInScreen());
                      }
                      ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
