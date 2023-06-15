String cleanScreenClassName(String val) {
  final regex = RegExp(r'Screen');
  return val.replaceAll(regex, '');
}
