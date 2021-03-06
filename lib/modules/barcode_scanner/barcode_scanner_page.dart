// ignore_for_file: prefer_const_constructors

import 'package:app_payflow/shared/bottom_sheet/bottom_sheet_widget.dart';
import 'package:app_payflow/shared/themes/app_text_styles.dart';
import 'package:app_payflow/shared/themes/appcolors.dart';
import 'package:app_payflow/shared/widgets/set_label_buttons/set_label_buttons.dart';
import 'package:flutter/material.dart';

class BarcodeScannerPage extends StatefulWidget {
  const BarcodeScannerPage({Key? key}) : super(key: key);

  @override
  State<BarcodeScannerPage> createState() => _BarcodeScannerPageState();
}

class _BarcodeScannerPageState extends State<BarcodeScannerPage> {
  @override
  Widget build(BuildContext context) {
    return BottomSheetWidget(
      title: "Não foi possível indentificar um código de barras.",
      subtitle: "Tente escanear novamente ou digite o código do seu boleto",
      primaryLabel: "Escanear novamente",
      primaryOnPressed: () {},
      secondaryLabel: "Digitar código",
      secondaryOnPressed: () {},
    );
    return SafeArea(
      top: true,
      bottom: true,
      left: true,
      right: true,
      child: RotatedBox(
        quarterTurns: 1,
        child: Scaffold(
            appBar: AppBar(
                backgroundColor: Colors.black,
                title: Text(
                  "Escanei o código de barras do boleto",
                  style: TextStyles.buttonBackground,
                ),
                leading: BackButton(
                  color: AppColors.background,
                )),
            body: Column(
              children: [
                Expanded(
                    child: Container(
                        // color: Colors.black,
                        )),
                Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.transparent,
                    )),
                Expanded(
                    child: Container(
                  color: Colors.black,
                ))
              ],
            ),
            bottomNavigationBar: SetLabelButtons(
              primaryLabel: "Inserir código do boleto",
              primaryOnPressed: () {},
              secondaryLabel: "Adicionar da galeria",
              secondaryOnPressed: () {},
            )),
      ),
    );
  }
}
