import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../logic/auth/login_cubit/login_cubit.dart';
import '../../logic/auth/register_cubit/register_cubit.dart';
import '../../logic/image/image_cubit.dart';
import '../screen/auth/forget_password.dart';
import '../screen/home/home.dart';
import '../screen/auth/login.dart';
import '../screen/auth/register.dart';
import '../screen/settings/account.dart';
import '../screen/settings/setting.dart';
import '../screen/splash.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginCubit(),
        ),
        BlocProvider(
          create: (context) => RegisterCubit(),
        ),
        BlocProvider(
          create: (context) => ImageCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: "/",
        routes: {
          "/": (context) => const SplashScreen(),
          "/login": (context) => const LogInScreen(),
          "/register": (context) => const RegisterScreen(),
          "/home": (context) => const HomeScreen(),
          "/forget": (context) => const ForgetPassword(),
          "/setting": (context) => const SettingScreen(),
          "/account": (context) => const AccountScreen(),
        },
      ),
    );
  }
}
