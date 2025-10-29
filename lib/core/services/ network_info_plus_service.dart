import '../../src.dart';

@lazySingleton
class NetWorkInfoPlusService{

  final NetworkInfo _info;

  NetWorkInfoPlusService({required NetworkInfo info}) : _info = info;

  Future<String?> getWifiName() => _info.getWifiName();

  Future<String?> getWifiBSSID() => _info.getWifiBSSID();

  Future<String?> getWifiIP() => _info.getWifiIP();

  Future<String?> getWifiGatewayIP() => _info.getWifiGatewayIP();

  Future<String?> getWifiBroadcast() => _info.getWifiBroadcast();

  Future<String?> getWifiSubmask() => _info.getWifiSubmask();


}