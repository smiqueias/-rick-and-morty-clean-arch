mixin GqlQuery {
  static String charactersQuery = r'''
    query($page: Int!) {
  characters(page: $page) {
    results {
      id,
      name,
      status,
      species,
      image,
      type
    }
  }
}
  ''';
}
