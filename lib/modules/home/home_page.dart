// ignore_for_file: prefer_const_constructors

import 'package:app_payflow/shared/themes/app_text_styles.dart';
import 'package:app_payflow/shared/themes/appcolors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(152),
        child: Container(
          height: 152,
          color: AppColors.primary,
          child: Center(
            child: ListTile(
              title: Text.rich(
                TextSpan(
                    text: "Olá, ",
                    style: TextStyles.titleRegular,
                    children: [
                      TextSpan(
                          text: "Mattheus",
                          style: TextStyles.titleBoldBackground)
                    ]),
              ),
              subtitle: Text(
                "Matenha suas contas em dias",
                style: TextStyles.captionShape,
              ),
              trailing: Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
