class APIList {
  APIList._();

  static const String baseUrl = "http://192.168.55.14:8000/api/";

  static const String signup = "user/signup";

  static const String login = "user/login";

  static const String getInfo = "user/getInfo";

  static const String loadBooks = "book";

  static const String saveBook = "book/save";

  static const String borrowBook = "book/borrow";

  static const String returnBook = "book/return";

  static const String loadCheckouts = "book/checkouts";

  static const String getCheckoutByBookId = "book/checkoutByBookId";
}
