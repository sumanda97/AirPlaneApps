import 'package:airplane/cubit/auth_cubit.dart';
import 'package:airplane/cubit/destinations_cubit.dart';
import 'package:airplane/cubit/page_cubit.dart';
import 'package:airplane/cubit/seats_cubit.dart';
import 'package:airplane/cubit/transaction_cubit.dart';
import 'package:airplane/ui/pages/main_pages.dart';
import 'package:airplane/ui/pages/success_checkout_pages.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'ui/pages/bonus_pages.dart';
import 'ui/pages/get_started.dart';
import 'ui/pages/sign_in_pages.dart';
import 'ui/pages/sign_up_pages.dart';
import 'ui/pages/splashPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PageCubit(),
        ),
        BlocProvider(
          create: (context) => AuthCubit(),
        ),
        BlocProvider(
          create: (context) => DestinationsCubit(),
        ),
        BlocProvider(
          create: (context) => SeatsCubit(),
        ),
        BlocProvider(
          create: (context) => TransactionCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/get-started': (context) => GetStartedPage(),
          '/sign-up': (context) => SignUpPages(),
          '/sign-in': (context) => SignInPages(),
          '/bonus': (context) => BonusPages(),
          '/main-pages': (context) => MainPages(),
          '/success': (context) => SuccessCheckOutPage(),
        },
      ),
    );
  }
}
