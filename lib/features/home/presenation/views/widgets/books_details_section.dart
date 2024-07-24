import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presenation/views/widgets/book_action.dart';
import 'package:bookly/features/home/presenation/views/widgets/book_rating.dart';
import 'package:bookly/features/home/presenation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * .2),
          child: const CustomBookImage(
            imageUrl:
                'https://i5.walmartimages.com/seo/Harry-Potter-the-Prisoner-of-Azkaban-DVD_8d7cb6fa-cec5-457f-a8cb-f300e1ae229a.2b10ceaf2a6f357650af95c875d0c483.jpeg',
          ),
        ),
        const SizedBox(
          height: 43,
        ),
        const Text(
          'The Jungle Book',
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 8,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            'Rudyard Kipling',
            style: Styles.textStyle18.copyWith(
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 37,
        ),
        const BookAction(),
      ],
    );
  }
}
