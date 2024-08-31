import 'dart:convert';

class OnBoardingContent {
  const OnBoardingContent({
    required this.title,
    required this.imageUrl,
    required this.details,
  });

  final String title;
  final String imageUrl;
  final String details;

  factory OnBoardingContent.fromJson(String str) =>
      OnBoardingContent.fromMap(json.decode(str) as Map<String, dynamic>);

  String toJson() => json.encode(toMap());

  factory OnBoardingContent.fromMap(Map<String, dynamic>? json) => OnBoardingContent(
        title: json?["title"]?.toString() ?? '',
        imageUrl: json?["image"]?.toString() ?? '',
        details: json?["details"]?.toString() ?? '',
      );

  Map<String, dynamic> toMap() => <String, dynamic>{
        "title": title,
        "image": imageUrl,
        "details": details,
      };
}
