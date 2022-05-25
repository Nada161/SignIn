import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

import 'constans.dart';

class ToggleButton extends StatefulWidget {
   ToggleButton({Key? key}) : super(key: key,);

  @override
  State<ToggleButton> createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  @override
  Widget build(BuildContext context) {
    return Center(
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
          print('switched to: $index');
        },
      ),
    )
    ;
  }
}
/*
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
                print('switched to: $index');
              },
            ),
          ),
 */