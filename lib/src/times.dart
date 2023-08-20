extension BeForLoop on int {
  /// 与等效for循环，收集每个返回值在数组中
  /// final photos = count?.beTimes<Photo>(repeat: (i)=> tryGetPhoto(i));
  /// 即使没有执行循环依然可以安全得道一个空的数组
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
