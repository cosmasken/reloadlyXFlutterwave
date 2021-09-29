import 'dart:convert';

Token tokenFromJson(String str) => Token.fromJson(json.decode(str));

String tokenToJson(Token data) => json.encode(data.toJson());

class Token {
  Token({
    required this.accessToken,
    required this.scope,
    required this.expiresIn,
    required this.tokenType,
  });

  final String accessToken;
  final String scope;
  final int expiresIn;
  final String tokenType;

  factory Token.fromJson(Map<String, dynamic> json) => Token(
        accessToken: json["access_token"],
        scope: json["scope"],
        expiresIn: json["expires_in"],
        tokenType: json["token_type"],
      );

  Map<String, dynamic> toJson() => {
        "access_token": accessToken,
        "scope": scope,
        "expires_in": expiresIn,
        "token_type": tokenType,
      };
}
