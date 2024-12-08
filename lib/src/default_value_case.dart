import 'be.dart';

/// Extension methods for `Be<SourceType>` to handle default value logic.
extension DefaultValueCaseOnBe<SourceType> on Be<SourceType> {
  /// Extension method to return a default value.
  ///
  /// Calls different handlers based on whether the source object is `null`.
  ///
  /// ### Parameters:
  /// - [onValue]: A callback function to execute if the source is not null.
  /// - [onNull]: A callback function to execute if the source is null.
  ///
  /// ### Example:
  /// ```dart
  /// 'hello'.be.defaultValueCase(
  ///   (val) => 'Non-null: $val',  // Called when the object is not null
  ///   onNull: (val) => 'Object is null',  // Called when the object is null
  /// );
  /// ```
  ///
  /// This method provides type safety by using `SourceType`, ensuring that appropriate handlers are called
  /// based on the state of the source object.
  T defaultValueCase<T>(
    T Function(SourceType val) onValue, {
    required T Function(SourceType val) onNull,
  }) {
    final val = source;
    if (val != null) {
      return onValue.call(val);
    } else {
      return onNull.call(val);
    }
  }
}
