import 'package:fintech/banking/screen/purchase_button.dart';
import 'package:fintech/banking/utils/banking_images.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class PurchaseMoreScreen extends StatefulWidget {
  const PurchaseMoreScreen({Key? key}) : super(key: key);

  @override
  _PurchaseMoreScreenState createState() => _PurchaseMoreScreenState();
}

class _PurchaseMoreScreenState extends State<PurchaseMoreScreen> {
  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
    //
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: SizedBox(
          width: context.width(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  decoration: boxDecorationDefault(shape: BoxShape.circle),
                  child: Image.asset(
                    Banking_app_logo,
                    height: 180,
                  )),
              22.height,
              Text(
                'Hackathon Project. Screens to be implemented',
                style: boldTextStyle(size: 22),
                textAlign: TextAlign.center,
              ),
              16.height,
              PurchaseButton(),
            ],
          ),
        ).paddingAll(16),
      ),
    );
  }
}
