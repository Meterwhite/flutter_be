import 'be.dart';

extension BeOnBool on Be<bool?> {
  /// isLogin.be.valueCase
  void valueCase({
    required Function()? onTure,
    required Function()? onFalse,
    required Function()? onFalseOrNull,
  }) {
    if (source == true) {
      onTure?.call();
    } else if (source == false) {
      onFalse?.call();
      onFalseOrNull?.call();
    } else if (source == null) {
      onFalseOrNull?.call();
    }
  }
}
