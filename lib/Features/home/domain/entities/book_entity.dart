class BookEntity {
  final String bookId;
  final String? image;
  final String title;
  final String? authorName;
  final num? price;
  final num? rating;

  BookEntity(
      {required this.bookId,
      required this.authorName,
      required this.image,
      required this.price,
      required this.rating,
      required this.title});
}
