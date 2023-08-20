extension BeEqual on dynamic {
  /// bool? a = nullable?.beEqual(obj);
  /// bool  b = nullable.beEqual(obj);
  ///
  /// Bad:
  /// bool? a = nullable == null ? null : nullable == obj;
  bool? beEqual(dynamic obj) => this == obj;
}
