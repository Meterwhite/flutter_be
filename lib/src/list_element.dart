extension BeListElement on dynamic {
  /// Returns true if the [List.add] method is called; if [isTry] is true, no exception will be thrown.
  bool beAddToList<T>(List<T>? list, {bool isTry = false}) {
    if (this is! T) {
      if (isTry) {
        return false;
      } else {
        throw TypeError();
      }
    }
    if (list != null) {
      list.add(this);
      return true;
    }
    return false;
  }

  bool beAddElementsToList<T>(List<T>? list, {bool isTry = false}) {
    if (this is! Iterable<T>) {
      if (isTry) {
        return false;
      } else {
        throw TypeError();
      }
    }
    if (list != null) {
      list.addAll(this);
      return true;
    }
    return false;
  }

  bool beDeleteFromList<T>(List<T>? list, {bool isTry = false}) {
    if (this is! T) {
      if (isTry) {
        return false;
      } else {
        throw TypeError();
      }
    }
    if (list != null) {
      list.remove(this);
      return true;
    }
    return false;
  }

  bool beInsertToList<T>(List<T>? list, {int index = 0, bool isTry = false}) {
    if (this is! T) {
      if (isTry) {
        return false;
      } else {
        throw TypeError();
      }
    }
    if (list != null) {
      list.insert(index, this);
      return true;
    }
    return false;
  }

  /// nullable?.beValidateInList(list)?.let(...);
  NEXT? beValidateInList<NEXT>(List<NEXT>? list) =>
      list?.contains(this) == true ? this : null;
}
