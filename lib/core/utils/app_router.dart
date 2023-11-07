import 'package:bookly/Features/home/presentaion/views/book_details_view.dart';
import 'package:bookly/Features/home/presentaion/views/home.dart';
import 'package:bookly/Features/splash/presentaion/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';

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
            path: kBookDetailsView,
            builder: (context, state) => const BookDetailsView(),
          ),
      ]
    );
}