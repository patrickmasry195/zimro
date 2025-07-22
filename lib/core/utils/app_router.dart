import 'package:go_router/go_router.dart';
import 'package:zimro/features/auth/presentation/views/auth_view.dart';
import 'package:zimro/features/login/presentation/views/login_view.dart';
import 'package:zimro/features/signup/presentation/views/signup_view.dart';
import 'package:zimro/features/signup/presentation/views/widgets/confirm_email.dart';
import 'package:zimro/features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kAuthView = '/auth_view';
  static const kSignUpView = '/signup_view';
  static const kLoginView = '/login_view';
  static const kConfirmEmail = '/confirm_email';

  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => SplashView()),
      GoRoute(path: kAuthView, builder: (context, state) => AuthView()),
      GoRoute(path: kSignUpView, builder: (context, state) => SignupView()),
      GoRoute(path: kLoginView, builder: (context, state) => LoginView()),
      GoRoute(path: kConfirmEmail, builder: (context, state) => ConfirmEmail()),
    ],
  );
}
