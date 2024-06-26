import 'package:go_router/go_router.dart';
import 'package:simple_flutter_template/features/home/home_page.dart';
import 'package:simple_flutter_template/features/login/login_page.dart';
import 'package:simple_flutter_template/features/splash/splash_page.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => SplashPage(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => LoginPage(),
    ),
    GoRoute(
      path: '/home/:username',
      builder: (context, state) {
        final username = state.pathParameters['username'] ?? '';
        return HomePage(
          username: username,
        );
      },
    ),
  ],
);
