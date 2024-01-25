
class Amazing {
  String? id;
  String? title;
  String? image;
  String? percent;
  int? percentPrice;
  String? defaultPrice;

  Amazing({
    required this.id,
    required this.title,
    required this.image,
    required this.defaultPrice,
    required this.percent,
    required this.percentPrice,
  });

  factory Amazing.fromJson(Map<String, dynamic> json) => Amazing(
        id: json['id'].toString(),
        title: json['title'],
        image: json['image'],
        defaultPrice: json['default_price'],
        percent: json['percent'].toString(),
        percentPrice: json['percent_price'],
      );
  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'title': title,
        'image': image,
        'default_price': defaultPrice,
        'percent': percent,
        'percent_price': percentPrice,
      };
}