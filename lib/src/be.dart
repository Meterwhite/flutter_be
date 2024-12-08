/// A generic class that wraps a source object.
class Be<SourceType> {
  /// The source object being wrapped.
  final SourceType _source;

  /// Constructor that initializes the source object.
  Be(this._source);

  /// Getter for the source object.
  SourceType get source => _source;
}

/// This method is used for dynamic types.
Be<SourceType> beOf<SourceType>(SourceType source) => Be<SourceType>(source);

/// Extension methods for types to support Be functionality.
extension SourceTypeBeSupport<SourceType> on SourceType {
  /// Wraps the source object into a Be of the specified type.
  Be<SourceType> get be => Be<SourceType>(this);
}
