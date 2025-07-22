import 'package:go_router/go_router.dart';
import 'package:zimro/features/auth/presentation/views/auth_view.dart';
import 'package:zimro/features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kAuthView = '/auth_view';

  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => SplashView()),
      GoRoute(path: kAuthView, builder: (context, state) => AuthView()),
    ],
  );
}
