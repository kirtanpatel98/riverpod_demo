import 'dart:convert';

class DummyModels {
  DummyModels({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.avatar,
  });

  int id;
  String email;
  String firstName;
  String lastName;
  String avatar;

  List<DummyModels> decodeData(String str) => List<DummyModels>.from(
      json.decode(str).map((x) => DummyModels.fromJson(x)));

  factory DummyModels.fromJson(Map<String, dynamic> json) => DummyModels(
        id: json["id"],
        email: json["email"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        avatar: json["avatar"],
      );
}

class Support {
  Support({
    required this.url,
    required this.text,
  });

  String url;
  String text;

  factory Support.fromRawJson(String str) => Support.fromJson(json.decode(str));

  factory Support.fromJson(Map<String, dynamic> json) => Support(
        url: json["url"],
        text: json["text"],
      );
}
