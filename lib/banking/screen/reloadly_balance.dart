import 'package:fintech/banking/controller/reloadly_controller.dart';
import 'package:fintech/banking/model/gift_card.dart';
import 'package:fintech/banking/utils/banking_colors.dart';
import 'package:fintech/banking/utils/custom_style.dart';
import 'package:fintech/banking/utils/util.dart';
import 'package:fintech/banking/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nb_utils/nb_utils.dart';


class ReloadlyBalance extends StatelessWidget{
  final navigatorKey = GlobalKey<NavigatorState>();
  final ReloadlyController _reloadlyController = Get.put(ReloadlyController());
  List<Content> contentList = [];
  @override
  Widget build(BuildContext context) {
    final _media = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: const EdgeInsets.only(
          left: 20,
          top: 70,
        ),
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                "Overview",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
              FlatButton(
                onPressed: () => Navigator.pop(context),
                child: const Text(
                  "Cancel",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black87),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          const Text(
            "Accounts",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              inherit: true,
              letterSpacing: 0.4,
            ),
          ),

          reloadlybalance("Reloadly balance", 1, context, const Color(0xFF1b5bff)),

          const SizedBox(
            height: 30,
          ),
          checkBalance(),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Operators",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              inherit: true,
              letterSpacing: 0.4,
            ),
          ),
      const SizedBox(
        height: 30,
      ),
          Text("Phone Number:"),
          const SizedBox(
            height: 30,
          ),
          TextField(
              controller: _reloadlyController.numberTextController),
          const SizedBox(
            height: 30,
          ),
          topupNumber(),

        ],
      ),
    );
  }


  Widget reloadlybalance(
      String text,  int type, BuildContext context, Color color) {
    final _media = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(top: 15, right: 15),
      padding: const EdgeInsets.all(15),
      height: screenAwareSize(90, context),
      width: _media.width / 2 - 25,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                color: color.withOpacity(0.4),
                blurRadius: 16,
                spreadRadius: 0.2,
                offset: const Offset(0, 8)),
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            text,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
      Obx(() => Text(_reloadlyController.balance.value.toString(),
        style: const TextStyle(
          fontSize: 22,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      )),



        ],
      ),
    );
  }
  Widget checkBalance() => ButtonWidget(
    text: 'Refresh',
    onClicked: (){
      _reloadlyController.getBalance();
    },
  );
  Widget topupNumber() => ButtonWidget(
    text: 'Topup',
    onClicked: (){

      //showAlertDialog(navigatorKey.currentContext);
    },
  );
  _title(value) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 12.00,
        bottom: 12.00 * 0.5,
      ),
      child: Text(
        value,
        style: TextStyle(color: Colors.black),
      ),
    );
  }

  showAlertDialog() {

    // set up the button
    Widget okButton = TextButton(
      child: Text("OK"),
      onPressed: () { },
    );

    Widget cancelButton = TextButton(
      child: Text("Cancel"),
      onPressed:  () {
        Get.back();
      },
    );
    Widget continueButton = TextButton(
      child: Text("Continue"),
      onPressed:  () {
        Get.back();
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Buy Credits"),
      content: Container(
        height: Get.height*0.2,
        child: Column(
          children: [
            Text("Phone Number:"),
            TextField(
                controller: _reloadlyController.numberTextController),
          ],
        ),
      ),
      actions: [
        cancelButton,
        continueButton
      ],
    );

    // show the dialog
    Get.dialog(alert);
  }

}
