class Be<T> {
  T source;
  Be(this.source);
}

extension DynamicBeSupport on dynamic {
  Be<T> toBe<T>() => Be<T>(this);

  Be get be => Be(this);
}

extension BoolBeSupport on bool {
  Be<bool> get be => Be<bool>(this);
}

extension IntBeSupport on int {
  Be<int> get be => Be<int>(this);
}

extension DoubleBeSupport on double {
  Be<double> get be => Be<double>(this);
}

extension StringBeSupport on String {
  Be<String> get be => Be<String>(this);
}
