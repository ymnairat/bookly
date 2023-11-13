import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/domain/entities/book_entity.dart';
import 'package:flutter/material.dart';

import '../../../domain/usecases/fetch_newest_books_usecase.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.featuredNewestUseCase) : super(NewestBooksInitial());

  final FetchNewestBooksUseCase featuredNewestUseCase;

  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());
    var result = await featuredNewestUseCase.call();
    result.fold((failure) => {
      emit(NewestBooksFailure(failure.message))
    }, (books) => {
      emit(NewestBooksSuccess(books))
    });
  }
}
