import 'package:clean_architecture/src.dart';

@lazySingleton
class PhoneCallerService {
  Future<bool> callDirect(String phoneNumber) async {
    return await FlutterPhoneDirectCaller.callNumber(phoneNumber) ?? false;
  }
}
