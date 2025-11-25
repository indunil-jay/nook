import 'package:go_router/go_router.dart';
import 'package:nook/app/router/routes.dart';
import 'package:nook/features/authentication/presentation/pages/login_page.dart';


final GoRouter router = GoRouter(
  initialLocation: Routes.login,
  routes: [
    GoRoute(
      path: Routes.login,
      builder: (context, state) => const LoginScreen(),
    ),
     
  ],
);