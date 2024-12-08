# flutter_be
## Features
- Reverse Method Call Using `?` Operator: Simplifies null-safe method calls, making your code cleaner and more robust.

```dart
// Traditional approach: 👇
if (obj != null) {
    list.add(obj);
}

// With flutter_be: 👍
obj?.be.addTo(aList: list); 
```


## Installation
Add `flutter_be` as a dependency in your `pubspec.yaml` file:

```yaml
dependencies:
  flutter_be: last_version
```
Then, run flutter pub get to install the package.

## Usage
Here are some examples of how to use the flutter_be package:

## Adding to a Collection
```dart
import 'package:flutter_be/be.dart';

void main() {
  var list = <String>[];
  'item'.be.addTo(aList: list);
  print(list);  // Output: ['item']
  
  var setCollection = <String>{};
  'item'.be.addTo(aSet: setCollection);
  print(setCollection);  // Output: {'item'}
}
```
## Handling Null Values
```dart
import 'package:flutter_be/be.dart';

void main() {
  dynamic val = 'test';
  val.be.let<String>(
    onValue: (value) {
      print(value);  // Output: 'test'
    },
    onNull: () {
      print('The object is null or not of the expected type');
    },
  );
}
```
## Providing Default Values
```dart
import 'package:flutter_be/be.dart';

void main() {
  String? string = 'hello';

  Widget widget = string.be.defaultValueCase<Widget>(
    (val) => Text(val),
    onNull: (val) => Container(),
  );
}
```
## Checking for Empty Collections
```dart
import 'package:flutter_be/be.dart';

void main() {
  var list = <String>[];

  list.be.emptyCase(
    onEmpty: () {
      print('The list is empty');  // Output: 'The list is empty'
    },
    onNotEmpty: () {
      print('The list is not empty');
    },
    onEmptyOrNull: () {
      print('The list is null or empty');
    },
  );

  var nullableList = null;

  nullableList?.be.emptyCase(
    onEmpty: () {
      print('The list is empty');
    },
    onNotEmpty: () {
      print('The list is not empty');
    },
    onEmptyOrNull: () {
      print('The list is null or empty');  // Output: 'The list is null or empty'
    },
  );
}
```
## Equality Check
```dart
import 'package:flutter_be/be.dart';

void main() {
  var object1 = 'test';
  var object2 = 'test';
  bool isEqual = object1.be.equalTo(object2, nonull: true);
  print(isEqual);  // Output: true
}
```
## For Loop Iteration
```dart
import 'package:flutter_be/be.dart';

void main() {
  int? count = 5;
  count?.be.forLoop(
    loopBody: (i) => print(i),  // Output: 0, 1, 2, 3, 4
    isAscending: true,
  );
}
```
## Handling Boolean Values
```dart
import 'package:flutter_be/be.dart';

void main() {
  bool? boolValue = true;

  boolValue?.be.valueCase(
    onTrue: () {
      print('The value is true');  // Output: 'The value is true'
    },
    onFalse: () {
      print('The value is false');
    },
    onFalseOrNull: () {
      print('The value is false or null');
    },
  );

  boolValue = null;

  boolValue.be.valueCase(
    onTrue: () {
      print('The value is true');
    },
    onFalse: () {
      print('The value is false');
    },
    onFalseOrNull: () {
      print('The value is false or null');  // Output: 'The value is false or null'
    },
  );
}
```
## Using `beOf`
When you need to ensure type safety or call methods that require a specific type (e.g., let or defaultValueCase), use beOf to wrap your dynamic object into a Be of the specified type:
```dart
import 'package:flutter_be/be.dart';

void main() {
  dynamic val = 'hello';
  var beObj = val.beOf<String>();  // Be<String> type
  beObj.let(
    onValue: (value) {
      print(value);  // Output: 'hello'
    },
    onNull: () {
      print('The object is null or not of the expected type');
    },
  );
}

```
## Contributing
Contributions are welcome! Please open an issue or submit a pull request on GitHub.

## License
This project is licensed under the MIT License. See the `LICENSE` file for more information.