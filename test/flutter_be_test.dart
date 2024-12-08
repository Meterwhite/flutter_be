import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_be/flutter_be.dart';

void main() {
  group('BoolValueCaseOnBe', () {
    test('true value', () {
      var result = '';
      true.be.valueCase(
            onTrue: () => result = 'The value is true',
            onFalse: () => result = 'The value is false',
            onFalseOrNull: () => result = 'The value is false or null',
          );
      expect(result, 'The value is true');
    });

    test('false value', () {
      var result = '';
      false.be.valueCase(
            onTrue: () => result = 'The value is true',
            onFalse: () => result = 'The value is false',
            onFalseOrNull: () => result = 'The value is false or null',
          );
      expect(result, 'The value is false or null');
    });

    test('null value', () {
      var result = '';
      (null as bool?).be.valueCase(
            onTrue: () => result = 'The value is true',
            onFalse: () => result = 'The value is false',
            onFalseOrNull: () => result = 'The value is false or null',
          );
      expect(result, 'The value is false or null');
    });
  });

  group('DefaultValueCaseOnBe', () {
    test('non-null value', () {
      var result = '';
      'hello'.be.defaultValueCase(
            (val) => result = 'Non-null: $val',
            onNull: (val) => result = 'Object is null',
          );
      expect(result, 'Non-null: hello');
    });

    test('null value', () {
      var result = '';
      (null as String?).be.defaultValueCase(
            (val) => result = 'Non-null: $val',
            onNull: (val) => result = 'Object is null',
          );
      expect(result, 'Object is null');
    });
  });

  group('EmptyCaseOnBe', () {
    test('empty iterable', () {
      var result = '';
      [].be.emptyCase(
            onEmpty: () => result = 'The iterable is empty',
            onNotEmpty: () => result = 'The iterable is not empty',
            onEmptyOrNull: () => result = 'The iterable is null or empty',
          );
      expect(result, 'The iterable is null or empty');
    });

    test('non-empty iterable', () {
      var result = '';
      [1, 2, 3].be.emptyCase(
            onEmpty: () => result = 'The iterable is empty',
            onNotEmpty: () => result = 'The iterable is not empty',
            onEmptyOrNull: () => result = 'The iterable is null or empty',
          );
      expect(result, 'The iterable is not empty');
    });

    test('null iterable', () {
      var result = '';
      (null as Iterable?).be.emptyCase(
            onEmpty: () => result = 'The iterable is empty',
            onNotEmpty: () => result = 'The iterable is not empty',
            onEmptyOrNull: () => result = 'The iterable is null or empty',
          );
      expect(result, 'The iterable is null or empty');
    });
  });

  group('ForLoopOnBe', () {
    test('ascending order', () {
      var result = <int>[];
      5.be.forLoop(
            loopBody: (i) => result.add(i),
            isAscending: true,
          );
      expect(result, [0, 1, 2, 3, 4]);
    });

    test('descending order', () {
      var result = <int>[];
      5.be.forLoop(
            loopBody: (i) => result.add(i),
            isAscending: false,
          );
      expect(result, [4, 3, 2, 1, 0]);
    });
  });
}
