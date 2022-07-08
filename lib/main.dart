import 'package:budget_tracker/screens/home.dart';
import 'package:budget_tracker/services/ThemeService.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeService>(
      create: (_) => ThemeService(),
      child: Builder(
        builder: (BuildContext context) {
          final themeService = Provider.of<ThemeService>(context);

          return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(
                brightness:
                    themeService.darkTheme ? Brightness.dark : Brightness.light,
                seedColor: Colors.indigo,
              ),
            ),
            home: const Home(),
          );
        },
      ),
    );
  }
}
