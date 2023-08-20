
/// if whatAnyTrue([...]) {
///   ...
/// }
bool whatAnyTrue(List elements) => elements.any((e) => e == true);

bool whatAnyFalse(List elements) => elements.any((e) => e == false);

bool whatAnyNull(List elements) => elements.any((e) => e == null);

bool whatAnyEmpty(List elements) => elements.any((e) {
      if (e is Iterable || e is String) {
        return e.isEmpty;
      }
      return false;
    });

bool whatEveryTrue(List elements) => elements.every((e) => e == true);

bool whatEveryFalse(List elements) => elements.every((e) => e == false);

bool whatEveryNonull(List elements) => elements.any((e) => e != null);

bool whatEveryNotEmpty(List elements) => elements.every((e) {
      if (e is Iterable || e is String) {
        return e.isNotEmpty;
      }
      return false;
    });