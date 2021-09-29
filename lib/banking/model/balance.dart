import 'dart:convert';

Balance balanceFromJson(String str) => Balance.fromJson(json.decode(str));

String balanceToJson(Balance data) => json.encode(data.toJson());

class Balance {
  late double balance;
  late String currencyCode;
  late String currencyName;
  late String updatedAt;

  Balance({required this.balance, required this.currencyCode, required this.currencyName, required this.updatedAt});

  Balance.fromJson(Map<String, dynamic> json) {
    balance = json['balance'];
    currencyCode = json['currencyCode'];
    currencyName = json['currencyName'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['balance'] = this.balance;
    data['currencyCode'] = this.currencyCode;
    data['currencyName'] = this.currencyName;
    data['updatedAt'] = this.updatedAt;
    return data;
  }
}
