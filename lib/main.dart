import 'package:appc/core/store.dart';
import 'package:appc/pages/cart_page.dart';
import 'package:appc/pages/login_page.dart';
import 'package:appc/pages/page.dart';
import 'package:appc/util/routes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'widgets/themes.dart';

void main() {
  runApp(VxState(store: MyStore(), child: appc()));
}

class appc extends StatelessWidget {
  const appc({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: page(),
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.loginpage,
      routes: {
        MyRoutes.loginpage: (context) => login_page(),
        MyRoutes.homepage: (context) => page(),
        MyRoutes.cartRoute: (context) => cartPage(),
        // MyRoutes.DraftPage: (context) => DraftPage(),
      },
    );
  }
}
