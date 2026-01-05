import '../../src.dart';
@lazySingleton
class AppRouter {
  final _router = GoRouter(
    initialLocation: "/",
    routes: [
      GoRoute(path: "/base", builder: (context, state) => const Scaffold()),
    ],
  );

  GoRouter get router => _router;
}
