import 'be.dart';

/// Extension methods for `Be<List>` to handle cases where all elements are not null.
extension LetsOnBe on Be<List> {
  /// Executes a function if all elements in the list are not null.
  ///
  /// Depending on the state of the elements in the `source` list, different callbacks are invoked:
  /// - If all elements in the list are not null, the `onValue` callback is called with the elements as arguments.
  /// - If any element in the list is null, the `onNull` callback is called.
  ///
  /// ### Parameters:
  /// - [onValue]: A required callback function to execute if all elements are not null.
  /// - [onNull]: An optional callback function to execute if any element is null.
  ///
  /// ### Example:
  /// ```dart
  /// [object1, object2, object3].be.lets(
  ///   (obj1, obj2, obj3) {
  ///     // Use obj1, obj2, obj3
  ///   },
  ///   onNull: () {
  ///     print('One or more elements are null');
  ///   },
  /// );
  /// ```
  void lets({
    required Function onValue,
    void Function()? onNull,
  }) {
    // Determine the number of parameters required by the `onValue` function
    var requiredParams = onValue.runtimeType
        .toString()
        .split('=>')[0]
        .split(',')
        .where((param) => param.trim().isNotEmpty)
        .length;

    // Ensure the number of parameters does not exceed the list length
    if (requiredParams > source.length) {
      throw ArgumentError(
          'Number of required parameters exceeds the length of the list.');
    }

    var paramsToPass = source.sublist(0, requiredParams);
    // Check if all elements to be passed are not null
    if (paramsToPass.every((element) => element != null)) {
      Function.apply(onValue, paramsToPass);
    } else {
      onNull?.call();
    }
  }
}

/// Extension methods for `Be<SourceType>` to handle cases where the object is not null.
extension LetOnBe<SourceType> on Be<SourceType> {
  /// Executes a function if the source object is not null.
  ///
  /// Depending on the state of the `source`, different callbacks are invoked:
  /// - If the source is not null, the `onValue` callback is called with the source as argument.
  /// - If the source is null, the `onNull` callback is called.
  ///
  /// ### Parameters:
  /// - [onValue]: A required callback function to execute if the source is not null.
  /// - [onNull]: An optional callback function to execute if the source is null.
  ///
  /// ### Example:
  /// ```dart
  /// var stringInstance = 'hello'.beOf<String>();
  /// stringInstance.let(
  ///   (value) {
  ///     print(value);  // Output: 'hello'
  ///   },
  ///   onNull: () {
  ///     print('The object is null');
  ///   },
  /// );
  /// ```
  void let({
    required void Function(SourceType val) onValue,
    void Function()? onNull,
  }) {
    if (source != null) {
      onValue(source);
    } else {
      onNull?.call();
    }
  }
}
