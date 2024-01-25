import 'package:intl/intl.dart';

final formatPattern = NumberFormat('###,###,###');

dynamic getPriceFormat(price) {
  return formatPattern.format(double.parse(price));
}
