import 'be.dart';

extension BeOnString on Be<String?> {
  void emptyCase({
    void Function()? onEmpty,
    void Function()? onNotEmpty,
    void Function()? onNotEmptyOrNull,
  }) {
    final value = source;
    if (value != null) {
      if (value.isEmpty) {
        onEmpty?.call();
      } else {
        onNotEmpty?.call();
      }
    } else {
      onNotEmptyOrNull?.call();
    }
  }
}
