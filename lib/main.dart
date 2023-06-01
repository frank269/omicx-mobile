import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:omicx_v2/app/modules/bindings.dart';
import 'app/core/core.dart';
import 'app/data/constants/constant.dart';
import 'app/routes/pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: TextConstants.appName,
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.fade,
      initialRoute: Routes.INITIAL,
      initialBinding: AppBinding(),
      getPages: AppPages.pages,
    );
  }
}
