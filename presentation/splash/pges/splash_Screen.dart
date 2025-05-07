import 'package:e_selling/core/configs/assets/app_vectors.dart';
import 'package:e_selling/core/themes/app_colors.dart';
import 'package:e_selling/presentation/auth/pages/singin.dart';
import 'package:e_selling/presentation/splash/bloc/splash_cubit.dart';
import 'package:e_selling/presentation/splash/bloc/splash_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashCubit, SplashState>(
      listener: (context, state) {
        if (state is UnAuthenticated) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => SingInPage()),
          );
        }
      },
      child: Scaffold(
        backgroundColor: AppColors.primary,
        body: Center(child: SvgPicture.asset(AppVectors.appLogo)),
      ),
    );
  }
}
