import 'package:papco_shop/src/application/feature/views/home_features/model/models.dart';

class HomeModel {
  TopBanner? topBanner;
  List<Sliders>? sliders;
  List<Brands>? brands;
  List<Amazing>? amazing;
  List<Random>? random;
  List<CategoryBanner>? categoryBanner;
  List<TwoBanners>? twoBanners;

  List<ColOne>? colOne;
  List<ColTwo>? colTwo;
  List<ColThree>? colThree;
  List<ColFour>? colFour;
  List<ColFive>? colFive;

  String? colOneName;
  String? colOneId;

  String? colTwoName;
  String? colTwoId;

  String? colThreeName;
  String? colThreeId;

  String? colFourName;
  String? colFourId;

  String? colFiveName;
  String? colFiveId;

  HomeModel.fromJson(dynamic json) {
    topBanner = json['top_banner'] != null
        ? TopBanner.fromJson(json['top_banner'])
        : null;

    if (json['sliders'] != null) {
      sliders = [];
      json['sliders'].forEach(
        (value) => sliders?.add(
          Sliders.fromJson(value),
        ),
      );
    }

    if (json['brands'] != null) {
      brands = [];
      json['brands'].forEach(
        (value) => brands?.add(
          Brands.fromJson(value),
        ),
      );
    }

    if (json['amazings'] != null) {
      amazing = [];
      json['amazings'].forEach(
        (value) => amazing?.add(
          Amazing.fromJson(value),
        ),
      );
    }
    if (json['random'] != null) {
      random = [];
      json['random'].forEach(
        (value) => random?.add(
          Random.fromJson(value),
        ),
      );
    }

    if (json['category_banner'] != null) {
      categoryBanner = [];
      json['category_banner'].forEach(
        (value) => categoryBanner?.add(
          CategoryBanner.fromJson(value),
        ),
      );
    }

    if (json['banner_two_column'] != null) {
      twoBanners = [];
      json['banner_two_column'].forEach(
        (value) => twoBanners?.add(
          TwoBanners.fromJson(value),
        ),
      );
    }

    if (json['col_one'] != null) {
      colOne = [];
      json['col_one'].forEach(
        (value) => colOne?.add(
          ColOne.fromJson(value),
        ),
      );
      if (json['col_two'] != null) {
        colTwo = [];
        json['col_two'].forEach(
          (value) => colTwo?.add(
            ColTwo.fromJson(value),
          ),
        );
        if (json['col_three'] != null) {
          colThree = [];
          json['col_three'].forEach(
            (value) => colThree?.add(
              ColThree.fromJson(value),
            ),
          );
          if (json['col_four'] != null) {
            colFour = [];
            json['col_four'].forEach(
              (value) => colFour?.add(
                ColFour.fromJson(value),
              ),
            );
            if (json['col_five'] != null) {
              colFive = [];
              json['col_five'].forEach(
                (value) => colFive?.add(
                  ColFive.fromJson(value),
                ),
              );
            }

            colOneId = json['col_one_id'].toString();
            colTwoId = json['col_two_id'].toString();
            colThreeId = json['col_three_id'].toString();
            colFourId = json['col_four_id'].toString();
            colFiveId = json['col_five_id'].toString();
            colOneName = json['col_one_name'];
            colTwoName = json['col_two_name'];
            colThreeName = json['col_three_name'];
            colFourName = json['col_four_name'];
            colFiveName = json['col_five_name'];
          }
        }
      }
    }
  }
}
