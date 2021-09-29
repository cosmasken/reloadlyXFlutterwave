import 'package:fintech/banking/controller/reloadly_controller.dart';
import 'package:fintech/banking/screen/banking_splash.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

void main() {
  ReloadlyBinding().dependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wallet App',
      scrollBehavior: SBehavior(),
      home: BankingSplash(),
      debugShowCheckedModeBanner: false,
    );
  }
}
