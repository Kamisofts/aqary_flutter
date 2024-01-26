// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:aqary_flutter/ui/screens/home_page.dart' as _i3;
import 'package:aqary_flutter/ui/screens/pages/custom_painter.dart' as _i1;
import 'package:aqary_flutter/ui/screens/pages/flutter_patterns.dart' as _i2;
import 'package:aqary_flutter/ui/screens/pages/sticky_header_page.dart' as _i4;
import 'package:auto_route/auto_route.dart' as _i5;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    CustomPaintersRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.CustomPainters(),
      );
    },
    FlutterPatternsRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.FlutterPatterns(),
      );
    },
    HomePageRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomePage(),
      );
    },
    StickyHeaderPageRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.StickyHeaderPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.CustomPainters]
class CustomPaintersRoute extends _i5.PageRouteInfo<void> {
  const CustomPaintersRoute({List<_i5.PageRouteInfo>? children})
      : super(
          CustomPaintersRoute.name,
          initialChildren: children,
        );

  static const String name = 'CustomPaintersRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i2.FlutterPatterns]
class FlutterPatternsRoute extends _i5.PageRouteInfo<void> {
  const FlutterPatternsRoute({List<_i5.PageRouteInfo>? children})
      : super(
          FlutterPatternsRoute.name,
          initialChildren: children,
        );

  static const String name = 'FlutterPatternsRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i3.HomePage]
class HomePageRoute extends _i5.PageRouteInfo<void> {
  const HomePageRoute({List<_i5.PageRouteInfo>? children})
      : super(
          HomePageRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomePageRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.StickyHeaderPage]
class StickyHeaderPageRoute extends _i5.PageRouteInfo<void> {
  const StickyHeaderPageRoute({List<_i5.PageRouteInfo>? children})
      : super(
          StickyHeaderPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'StickyHeaderPageRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}
