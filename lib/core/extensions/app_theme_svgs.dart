
import 'package:clean_architecture/src.dart';

class AppThemeSvgs extends ThemeExtension<AppThemeSvgs>{

  AppThemeSvgs();

  factory AppThemeSvgs.dark() => AppThemeSvgs();

  factory AppThemeSvgs.light() => AppThemeSvgs();

  @override
  ThemeExtension<AppThemeSvgs> copyWith() {
    // TODO: implement copyWith
    throw UnimplementedError();
  }

  @override
  ThemeExtension<AppThemeSvgs> lerp(covariant ThemeExtension<AppThemeSvgs>? other, double t) {
    // TODO: implement lerp
    throw UnimplementedError();
  }

}