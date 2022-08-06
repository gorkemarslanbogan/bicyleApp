


class SharedException implements Exception {

  @override
  String toString() {
    return "Shared not initialize rigth now";
  }
}


class SharedExceptionSetList extends SharedException {
  @override
  String toString() {
    return "Shared Preferences not work setStringList Funchtion";
  }
}