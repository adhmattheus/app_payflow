// ignore_for_file: prefer_const_constructors

import 'package:app_payflow/shared/themes/app_text_styles.dart';
import 'package:app_payflow/shared/themes/appcolors.dart';
import 'package:app_payflow/shared/widgets/set_label_buttons/set_label_buttons.dart';
import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  final String primaryLabel;
  final VoidCallback primaryOnPressed;
  final String secondaryLabel;
  final VoidCallback secondaryOnPressed;
  final String title;
  final String subtitle;
  const BottomSheetWidget({
    Key? key,
    required this.primaryLabel,
    required this.primaryOnPressed,
    required this.secondaryLabel,
    required this.secondaryOnPressed,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: AppColors.shape,
        child: Column(
          children: [
            Expanded(
                child: Container(
              color: Colors.black.withOpacity(0.6),
            )),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Text.rich(
                    TextSpan(
                        text: title,
                        style: TextStyles.buttonBoldHeading,
                        children: [
                          TextSpan(
                            text: "\n$subtitle",
                            style: TextStyles.buttonHeading,
                          ),
                        ]),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  height: 1,
                  color: AppColors.stroke,
                ),
                SetLabelButtons(
                    primaryLabel: primaryLabel,
                    primaryOnPressed: primaryOnPressed,
                    secondaryLabel: secondaryLabel,
                    secondaryOnPressed: secondaryOnPressed),
                SizedBox(height: 2),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
