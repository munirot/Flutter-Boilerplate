import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:getx_demo/app/modules/splash/splash_binding.dart';
import 'package:getx_demo/app/modules/splash/splash_page.dart';

import 'package:getx_demo/app/utils/dependency_injection.dart';

import 'app/utils/routes/app_pages.dart';

void main() {
  DependencyInjection.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashPage(),
      initialBinding: SplashBinding(),
      getPages: AppPages.pages,
    );
  }
}
