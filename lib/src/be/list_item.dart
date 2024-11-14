import 'be.dart';

asdf() {
  "".be.addTo(list: []);
  bool abc = '123' == '';
  String? str = abc ? '' : null;
  str?.be.addTo();
  str?.be.ad
}

extension BeOnListItem on Be<dynamic> {
  bool addTo<Item>({
    List<Item>? list,
    Set<Item>? sett,
  }) {
    if (source != null && source is Item) {
      if (list != null) {
        list.add(source);
      } else if (sett != null) {
        sett.add(source);
      }
      return true;
    }
    return false;
  }

  bool insertTo<Item>({
    List<Item>? list,
    Set<Item>? sett,
  }) {
    if (source != null && source is Item) {
      if (list != null) {
        list.add(source);
      } else if (sett != null) {
        sett.add(source);
      }
      return true;
    }
    return false;
  }

  bool removeFrom<Item>({
    List<Item>? list,
    Set<Item>? sett,
  }) {
    if (source != null && source is Item) {
      if (list != null) {
        list.remove(source);
      } else if (sett != null) {
        sett.remove(source);
      }
      return true;
    }
    return false;
  }
}
