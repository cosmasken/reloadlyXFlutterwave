class Topup {
  late int transactionId;
  late String operatorTransactionId;
  late Null customIdentifier;
  late String recipientPhone;
  late Null recipientEmail;
  late Null senderPhone;
  late String countryCode;
  late int operatorId;
  late String operatorName;
  late int discount;
  late String discountCurrencyCode;
  late int requestedAmount;
  late String requestedAmountCurrencyCode;
  late int deliveredAmount;
  late String deliveredAmountCurrencyCode;
  late String transactionDate;
  late Null pinDetail;
  late BalanceInfo balanceInfo;

  Topup(
      {required this.transactionId,
        required this.operatorTransactionId,
        required this.customIdentifier,
        required this.recipientPhone,
        required this.recipientEmail,
        required this.senderPhone,
        required this.countryCode,
        required this.operatorId,
        required this.operatorName,
        required this.discount,
        required this.discountCurrencyCode,
        required this.requestedAmount,
        required this.requestedAmountCurrencyCode,
        required this.deliveredAmount,
        required this.deliveredAmountCurrencyCode,
        required this.transactionDate,
        required this.pinDetail,
        required this.balanceInfo});

  Topup.fromJson(Map<String, dynamic> json) {
    transactionId = json['transactionId'];
    operatorTransactionId = json['operatorTransactionId'];
    customIdentifier = json['customIdentifier'];
    recipientPhone = json['recipientPhone'];
    recipientEmail = json['recipientEmail'];
    senderPhone = json['senderPhone'];
    countryCode = json['countryCode'];
    operatorId = json['operatorId'];
    operatorName = json['operatorName'];
    discount = json['discount'];
    discountCurrencyCode = json['discountCurrencyCode'];
    requestedAmount = json['requestedAmount'];
    requestedAmountCurrencyCode = json['requestedAmountCurrencyCode'];
    deliveredAmount = json['deliveredAmount'];
    deliveredAmountCurrencyCode = json['deliveredAmountCurrencyCode'];
    transactionDate = json['transactionDate'];
    pinDetail = json['pinDetail'];
    balanceInfo = (json['balanceInfo'] != null
        ? new BalanceInfo.fromJson(json['balanceInfo'])
        : null)!;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['transactionId'] = this.transactionId;
    data['operatorTransactionId'] = this.operatorTransactionId;
    data['customIdentifier'] = this.customIdentifier;
    data['recipientPhone'] = this.recipientPhone;
    data['recipientEmail'] = this.recipientEmail;
    data['senderPhone'] = this.senderPhone;
    data['countryCode'] = this.countryCode;
    data['operatorId'] = this.operatorId;
    data['operatorName'] = this.operatorName;
    data['discount'] = this.discount;
    data['discountCurrencyCode'] = this.discountCurrencyCode;
    data['requestedAmount'] = this.requestedAmount;
    data['requestedAmountCurrencyCode'] = this.requestedAmountCurrencyCode;
    data['deliveredAmount'] = this.deliveredAmount;
    data['deliveredAmountCurrencyCode'] = this.deliveredAmountCurrencyCode;
    data['transactionDate'] = this.transactionDate;
    data['pinDetail'] = this.pinDetail;
    if (this.balanceInfo != null) {
      data['balanceInfo'] = this.balanceInfo.toJson();
    }
    return data;
  }
}

class BalanceInfo {
  late double oldBalance;
  late double newBalance;
  late String currencyCode;
  late String currencyName;
  late String updatedAt;

  BalanceInfo(
      {required this.oldBalance,
        required this.newBalance,
        required this.currencyCode,
        required this.currencyName,
        required this.updatedAt});

  BalanceInfo.fromJson(Map<String, dynamic> json) {
    oldBalance = json['oldBalance'];
    newBalance = json['newBalance'];
    currencyCode = json['currencyCode'];
    currencyName = json['currencyName'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['oldBalance'] = this.oldBalance;
    data['newBalance'] = this.newBalance;
    data['currencyCode'] = this.currencyCode;
    data['currencyName'] = this.currencyName;
    data['updatedAt'] = this.updatedAt;
    return data;
  }
}
