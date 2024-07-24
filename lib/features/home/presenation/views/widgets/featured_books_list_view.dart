import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/widgets/custom_error_message.dart';
import 'package:bookly/core/widgets/custom_loading_indecator.dart';
import 'package:bookly/features/home/presenation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/presenation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .23,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(AppRouter.kBoohDetailsView,
                          extra: state.books[index]);
                    },
                    child: CustomBookImage(
                      imageUrl:
                          state.books[index].volumeInfo.imageLinks?.thumbnail,
                    ),
                  ),
                );
              },
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorMessage(errorMessage: state.errorMessage);
        } else {
          return const CustomLoadingIndecator();
        }
      },
    );
  }
}
