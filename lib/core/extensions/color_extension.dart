import 'package:clean_architecture/src.dart';

extension ColorOpacityExtension on Color {
  Color newWithOpacity(double amount) {
    assert(
    amount >= 0.0 && amount <= 1.0,
    "Opacity must be between 0.0 and 1.0",
    );
    final int alpha = (amount * 255).round();
    return withAlpha(alpha);
  }
}
