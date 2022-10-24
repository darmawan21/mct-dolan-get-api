import 'package:flutter/material.dart';
import 'package:mct_dolan/feature/splashscreen/splash.dart';
import 'package:mct_dolan/providers/data_provider.dart';
import 'package:mct_dolan/providers/mct_provider.dart';
import 'package:mct_dolan/feature/home/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp  extends StatelessWidget {
  const MyApp ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DataProvider(),
      child: MaterialApp(
        home: SplashScreen(),
      ),
    );
  }
}