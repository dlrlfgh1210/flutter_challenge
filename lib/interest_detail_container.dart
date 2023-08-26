import 'package:flutter/material.dart';

class InterestDetailContainer extends StatelessWidget {
  final String categoryTitle;
  final List<Widget> categoryList;
  const InterestDetailContainer({
    super.key,
    required this.categoryTitle,
    required this.categoryList,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          width: 500,
          child: Divider(
            color: Colors.black26,
            thickness: 2.0,
          ),
        ),
        Text(
          categoryTitle,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 300,
          child: GridView(
            scrollDirection: Axis.horizontal,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 50,
              crossAxisSpacing: 50,
            ),
            children: categoryList,
          ),
        ),
      ],
    );
  }
}
