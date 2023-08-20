// import 'package:flutter/foundation.dart';

extension BeValueOnInt on int? {
  /// int x = number ?? 0;
  /// =>
  /// x = number.beValue;
  int get beValue => this ?? 0;
}

extension BeValueOnDouble on double? {
  double get beValue => this ?? 0;
}

extension BeValueOnBool on bool? {
  bool get beValue => this ?? false;
}

extension BeValueOnString on String? {
  String get beValue => this ?? '';
}

extension BeValueOnList<T> on List<T>? {
  List<T> get beValue => this ?? [];
}

extension BeValueOnSet<T> on Set<T>? {
  Set<T> get beValue => this ?? {};
}

extension BeValueOnPrinter on dynamic {
  bePrint({
    isDebug = true,
  }) {
    if (isDebug) {
      debugPrint(this);
    } else {
      // ignore: avoid_print
      print(this);
    }
  }
}
