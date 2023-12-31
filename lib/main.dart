import 'package:flutter/material.dart';
import 'package:forage/form_provider.dart';
import 'package:forage/home_page.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FormProvider(),
      child: MaterialApp(
        title: 'Forage',
        home: HomePage(),
      ),
    );
  }
}
