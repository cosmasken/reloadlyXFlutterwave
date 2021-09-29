import 'dart:convert';

GiftCard giftCardFromJson(String str) => GiftCard.fromJson(json.decode(str));

String giftCardToJson(GiftCard data) => json.encode(data.toJson());

class GiftCard {
  GiftCard({
    required this.content,
    required this.pageable,
    required this.last,
    required this.totalPages,
    required this.totalElements,
    required this.sort,
    required this.first,
    required this.numberOfElements,
    required this.size,
    required this.number,
    required this.empty,
  });

  final List<Content> content;
  final Pageable pageable;
  final bool last;
  final int totalPages;
  final int totalElements;
  final Sort sort;
  final bool first;
  final int numberOfElements;
  final int size;
  final int number;
  final bool empty;

  factory GiftCard.fromJson(Map<String, dynamic> json) => GiftCard(
        content:
            List<Content>.from(json["content"].map((x) => Content.fromJson(x))),
        pageable: Pageable.fromJson(json["pageable"]),
        last: json["last"],
        totalPages: json["totalPages"],
        totalElements: json["totalElements"],
        sort: Sort.fromJson(json["sort"]),
        first: json["first"],
        numberOfElements: json["numberOfElements"],
        size: json["size"],
        number: json["number"],
        empty: json["empty"],
      );

  Map<String, dynamic> toJson() =>
      {
        "content": List<dynamic>.from(content.map((x) => x.toJson())),
        "pageable": pageable.toJson(),
        "last": last,
        "totalPages": totalPages,
        "totalElements": totalElements,
        "sort": sort.toJson(),
        "first": first,
        "numberOfElements": numberOfElements,
        "size": size,
        "number": number,
        "empty": empty,
      };
}

class Content {
  Content({
    required this.productId,
    required this.productName,
    required this.global,
    required this.senderFee,
    required this.discountPercentage,
    required this.denominationType,
    required this.recipientCurrencyCode,
    required this.minRecipientDenomination,
    required this.maxRecipientDenomination,
    required this.senderCurrencyCode,
    required this.minSenderDenomination,
    required this.maxSenderDenomination,
    required this.fixedRecipientDenominations,
    required this.fixedSenderDenominations,
    required this.fixedRecipientToSenderDenominationsMap,
    required this.logoUrls,
    required this.brand,
    required this.country,
  });

  final int productId;
  final String productName;
  final bool global;
  final double senderFee;
  final double discountPercentage;
  final DenominationType denominationType;
  final RecipientCurrencyCode recipientCurrencyCode;
  final dynamic minRecipientDenomination;
  final dynamic maxRecipientDenomination;
  final SenderCurrencyCode senderCurrencyCode;
  final dynamic minSenderDenomination;
  final dynamic maxSenderDenomination;
  final List<double> fixedRecipientDenominations;
  final List<double> fixedSenderDenominations;
  final Map<String, double> fixedRecipientToSenderDenominationsMap;
  final List<String> logoUrls;
  final Brand brand;
  final Country country;

  factory Content.fromJson(Map<String, dynamic> json) => Content(
        productId: json["productId"],
        productName: json["productName"],
        global: json["global"],
        senderFee: json["senderFee"].toDouble(),
        discountPercentage: json["discountPercentage"].toDouble(),
        denominationType:
            denominationTypeValues.map![json["denominationType"]]!,
        recipientCurrencyCode:
            recipientCurrencyCodeValues.map![json["recipientCurrencyCode"]]!,
        minRecipientDenomination: json["minRecipientDenomination"],
        maxRecipientDenomination: json["maxRecipientDenomination"],
        senderCurrencyCode:
            senderCurrencyCodeValues.map![json["senderCurrencyCode"]]!,
        minSenderDenomination: json["minSenderDenomination"],
        maxSenderDenomination: json["maxSenderDenomination"],
        fixedRecipientDenominations: List<double>.from(
            json["fixedRecipientDenominations"].map((x) => x.toDouble())),
        fixedSenderDenominations: List<double>.from(
            json["fixedSenderDenominations"].map((x) => x.toDouble())),
        fixedRecipientToSenderDenominationsMap:
            Map.from(json["fixedRecipientToSenderDenominationsMap"])
                .map((k, v) => MapEntry<String, double>(k, v.toDouble())),
        logoUrls: List<String>.from(json["logoUrls"].map((x) => x)),
        brand: Brand.fromJson(json["brand"]),
        country: Country.fromJson(json["country"]),
      );

  Map<String, dynamic> toJson() => {
        "productId": productId,
        "productName": productName,
        "global": global,
        "senderFee": senderFee,
        "discountPercentage": discountPercentage,
        "denominationType": denominationTypeValues.reverse[denominationType],
        "recipientCurrencyCode":
            recipientCurrencyCodeValues.reverse[recipientCurrencyCode],
        "minRecipientDenomination": minRecipientDenomination,
        "maxRecipientDenomination": maxRecipientDenomination,
        "senderCurrencyCode":
            senderCurrencyCodeValues.reverse[senderCurrencyCode],
        "minSenderDenomination": minSenderDenomination,
        "maxSenderDenomination": maxSenderDenomination,
        "fixedRecipientDenominations":
            List<dynamic>.from(fixedRecipientDenominations.map((x) => x)),
        "fixedSenderDenominations":
            List<dynamic>.from(fixedSenderDenominations.map((x) => x)),
        "fixedRecipientToSenderDenominationsMap":
            Map.from(fixedRecipientToSenderDenominationsMap)
                .map((k, v) => MapEntry<String, dynamic>(k, v)),
        "logoUrls": List<dynamic>.from(logoUrls.map((x) => x)),
        "brand": brand.toJson(),
        "country": country.toJson(),
      };
}

class Brand {
  Brand({
    required this.brandId,
    required this.brandName,
  });

  final int brandId;
  final BrandName brandName;

  factory Brand.fromJson(Map<String, dynamic> json) => Brand(
        brandId: json["brandId"],
        brandName: brandNameValues.map![json["brandName"]]!,
      );

  Map<String, dynamic> toJson() => {
        "brandId": brandId,
        "brandName": brandNameValues.reverse[brandName],
      };
}

enum BrandName {
  THE_1800_PET_SUPPLIES,
  AMAZON,
  APP_STORE_I_TUNES,
  APPLE_MUSIC,
  BARNES_NOBLE,
  CALL_OF_DUTY_MODERN_WARFARE
}

final brandNameValues = EnumValues({
  "Amazon": BrandName.AMAZON,
  "Apple Music": BrandName.APPLE_MUSIC,
  "App Store & iTunes": BrandName.APP_STORE_I_TUNES,
  "Barnes & Noble": BrandName.BARNES_NOBLE,
  "CALL OF DUTY: MODERN WARFARE": BrandName.CALL_OF_DUTY_MODERN_WARFARE,
  "1-800-PetSupplies": BrandName.THE_1800_PET_SUPPLIES
});

class Country {
  Country({
    required this.isoName,
    required this.name,
    required this.flagUrl,
  });

  final String isoName;
  final String name;
  final String flagUrl;

  factory Country.fromJson(Map<String, dynamic> json) => Country(
        isoName: json["isoName"],
        name: json["name"],
        flagUrl: json["flagUrl"],
      );

  Map<String, dynamic> toJson() => {
        "isoName": isoName,
        "name": name,
        "flagUrl": flagUrl,
      };
}

enum DenominationType { FIXED }

final denominationTypeValues = EnumValues({"FIXED": DenominationType.FIXED});

enum RecipientCurrencyCode { USD, GBP, EUR, CAD, AED, SAR }

final recipientCurrencyCodeValues = EnumValues({
  "AED": RecipientCurrencyCode.AED,
  "CAD": RecipientCurrencyCode.CAD,
  "EUR": RecipientCurrencyCode.EUR,
  "GBP": RecipientCurrencyCode.GBP,
  "SAR": RecipientCurrencyCode.SAR,
  "USD": RecipientCurrencyCode.USD
});

enum SenderCurrencyCode { GHS }

final senderCurrencyCodeValues = EnumValues({"GHS": SenderCurrencyCode.GHS});

class Pageable {
  Pageable({
    required this.sort,
    required this.pageNumber,
    required this.pageSize,
    required this.offset,
    required this.unpaged,
    required this.paged,
  });

  final Sort sort;
  final int pageNumber;
  final int pageSize;
  final int offset;
  final bool unpaged;
  final bool paged;

  factory Pageable.fromJson(Map<String, dynamic> json) => Pageable(
        sort: Sort.fromJson(json["sort"]),
        pageNumber: json["pageNumber"],
        pageSize: json["pageSize"],
        offset: json["offset"],
        unpaged: json["unpaged"],
        paged: json["paged"],
      );

  Map<String, dynamic> toJson() => {
        "sort": sort.toJson(),
        "pageNumber": pageNumber,
        "pageSize": pageSize,
        "offset": offset,
        "unpaged": unpaged,
        "paged": paged,
      };
}

class Sort {
  Sort({
    required this.sorted,
    required this.unsorted,
    required this.empty,
  });

  final bool sorted;
  final bool unsorted;
  final bool empty;

  factory Sort.fromJson(Map<String, dynamic> json) => Sort(
        sorted: json["sorted"],
        unsorted: json["unsorted"],
        empty: json["empty"],
      );

  Map<String, dynamic> toJson() => {
        "sorted": sorted,
        "unsorted": unsorted,
        "empty": empty,
      };
}

class EnumValues<T> {
  Map<String, T>? map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map!.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap!;
  }
}
