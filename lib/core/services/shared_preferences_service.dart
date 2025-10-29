import 'package:clean_architecture/src.dart';

abstract class SharedPreferencesService{
  late final SharedPreferences _pref;

  SharedPreferencesService({required SharedPreferences pref}) : _pref = pref;

  // ==================== GET METHODS ====================

  String? getString({required String key}) => _pref.getString(key);

  bool? getBool({required String key}) => _pref.getBool(key);

  int? getInt({required String key}) => _pref.getInt(key);

  double? getDouble({required String key}) => _pref.getDouble(key);

  List<String>? getStringList({required String key}) => _pref.getStringList(key);

  // ==================== SET METHODS ====================
  Future<bool> setString({required String key, required String value}) => _pref.setString(key, value);

  Future<bool> setBool({required String key, required bool value}) => _pref.setBool(key, value);

  Future<bool> setInt({required String key, required int value}) => _pref.setInt(key, value);

  Future<bool> setDouble({required String key, required double value}) => _pref.setDouble(key, value);

  Future<bool> setStringList({required String key, required List<String> value}) => _pref.setStringList(key, value);

  // ==================== REMOVE & CLEAR ====================
  Future<bool> remove({required String key}) => _pref.remove(key);

  Future<bool> clear() => _pref.clear();

  // ==================== CHECK EXISTENCE ====================
  bool containsKey({required String key}) => _pref.containsKey(key);

  // ==================== GET ALL KEYS ====================
  Set<String> getKeys() => _pref.getKeys();



}