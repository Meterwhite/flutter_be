extension BeSetElement on dynamic {
  bool beAddToSet<T>(Set<T>? set, {bool isTry = false}) {
    if (this is! T) {
      if (isTry) {
        return false;
      } else {
        throw TypeError();
      }
    }
    if (set != null) {
      set.add(this);
      return true;
    }
    return false;
  }

  bool beAddElementsToSet<T>(Set<T>? set, {bool isTry = false}) {
    if (this is! Iterable<T>) {
      if (isTry) {
        return false;
      } else {
        throw TypeError();
      }
    }
    if (set != null) {
      set.addAll(this);
      return true;
    }
    return false;
  }

  bool beDeleteFromSet<T>(Set<T>? set, {bool isTry = false}) {
    if (this is! T) {
      if (isTry) {
        return false;
      } else {
        throw TypeError();
      }
    }
    if (set != null) {
      set.remove(this);
      return true;
    }
    return false;
  }

  NEXT? beValidateInSet<NEXT>(Set<NEXT>? set) =>
      set?.contains(this) == true ? this : null;
}
