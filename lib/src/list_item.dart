import 'be.dart';

/// Extension methods for `Be<dynamic>` to handle list and set item operations.
extension ListItemOnBe<SourceType> on Be<SourceType> {
  /// Adds the source object to a list or set if it is of the specified type.
  ///
  /// Depending on whether a list or set is provided, the source object is added to the appropriate collection.
  ///
  /// ### Parameters:
  /// - [aList]: An optional list to which the source object is added if it is not null.
  /// - [aSet]: An optional set to which the source object is added if it is not null.
  ///
  /// ### Returns:
  /// - `true` if the source object is successfully added to the list or set.
  /// - `false` if neither a list nor a set is provided.
  ///
  /// ### Example:
  /// ```dart
  /// var list = <String>[];
  /// 'item'.be.addTo(aList: list);
  /// print(list);  // Output: ['item']
  ///
  /// var set = <String>{};
  /// 'item'.be.addTo(aSet: set);
  /// print(set);  // Output: {'item'}
  /// ```
  bool addTo({
    List<SourceType>? aList,
    Set<SourceType>? aSet,
  }) {
    if (aList != null) {
      aList.add(source);
      return true;
    }
    if (aSet != null) {
      aSet.add(source);
      return true;
    }
    return false;
  }

  /// Inserts the source object to a list at the specified index if it is of the specified type.
  ///
  /// Depending on whether a list is provided, the source object is inserted into the appropriate collection.
  ///
  /// ### Parameters:
  /// - [aList]: An optional list to which the source object is inserted if it is not null.
  /// - [atIndex]: The index at which the source object is inserted.
  ///
  /// ### Returns:
  /// - `true` if the source object is successfully inserted into the list.
  /// - `false` if no list is provided.
  ///
  /// ### Example:
  /// ```dart
  /// var list = <String>[];
  /// 'item'.be.insertTo(aList: list, atIndex: 0);
  /// print(list);  // Output: ['item']
  /// ```
  bool insertTo({
    List<SourceType>? aList,
    required int atIndex,
  }) {
    if (aList != null) {
      aList.insert(atIndex, source);
      return true;
    }
    return false;
  }

  /// Removes the source object from a list or set if it is of the specified type.
  ///
  /// Depending on whether a list or set is provided, the source object is removed from the appropriate collection.
  ///
  /// ### Parameters:
  /// - [aList]: An optional list from which the source object is removed if it is not null.
  /// - [aSet]: An optional set from which the source object is removed if it is not null.
  ///
  /// ### Returns:
  /// - `true` if the source object is successfully removed from the list or set.
  /// - `false` if neither a list nor a set is provided.
  ///
  /// ### Example:
  /// ```dart
  /// var list = <String>['item'];
  /// 'item'.be.removeFrom(aList: list);
  /// print(list);  // Output: []
  ///
  /// var set = <String>{'item'};
  /// 'item'.be.removeFrom(aSet: set);
  /// print(set);  // Output: {}
  /// ```
  bool removeFrom({
    List<SourceType>? aList,
    Set<SourceType>? aSet,
  }) {
    if (aList != null) {
      aList.remove(source);
      return true;
    }
    if (aSet != null) {
      aSet.remove(source);
      return true;
    }
    return false;
  }
}
