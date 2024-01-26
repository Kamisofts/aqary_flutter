part of 'routes_import.dart';

@AutoRouterConfig(replaceInRouteName: "Route")
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.custom(); //.

  @override
  List<CustomRoute> get routes => [
        CustomRoute(
          page: HomePageRoute.page,
          path: "/",
          transitionsBuilder: animationPage,
        ),
        CustomRoute(
          page: FlutterPatternsRoute.page,
          transitionsBuilder: animationPage,
        ),
        CustomRoute(
          page: CustomPaintersRoute.page,
          transitionsBuilder: animationPage,
        ),
        CustomRoute(
          page: StickyHeaderPageRoute.page,
          transitionsBuilder: animationPage,
        ),
        CustomRoute(
          page: AsyncTransformersRoute.page,
          transitionsBuilder: animationPage,
        ),
        CustomRoute(
          page: MakeApiCallRoute.page,
          transitionsBuilder: animationPage,
        ),
      ];

  Widget animationPage(context, animation, secondaryAnimation, child) =>
      FadeTransition(
        opacity: animation,
        child: child,
      );
}
