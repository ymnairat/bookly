import 'package:bookly/Features/home/domain/entities/book_entity.dart';
import 'package:bookly/Features/home/domain/repos/home_repo.dart';
import 'package:bookly/core/errors/Failure.dart';
import 'package:bookly/core/use_case/use_case.dart';
import 'package:dartz/dartz.dart';

class FetchFeaturedBooksUseCase extends UseCase<List<BookEntity>, NoParam> // We can replace NoParam with void and remove (?)
{
  final HomeRepo homeRepo;

  FetchFeaturedBooksUseCase(this.homeRepo);
  
  @override
  Future<Either<Failure, List<BookEntity>>> call([NoParam? param]) async { // (?) check null safty because any object in dart is non nullable by default
    return await homeRepo.fetchFeaturedBooks();
  }
}

class NoParam {}