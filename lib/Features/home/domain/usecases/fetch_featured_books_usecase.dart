import 'package:bookly/Features/home/domain/entities/book_entity.dart';
import 'package:bookly/Features/home/domain/repos/home_repo.dart';
import 'package:bookly/core/errors/Failure.dart';
import 'package:dartz/dartz.dart';

class FetchFeaturedBooksUseCase
{
  final HomeRepo homeRepo;

  FetchFeaturedBooksUseCase(this.homeRepo);
  
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks() {
    // check permission for ex.
    return homeRepo.fetchFeaturedBooks();
  }
}