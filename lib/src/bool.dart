extension BeBool on bool? {
  ///
  /// mounted.beValidateTrue(
  ///   then: () {
  ///     setState(() {
  ///       _index = selectedIndex;
  ///     });
  ///   },
  /// );
  ///
  bool beValidateTrue({required Function() then}) {
    if (this == true) {
      then();
      return true;
    }
    return false;
  }

  bool beValidateFalse({required Function() then}) {
    if (this == false) {
      then();
      return true;
    }
    return false;
  }
}
