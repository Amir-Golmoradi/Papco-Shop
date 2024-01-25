class Brands {
  String? image;
  String? link;

  Brands({required this.image, required this.link});

  factory Brands.fromJson(Map<String, dynamic> json) => Brands(
        image: json['image'],
        link: json['link'],
      );

  Map<String, dynamic> toJson() => {
        'image': image,
        'link': link,
      };
}
