
import 'package:shared_preferences/shared_preferences.dart';
import 'package:alphacommunity/global.dart' as global;

void setPrefsFirstStart(bool bool) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  // global.tokenValue = prefs.getString("tokenValue")!;
  prefs.setBool('firstStart', bool);
  global.firstStart = bool;
  
}