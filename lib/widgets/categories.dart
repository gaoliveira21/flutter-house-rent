import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  final categories = [
    'Top Recommended',
    'Near You',
    'Agency Recommended',
    'Most Popular'
  ];

  int currentSelect = 0;

  _handleChangeCurrentCategory(int index) {
    setState(() {
      currentSelect = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () => _handleChangeCurrentCategory(index),
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: currentSelect == index
                      ? Theme.of(context).primaryColor
                      : Colors.transparent,
                  width: 3,
                ),
              ),
            ),
            child: Text(
              categories[index],
              style: TextStyle(
                color: currentSelect == index
                    ? Theme.of(context).primaryColor
                    : Theme.of(context).textTheme.bodyText1!.color,
                fontSize: currentSelect == index ? 16 : 14,
                fontWeight: currentSelect == index
                    ? FontWeight.bold
                    : FontWeight.normal,
              ),
            ),
          ),
        ),
        separatorBuilder: (_, index) => const SizedBox(width: 15),
        itemCount: categories.length,
      ),
    );
  }
}
