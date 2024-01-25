class CategoryBanner {
  final String? image;
  final String? link;
  final String? type;

  CategoryBanner({
    required this.image,
    required this.link,
    required this.type,
  });

  CategoryBanner.fromJson(dynamic json)
      : this(
          image: json['image'],
          link: json['link'],
          type: json['type'],
        );

  Map<String, dynamic> toJson() => {
        'type': type,
        'image': image,
        'link': link,
      };
}
