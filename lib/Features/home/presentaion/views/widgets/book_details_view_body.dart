import 'package:bookly/Features/home/presentaion/views/widgets/book_detail_section.dart';
import 'package:bookly/Features/home/presentaion/views/widgets/books_details_section.dart';
import 'package:bookly/Features/home/presentaion/views/widgets/custom_book_details_app_bar.dart';
import 'package:flutter/material.dart';
class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  CustomBookDetailsAppBar(),
                  BookDetailsSection(),
                  Expanded(
                    child: SizedBox(
                      height: 50,
                    ),
                  ),
                  SimillerBooksSection(),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
           )
         )
      ],
    );
  }
}
