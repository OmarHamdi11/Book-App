import 'package:bookly/core/widgets/custom_error_message.dart';
import 'package:bookly/core/widgets/custom_loading_indecator.dart';
import 'package:bookly/features/home/presenation/manager/similar_books/similar_books_cubit.dart';
import 'package:bookly/features/home/presenation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .17,
            child: ListView.builder(
                itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.0),
                    child: CustomBookImage(
                      imageUrl:
                          'https://i5.walmartimages.com/seo/Harry-Potter-the-Prisoner-of-Azkaban-DVD_8d7cb6fa-cec5-457f-a8cb-f300e1ae229a.2b10ceaf2a6f357650af95c875d0c483.jpeg',
                    ),
                  );
                }),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomErrorMessage(errorMessage: state.errorMessage);
        } else {
          return const CustomLoadingIndecator();
        }
      },
    );
  }
}
