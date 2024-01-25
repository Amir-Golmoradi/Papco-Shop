class Random {
  final int? id;
  final String? title;
  final String? defaultPrice;
  final String? image;

  Random({
    required this.id,
    required this.title,
    required this.defaultPrice,
    required this.image,
  });

  Random.fromJson(dynamic json)
      : this(
          id: json['id'],
          title: json['title'],
          defaultPrice: json['default_price'],
          image: json['image'],
        );

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'default_price': defaultPrice,
        'image': image
      };
}
