import 'be.dart';

/// Extension methods for `Be<Iterable?>` to handle different iterable states.
extension EmptyCaseOnBe on Be<Iterable?> {
  /// Handles different cases for a nullable iterable.
  ///
  /// Depending on the state of the `source`, different callbacks are invoked:
  /// - If the source is not `null` and is empty, both `onEmpty` and `onEmptyOrNull` are called.
  /// - If the source is not `null` and is not empty, `onNotEmpty` is called.
  /// - If the source is `null`, `onEmptyOrNull` is called.
  ///
  /// ### Parameters:
  /// - [onEmpty]: Callback to execute when the source is not `null` and empty.
  /// - [onNotEmpty]: Callback to execute when the source is not `null` and not empty.
  /// - [onEmptyOrNull]: Callback to execute when the source is `null` or empty.
  ///
  /// ### Example:
  /// ```dart
  /// [].be.emptyCase(
  ///   onEmpty: () => print('The iterable is empty'),
  ///   onNotEmpty: () => print('The iterable is not empty'),
  ///   onEmptyOrNull: () => print('The iterable is null or empty'),
  /// );
  /// ```
  void emptyCase({
    void Function()? onEmpty,
    void Function()? onNotEmpty,
    void Function()? onEmptyOrNull,
  }) {
    final object = source;
    if (object != null) {
      if (object.isEmpty) {
        onEmpty?.call();
        onEmptyOrNull?.call();
      } else {
        onNotEmpty?.call();
      }
    } else {
      onEmptyOrNull?.call();
    }
  }
}

/// Extension methods for `Be<String?>` to handle different string states.
extension BeOnString on Be<String?> {
  /// Handles different cases for a nullable string.
  ///
  /// Depending on the state of the `source`, different callbacks are invoked:
  /// - If the source is not `null` and is empty, `onEmpty` is called.
  /// - If the source is not `null` and is not empty, `onNotEmpty` is called.
  /// - If the source is `null`, `onNotEmptyOrNull` is called.
  ///
  /// ### Parameters:
  /// - [onEmpty]: Callback to execute when the source is not `null` and empty.
  /// - [onNotEmpty]: Callback to execute when the source is not `null` and not empty.
  /// - [onNotEmptyOrNull]: Callback to execute when the source is `null` or not empty.
  ///
  /// ### Example:
  /// ```dart
  /// 'example'.be.emptyCase(
  ///   onEmpty: () => print('The string is empty'),
  ///   onNotEmpty: () => print('The string is not empty'),
  ///   onNotEmptyOrNull: () => print('The string is not empty or null'),
  /// );
  /// ```
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
