import 'be.dart';

/// Extension methods for `Be<int?>` to handle for-loop logic.
extension ForLoopOnBe on Be<int?> {
  /// Executes a for-loop based on the integer value.
  ///
  /// If the source integer is not `null`, this method will run a for-loop:
  /// - If `isAscending` is `true`, the loop runs in ascending order from 0 to `source - 1`.
  /// - If `isAscending` is `false`, the loop runs in descending order from `source - 1` to 0.
  ///
  /// ### Parameters:
  /// - [loopBody]: A required callback function to execute for each iteration of the loop.
  /// - [isAscending]: A boolean flag to determine the order of the loop (default is `true` for ascending order).
  ///
  /// ### Example:
  /// ```dart
  /// 5.be.forLoop(
  ///   loopBody: (i) => print(i),
  ///   isAscending: true,  // This will print numbers from 0 to 4
  /// );
  /// ```
  void forLoop({
    required void Function(int i) loopBody,
    bool isAscending = true,
  }) {
    final int? intValue = source;
    if (intValue != null) {
      if (isAscending) {
        for (var i = 0; i < intValue; i++) {
          loopBody(i);
        }
      } else {
        for (var i = intValue - 1; i >= 0; i--) {
          loopBody(i);
        }
      }
    }
  }
}
