// Copyright (c) 2021 Teerasej Jiraphatchandej
//
// This software is released under the MIT License.
// https://opensource.org/licenses/MIT

// To parse this JSON data, do
//
//     final randomUserModel = randomUserModelFromJson(jsonString);

import 'dart:convert';

RandomUserModel randomUserModelFromJson(String str) =>
    RandomUserModel.fromJson(json.decode(str));

String randomUserModelToJson(RandomUserModel data) =>
    json.encode(data.toJson());

class RandomUserModel {
  RandomUserModel({
    required this.results,
    required this.info,
  });

  List<Result>? results;
  Info? info;

  factory RandomUserModel.fromJson(Map<String, dynamic> json) =>
      RandomUserModel(
        results: json["results"] == null
            ? null
            : List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
        info: json["info"] == null ? null : Info.fromJson(json["info"]),
      );

  Map<String, dynamic> toJson() => {
        "results": results == null
            ? null
            : List<dynamic>.from(results!.map((x) => x.toJson())),
        "info": info == null ? null : info?.toJson(),
      };
}

class Info {
  Info({
    required this.seed,
    required this.results,
    required this.page,
    required this.version,
  });

  String? seed;
  int? results;
  int? page;
  String? version;

  factory Info.fromJson(Map<String, dynamic> json) => Info(
        seed: json["seed"] == null ? null : json["seed"],
        results: json["results"] == null ? null : json["results"],
        page: json["page"] == null ? null : json["page"],
        version: json["version"] == null ? null : json["version"],
      );

  Map<String, dynamic> toJson() => {
        "seed": seed == null ? null : seed,
        "results": results == null ? null : results,
        "page": page == null ? null : page,
        "version": version == null ? null : version,
      };
}

class Result {
  Result({
    required this.name,
    required this.phone,
    required this.picture,
  });

  Name? name;
  String? phone;
  Picture? picture;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        name: json["name"] == null ? null : Name.fromJson(json["name"]),
        phone: json["phone"] == null ? null : json["phone"],
        picture:
            json["picture"] == null ? null : Picture.fromJson(json["picture"]),
      );

  Map<String, dynamic> toJson() => {
        "name": name == null ? null : name?.toJson(),
        "phone": phone == null ? null : phone,
        "picture": picture == null ? null : picture?.toJson(),
      };
}

class Name {
  Name({
    required this.title,
    required this.first,
    required this.last,
  });

  Title? title;
  String? first;
  String? last;

  factory Name.fromJson(Map<String, dynamic> json) => Name(
        title: json["title"] == null ? null : titleValues.map[json["title"]],
        first: json["first"] == null ? null : json["first"],
        last: json["last"] == null ? null : json["last"],
      );

  Map<String, dynamic> toJson() => {
        "title": title == null ? null : titleValues.reverse[title],
        "first": first == null ? null : first,
        "last": last == null ? null : last,
      };
}

enum Title { MR, MISS, MRS, MONSIEUR, MS }

final titleValues = EnumValues({
  "Miss": Title.MISS,
  "Monsieur": Title.MONSIEUR,
  "Mr": Title.MR,
  "Mrs": Title.MRS,
  "Ms": Title.MS
});

class Picture {
  Picture({
    required this.large,
    required this.medium,
    required this.thumbnail,
  });

  String? large;
  String? medium;
  String? thumbnail;

  factory Picture.fromJson(Map<String, dynamic> json) => Picture(
        large: json["large"] == null ? null : json["large"],
        medium: json["medium"] == null ? null : json["medium"],
        thumbnail: json["thumbnail"] == null ? null : json["thumbnail"],
      );

  Map<String, dynamic> toJson() => {
        "large": large == null ? null : large,
        "medium": medium == null ? null : medium,
        "thumbnail": thumbnail == null ? null : thumbnail,
      };
}

class EnumValues<T> {
  late Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
