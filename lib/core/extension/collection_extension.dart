extension CollectionExtension<T> on List<T> {
  /// Used in Blocs to update list states.
  List<T> replaceImmutable(int index, dynamic item) {
    final List<T> newList = List.from(this);
    newList[index] = item;

    return newList;
  }
}
