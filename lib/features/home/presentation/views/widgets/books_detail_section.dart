import 'package:bookly_app/core/utlis/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_action.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * .2,
          ),
          child: const CustomBookItem(
              imageUrl:
                  'data:image/png;base64,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'),
        ),
        SizedBox(
          height: 43,
        ),
        Text(
          'The jungle Book',
          style: Styles.textStyle30.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            'The jungle Book',
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        SizedBox(
          height: 18,
        ),
        BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          rating: 0,
          count: 0,
        ),
        SizedBox(
          height: 37,
        ),
        BookAction(),
      ],
    );
  }
}
