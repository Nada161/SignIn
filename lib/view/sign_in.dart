import 'package:flutter/material.dart';
import 'package:task1/widgets/constans.dart';
import 'package:task1/widgets/custom_text.dart';
import 'package:task1/widgets/custom_text_form_field.dart';
import 'package:toggle_switch/toggle_switch.dart';

class SignIn extends StatefulWidget {
  @override
  State<SignIn> createState() => _SignInState();
}
class _SignInState extends State<SignIn> {
  List sentence1=[
    'Ready to start trading with real money?',
    'Practise with paper trading'
  ];
  List sentence2=[
    'Forgot your username/password?',
    'Forgot password?'
  ];
  late String st1= sentence1[0];
  late String st2= sentence2[0];
  onToggeld(index){
    st1=sentence1[index];
    st2=sentence2[index];
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 87.41),
          Image.asset(
            'images/Frame 2.png',
            width: 80.11,
            height: 87.4,
          ),
          SizedBox(height: 62.2),
          Center(
            child: ToggleSwitch(
              minWidth: 334.64,
              minHeight: 42.0,
              cornerRadius: 10.0,
              activeFgColor: primryColor,
              inactiveBgColor: tColor,
              inactiveFgColor: KMainColor,
              activeBgColor: [KMainColor],
              initialLabelIndex: 0,
              totalSwitches: 2,
              labels: [
                'Live',
                'Prepar Trading',
              ],
              radiusStyle: true,
              onToggle: (index) {
setState(() {
  onToggeld(index);

});                //print('switched to: $index');
              },
            ),
          ),
          Row(
            children: [
              CustomText(
                text: st1,
                //condition ? expOne : Exp
                color: st1==sentence1[0]?KMainColor:Colors.black,
                textSize: 16,
                fontWeight: FontWeight.w400,
                l: 15, r: 0, t: 31, b: 29,
              ),
            ],
          ),
          CustomText(
            text: 'Log in',
            color: KMainColor,
            textSize: 18,
            fontWeight: FontWeight.w500,
            l: 16.25, r: 290, t: 0, b: 8,
          ),
          Row(
            children: [
              CustomText(
                text: 'Don’t have an account? ',
                color: Colors.black,
                textSize: 12,
                fontWeight: FontWeight.w400,
                l: 16.25, r: 0, t: 0, b: 20,
              ),
              CustomText(
                text: 'Sign Up.',
                color: KMainColor,
                textSize: 12,
                fontWeight: FontWeight.w400,
                l: 0, r: 0, t: 0, b: 20,
              ),
            ],
          ),
          CustomTextFormField(
            hintText: 'Username or Email',
          ),
          SizedBox(height: 23),
          CustomTextFormField(
            hintText: 'Password',
            suffixIcon: Icon(Icons.visibility_off),
          ),
          Row(
            children: [
              CustomText(
                text: st2,
                color: KMainColor,
                textSize: 12,
                fontWeight: FontWeight.w400,
                l: 16, r: 0, t: 12, b: 20,
              ),
            ],
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
                elevation: 6,
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                backgroundColor: KMainColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14))),
            child: CustomText(
              text: 'Login',
              textSize: 15,
              color: primryColor,
              fontWeight: FontWeight.w400,
              l: 20, r: 20, t: 8, b: 8,
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
