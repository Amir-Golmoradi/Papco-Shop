import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefrence {
  late SharedPreferences preference;
  Future<bool> getIntroState() async {
    preference = await SharedPreferences.getInstance();
    final bool status = preference.getBool('intro') ?? false;
    return status;
  }

  Future<void> setIntroStatus() async {
    preference = await SharedPreferences.getInstance();
    await preference.setBool("intro", true);
  }
}
