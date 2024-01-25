class TopBanner {
  String? link;
  String? image;
  String? type;

  TopBanner({required this.link, required this.image, required this.type});

  factory TopBanner.fromJson(Map<String, dynamic> json) => TopBanner(
        link: json['link'],
        image: json['image'],
        type: json['type'],
      );

  Map<String, dynamic> toJson() => {
        'link': link,
        'image': image,
        'type': type,
      };
}
