import 'package:fintech/banking/utils/banking_colors.dart';
import 'package:fintech/banking/utils/banking_constants.dart';
import 'package:fintech/banking/utils/banking_widget.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class PurchaseButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppButton(
      text: 'Hire me',
      color: Banking_Primary,
      textStyle: boldTextStyle(color: Colors.white),
      shapeBorder: RoundedRectangleBorder(borderRadius: radius(10)),
      onTap: () {
        launchURL(purChaseUrl);
      },
    );
  }
}
