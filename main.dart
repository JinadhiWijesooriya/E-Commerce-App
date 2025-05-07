import 'package:e_selling/core/themes/app_themes.dart';
import 'package:e_selling/presentation/splash/bloc/splash_cubit.dart';
import 'package:e_selling/presentation/splash/pges/splash_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashCubit()..appStarted(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: AppTheme.appTheme,
        debugShowCheckedModeBanner: false,

        home: const SplashScreen(),
      ),
    );
  }
}
