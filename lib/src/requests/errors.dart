enum BookmarkErrorStatusCodes {
  error460("Bookmark Already Exists"),
  ;

  final String error;

  const BookmarkErrorStatusCodes(this.error);

  static BookmarkErrorStatusCodes findByStatusCode(int code) =>
      values.byName("error$code");
}
