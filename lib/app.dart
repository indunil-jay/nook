import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nook/app/router/router.dart';
import 'package:nook/app/themes/app_theme.dart';
import 'package:nook/features/authentication/presentation/bloc/login_bloc.dart';
import 'app/di/injection.dart' as di;

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LoginBloc>(
          create: (_) => di.serviceLocator<LoginBloc>(),
        ),

        // Add more blocs here if needed
        // BlocProvider<OtherBloc>(
        //   create: (_) => di.serviceLocator<OtherBloc>(),
        // ),
      ],
      child: MaterialApp.router(
        title: 'NOOK',
        themeMode: ThemeMode.system,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        routerConfig: router,
      ),
    );
  }
}