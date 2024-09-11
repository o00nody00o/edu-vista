// ignore_for_file: unused_import

import 'dart:ui';

import 'package:device_preview/device_preview.dart';
import 'package:edu_vista/blocs/course/course_bloc.dart';
import 'package:edu_vista/blocs/lecture/lecture_bloc.dart';
import 'package:edu_vista/cubit/auth_cubit.dart';
import 'package:edu_vista/firebase_options.dart';
import 'package:edu_vista/pages/course_details_page.dart';
import 'package:edu_vista/pages/home_page.dart';
import 'package:edu_vista/pages/login_page.dart';
import 'package:edu_vista/pages/my_CategoriesPage.dart';
import 'package:edu_vista/pages/my_signUpPage.dart';
import 'package:edu_vista/pages/onboarding_page.dart';
import 'package:edu_vista/pages/Forgot_password_page.dart';
import 'package:edu_vista/pages/signup_page.dart';
import 'package:edu_vista/pages/splash_page.dart';
import 'package:edu_vista/services/pref.service.dart';
import 'package:edu_vista/utils/color_utilis.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await PreferencesService.init();
  try {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  } catch (e) {
    print('Failed to initialize Firebase: $e');
  }
  // await dotenv.load(fileName: ".env");

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (ctx) => AuthCubit()),
        BlocProvider(create: (ctx) => CourseBloc()),
        BlocProvider(create: (ctx) => LectureBloc()),
      ],
      child: DevicePreview(enabled: true, builder: (context) => MyApp()),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignupPage(),
      scrollBehavior: _CustomScrollBehaviour(),
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: ColorUtility.gbScaffold,
        fontFamily: ' PlusJakartaSans',
        colorScheme: ColorScheme.fromSeed(seedColor: ColorUtility.main),
        useMaterial3: true,
      ),
      onGenerateRoute: (settings) {
        final String routeName = settings.name ?? '';
        final dynamic data = settings.arguments;
        switch (routeName) {
          case LoginPage.id:
            return MaterialPageRoute(builder: (context) => LoginPage());
          case SignupPage.id:
            return MaterialPageRoute(builder: (context) => SignupPage());
          case ForgotPasswordPage.id:
            return MaterialPageRoute(
                builder: (context) => ForgotPasswordPage());
          case OnBoardingPage.id:
            return MaterialPageRoute(builder: (context) => CategoriesPage());
          case HomePage.id:
            return MaterialPageRoute(builder: (context) => HomePage());
          case CourseDetailsPage.id:
            return MaterialPageRoute(
                builder: (context) => CourseDetailsPage(
                      course: data,
                    ));

          default:
            return MaterialPageRoute(builder: (context) => SplashPage());
        }
      },
      initialRoute: SplashPage.id,
    );
  }
}

class _CustomScrollBehaviour extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.mouse,
        PointerDeviceKind.touch,
      };
}
