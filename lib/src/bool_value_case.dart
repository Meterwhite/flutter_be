import 'be.dart';

/// Extension methods for `Be<bool?>` to handle different boolean states.
extension BoolValueCaseOnBe on Be<bool?> {
  /// Handles different cases for a nullable boolean value.
  ///
  /// Depending on the value of the `source`, different callbacks are invoked:
  /// - If the source is `true`, `onTrue` is called.
  /// - If the source is `false`, both `onFalse` and `onFalseOrNull` are called.
  /// - If the source is `null`, `onFalseOrNull` is called.
  ///
  /// ### Parameters:
  /// - [onTrue]: Callback to execute when the source is `true`.
  /// - [onFalse]: Callback to execute when the source is `false`.
  /// - [onFalseOrNull]: Callback to execute when the source is `false` or `null`.
  ///
  /// ### Example:
  /// ```dart
  /// true.be.valueCase(
  ///   onTrue: () => print('The value is true'),
  ///   onFalse: () => print('The value is false'),
  ///   onFalseOrNull: () => print('The value is false or null'),
  /// );
  /// ```
  void valueCase({
    Function()? onTrue,
    Function()? onFalse,
    Function()? onFalseOrNull,
  }) {
    if (source == true) {
      onTrue?.call();
    } else if (source == false) {
      onFalse?.call();
      onFalseOrNull?.call();
    } else {
      onFalseOrNull?.call();
    }
  }
}
