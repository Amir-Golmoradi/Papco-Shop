class Sliders {
  String? image;
  String? link;
  int? id;

  Sliders({required this.image, required this.link, required this.id});

  factory Sliders.fromJson(Map<String, dynamic> json) => Sliders(
        image: json['image'],
        link: json['link'],
        id: json['id'],
      );
  Map<String, dynamic> toJson() => {
        'id': id,
        'image': image,
        'link': link,
      };
}
