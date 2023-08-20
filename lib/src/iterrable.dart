extension BeIterable<T> on Iterable<T> {
  Iterable<T>? get beValidateEmpty => isEmpty ? this : null;

  Iterable<T>? get beValidateNotEmpty => isNotEmpty ? this : null;

  Iterable<T>? beValidateElements(bool Function(T e) func) =>
      every(func) ? this : null;
}

extension BeList<T> on List<T> {
  List<T>? get beValidateEmpty => isEmpty ? this : null;

  /// Old:
  /// if(newList?.isNotEmpty ?? false){
  ///   list.addAll(newList);
  /// }
  /// 
  /// Now:
  /// newList?.beValidateNotEmpty?.beAddElementsToList(list);
  List<T>? get beValidateNotEmpty => isNotEmpty ? this : null;

  List<T>? beValidateElements(bool Function(T e) func) =>
      every(func) ? this : null;
}

extension BeSet<T> on Set<T> {
  Set<T>? get beValidateEmpty => isEmpty ? this : null;

  Set<T>? get beValidateNotEmpty => isNotEmpty ? this : null;

  Set<T>? beValidateElements(bool Function(T e) func) =>
      every(func) ? this : null;
}

extension BeMap<K, V> on Map<K, V> {
  Map<K, V>? get beValidateEmpty => isEmpty ? this : null;

  Map<K, V>? get beValidateNotEmpty => isNotEmpty ? this : null;

  Map<K, V>? beValidateKeys(bool Function(K key) func) =>
      keys.every(func) ? this : null;

  Map<K, V>? beValidateValues(bool Function(V value) func) =>
      values.every(func) ? this : null;
}
