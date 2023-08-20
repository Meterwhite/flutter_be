extension BeListElement on dynamic {
  /// 返回true意味着[List.add]方法被調用，[isTry] 是true时不会抛出异常。
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
