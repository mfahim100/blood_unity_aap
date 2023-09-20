
import 'package:flutter/material.dart';
import 'package:im_stepper/stepper.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../core/constants/const_styles.dart';
import '../../../core/constants/const_texts.dart';
import '../../../core/constants/drop_down_menu_constant.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text_filed.dart';
import '../../widgets/drop_down_menu.dart';

class PersonalInformation extends StatelessWidget {
  const PersonalInformation({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: SizedBox(
            width: 100.w,
            height: 100.h,
            child: SingleChildScrollView(
              child: Column(children: [
                Container(
                  height: 5.5.h,
                  decoration: const BoxDecoration(
                    color: Colors.redAccent,
                  ),
                  child: Center(
                    child: Text(
                      ConstText.topTextInformationScreen,
                      style: ConstStyles.topContainerTextStyle,
                    ),
                  ),
                ),
                SizedBox(
                  height: 0.3.h,
                ),
                NumberStepper(
                  numbers: const [1, 2, 3],
                ),
                SizedBox(
                  height: 0.5.h,
                ),
                Padding(
                  padding: EdgeInsets.all(2.h),
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            ConstText.centerTextInformationScreen,
                            style: ConstStyles.centerTextStyle,
                          )),
                      SizedBox(
                        height: 1.h,
                      ),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            ConstText.subCenterTextInformationScreen,
                            style: ConstStyles.subCenterInformationScreenStyle,
                          )),
                      SizedBox(
                        height: 1.h,
                      ),
                      SingleChildScrollView(
                        child: Form(
                          //  key: personalController.personalInformationKey,
                          child: Column(
                            children: [
                              CustomTextField(
                                hintText: 'Name',
                                labelText: 'Name',
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              CustomTextField(
                                hintText: 'Mobile Number',
                                labelText: 'Mobile Number',
                                textInputType: TextInputType.number,
                                maxLength: 11,
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                    'BirthDay',
                                    style: ConstStyles
                                        .subCenterInformationScreenStyle,
                                  )),
                              SizedBox(
                                height: 0.5.h,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12.sp),
                                    border: Border.all(
                                        color: Colors.grey, width: 5.sp)),
                                child: GestureDetector(
                                  onTap: () =>{},
                                      //personalController.setDOB(context),
                                  child: SizedBox(
                                    width: 100.w,
                                    height: 6.h,
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 4.w),
                                        child: const Text('Date Of Birth'),
                                        // Obx(() => Text(
                                        //       personalController
                                        //           .dobString.value,
                                        //       style: ConstStyles
                                        //           .subCenterInformationScreenStyle,
                                        //     )),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              // CustomTextField(
                              //
                              //     controller:
                              //     personalController.dOBController.value,
                              //     hintText: '01/01/2000',
                              //     labelText: 'Date Of Birth',
                              //     validator:
                              //     personalController.dobNameValidator,
                              // ),
                              SizedBox(
                                height: 0.5.h,
                              ),
                              Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                    'Address',
                                    style: ConstStyles
                                        .subCenterInformationScreenStyle,
                                  )),
                              SizedBox(
                                height: 0.5.h,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                      child: CustomDropDownMenu(
                                          text: 'State/Province',
                                          items:
                                              DropDownMenuConstant.stateItems)),
                                  SizedBox(
                                    width: 1.h,
                                  ),
                                  Expanded(
                                      child: CustomDropDownMenu(
                                    text: 'District',
                                    items: DropDownMenuConstant.districtItems,
                                  )),
                                ],
                              ),
                              SizedBox(
                                height: .8.h,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: CustomTextField(
                                      hintText: 'Council',
                                      labelText: 'Council',
                                    ),
                                  ),
                                  SizedBox(
                                    width: 1.h,
                                  ),
                                  Expanded(
                                    child: CustomTextField(
                                      hintText: 'Village',
                                      labelText: 'Village',
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 1.h),
                              CustomDropDownMenu(
                                  text: 'Country',
                                  items: DropDownMenuConstant.countriesItems),
                              SizedBox(height: 0.5.h),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Column(
                                      children: [
                                        const Text('Gender'),
                                        SizedBox(height: 0.3.h),
                                        CustomDropDownMenu(
                                            text: 'Gender',
                                            items: DropDownMenuConstant
                                                .genderItems)
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 1.h,
                                  ),
                                  Expanded(
                                    child: Column(
                                      children: [
                                        const Text('Blood Group'),
                                        SizedBox(height: 0.3.h),
                                        CustomDropDownMenu(
                                            text: 'Blood Group',
                                            items: DropDownMenuConstant
                                                .bloodGroups),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              CustomButton(
                                  text: 'SUBMIT',
                                  onPressed: () {}),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ),
        ));
  }
}
