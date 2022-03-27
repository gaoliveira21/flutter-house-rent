import 'package:flutter/material.dart';

import 'package:house_rent/widgets/custom_app_bar.dart';
import 'package:house_rent/widgets/search_input.dart';
import 'package:house_rent/widgets/welcome_text.dart';
import 'package:house_rent/widgets/categories.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            WelcomeText(),
            SearchInput(),
            Categories(),
          ],
        ),
      ),
    );
  }
}
