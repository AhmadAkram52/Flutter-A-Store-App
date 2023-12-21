import 'package:a_store/utils/constants/page_route.dart';
import 'package:a_store/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ATheme.lightTheme,
      darkTheme: ATheme.darkTheme,
      initialRoute: '/',
      getPages: APageRoutes.aPagesRoutes,
    );
  }
}
