typedef LetCallback<T> = dynamic Function(T x);

typedef OutLetCallback<T, R> = R Function(T x);

extension NSLetOnObject on Object {
  ///
  /// Use [let], [anylet], [outlet] where there is no need to expand the if-else judgment
  /// 👇
  /// BaseType obj = jsonString?.let<String>((value) => DifferentObject(byJson: value)),
  /// 
  /// Use [let], [anylet], [outlet] when using nullable instance variables.
  /// 👇
  /// SomeClass{
  ///   String? someProperty;
  ///
  ///   good() {
  ///     someProperty?.let<T>((x) {
  ///       x is nonull
  ///     });
  ///   }
  ///
  ///   bad() {
  ///     // 1.
  ///     if(someProperty != null) {
  ///       xxx(someProperty!);
  ///     }
  ///     // 2.
  ///     final someProperty2 = someProperty;
  ///     if(someProperty2 != null) {
  ///       xxx(someProperty2);
  ///     }
  ///   }
  /// }
  ///
  let<T>(LetCallback<T> fun) => fun.call(this as T);

  /// x is dynamic
  anylet(LetCallback<dynamic> fun) => fun.call(this);

  /// Type of x is R
  R outlet<T, R>(OutLetCallback<T, R> fun) => fun.call(this as T);
}
