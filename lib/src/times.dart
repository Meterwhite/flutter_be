extension BeForLoop on int {
  /// For loop.
  /// final photos = count?.beTimes<Photo>(repeat: (i)=> tryGetPhoto(i));
  List<T> beTimes<T>({
    required T? Function(int i) repeat,
    asc = true,
  }) {
    List results = [];
    if (asc) {
      for (var i = 0; i < this; i++) {
        results.add(repeat(i));
      }
    } else {
      for (var i = this - 1; i >= 0; i--) {
        results.add(repeat(i));
      }
    }
    return results.whereType<T>().toList();
  }
}
