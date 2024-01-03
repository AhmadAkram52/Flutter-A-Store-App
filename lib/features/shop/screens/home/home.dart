import 'package:a_store/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:a_store/utils/constants/text_strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  //     /// AppBar
                  ListTile(
                    title: Text(
                      ATexts.homeAppbarSubTitle,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    subtitle: Text(
                      ATexts.homeAppbarTitle,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    trailing: IconButton(
                      icon: const Icon(CupertinoIcons.cart),
                      onPressed: () {},
                    ),
                  )
                  //     /// SearchBar
                  //     /// Categories
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
