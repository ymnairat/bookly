import 'package:bookly/Features/home/domain/entities/book_entity.dart';
import 'package:bookly/core/errors/Failure.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo
{
    Future<Either<List<Failure, BookEntity>>> fetchFeaturedBooks();
    Future<List<BookEntity>> fetchNewestBooks();
}