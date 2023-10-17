import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_ui_1/feature/presentation/page/main_screen/main_screen.dart';
import 'package:flutter_ui_1/on_generate_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Instagram Clone',
          theme: ThemeData.dark(),
          onGenerateRoute: OnGenerateRoute.route,
          initialRoute: '/',
          routes: {
            '/': (context) {
              return MainScreen();
            }
          },
          
        );
      },
    );
  }
}
