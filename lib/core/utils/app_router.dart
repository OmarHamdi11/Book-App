import 'package:bookly/features/home/presenation/views/book_details_view.dart';
import 'package:bookly/features/home/presenation/views/home_view.dart';
import 'package:bookly/features/splash/presintation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBoohDetailsView = '/bookDetailsView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBoohDetailsView,
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}
