import 'package:clean_architecture/src.dart';
import 'injection.config.dart';

final sl = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies() async => sl.init();
