import '../../src.dart';

final sl = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies() async => sl.init();

@module
abstract class InitModels {
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();


  @lazySingleton
  NetworkInfo get networkInfo => NetworkInfo();

  @lazySingleton
  FilePicker get filePicker => FilePicker.platform;

  @lazySingleton
  ImagePicker get imagePicker => ImagePicker();
}
