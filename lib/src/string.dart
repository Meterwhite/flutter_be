extension BeString on String {
  String? get beValidateEmpty => isEmpty ? this : null;

  String? get beValidateNotEmpty => isNotEmpty ? this : null;
}
