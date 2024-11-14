import 'package:flutter_be/src/be/be.dart';

extension BeOnListItem on Be<dynamic> {
  bool addTo<Item>({required List<Item>? list}) {
    if (source != null && list != null && source is Item) {
      list.add(source);
      return true;
    }
    return false;
  }
}
