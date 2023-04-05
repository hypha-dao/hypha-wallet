import 'package:rx_shared_preferences/rx_shared_preferences.dart';

class MockSharedPreferences implements SharedPreferences {
  final Map<String, dynamic> store = {};

  @override
  Future<bool> clear() async {
    store.clear();
    return true;
  }

  @override
  Future<bool> commit() async {
    return true;
  }

  @override
  bool containsKey(String key) {
    return store.containsKey(key);
  }

  @override
  Object? get(String key) {
    return store[key];
  }

  @override
  bool? getBool(String key) {
    throw UnimplementedError();
  }

  @override
  double? getDouble(String key) {
    throw UnimplementedError();
  }

  @override
  int? getInt(String key) {
    // TODO: implement getInt
    throw UnimplementedError();
  }

  @override
  Set<String> getKeys() {
    // TODO: implement getKeys
    throw UnimplementedError();
  }

  @override
  String? getString(String key) {
    return store[key];
  }

  @override
  List<String>? getStringList(String key) {
    // TODO: implement getStringList
    throw UnimplementedError();
  }

  @override
  Future<void> reload() {
    // TODO: implement reload
    throw UnimplementedError();
  }

  @override
  Future<bool> remove(String key) async {
    store.remove(key);
    print('removed key $key');
    return true;
  }

  @override
  Future<bool> setBool(String key, bool value) {
    // TODO: implement setBool
    throw UnimplementedError();
  }

  @override
  Future<bool> setDouble(String key, double value) {
    // TODO: implement setDouble
    throw UnimplementedError();
  }

  @override
  Future<bool> setInt(String key, int value) {
    // TODO: implement setInt
    throw UnimplementedError();
  }

  @override
  Future<bool> setString(String key, String value) async {
    store[key] = value;
    return true;
  }

  @override
  Future<bool> setStringList(String key, List<String> value) {
    // TODO: implement setStringList
    throw UnimplementedError();
  }
}
