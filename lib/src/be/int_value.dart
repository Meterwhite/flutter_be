import 'be.dart';

extension BeOnInt on Be<int?> {
  /// 3.be.forLoop((i) => ...);
  void forLoop({
    required void Function(int i) body,
    asc = true,
  }) {
    final intValue = source;
    if (intValue != null) {
      if (asc) {
        for (var i = 0; i < intValue; i++) {
          body(i);
        }
      } else {
        for (var i = intValue - 1; i >= 0; i--) {
          body(i);
        }
      }
    }
  }
}
