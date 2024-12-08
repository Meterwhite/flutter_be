import 'be.dart';

/// Extension methods for `Be<dynamic>` to handle equality checks.
extension EqualOnBe<SourceType> on Be<SourceType> {
  /// Checks if the source object is equal to another object.
  ///
  /// This method compares the `source` with another `object` and optionally ensures 
  /// that neither the `source` nor the `object` are null before comparison.
  ///
  /// ### Parameters:
  /// - [object]: The object to compare with the source.
  /// - [nonull]: A boolean flag to indicate whether null checks should be enforced (default is `false`).
  ///
  /// ### Returns:
  /// - `true` if the `source` is equal to the `object` (considering the `nonull` flag if set).
  /// - `false` if the `source` is not equal to the `object` or if null checks fail when `nonull` is `true`.
  ///
  /// ### Example:
  /// ```dart
  /// var object1 = 'test';
  /// var object2 = 'test';
  /// bool isEqual = object1.be.equalTo(object2, nonull: true);
  /// print(isEqual);  // Output: true
  /// 
  /// // Equivalent to:
  /// if (object1 != null && object2 != null) {
  ///   if (object1 == object2) {
  ///     // use object1 and object2
  ///   }
  /// }
  /// ```
  bool equalTo(dynamic object, {bool nonull = false}) {
    if (nonull && (source == null || object == null)) {
      return false;
    }
    return source == object;
  }
}
