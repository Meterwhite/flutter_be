extension BeTryOnList<T> on List<T> {
  /// list.beTry(elementAt: 1000);
  T? beTry({required int elementAt}) {
    if (isEmpty || elementAt < 0 || elementAt > length - 1) return null;
    return this[elementAt];
  }
}
