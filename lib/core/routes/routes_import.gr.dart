// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:aqary_flutter/ui/screens/home_page.dart' as _i4;
import 'package:aqary_flutter/ui/screens/pages/make_api_call.dart' as _i5;
import 'package:aqary_flutter/ui/screens/pages/async_transform.dart' as _i1;
import 'package:aqary_flutter/ui/screens/pages/custom_painter.dart' as _i2;
import 'package:aqary_flutter/ui/screens/pages/flutter_patterns.dart' as _i3;
import 'package:aqary_flutter/ui/screens/pages/sticky_header_page.dart' as _i6;
import 'package:auto_route/auto_route.dart' as _i7;

abstract class $AppRouter extends _i7.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    AsyncTransformersRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AsyncTransformers(),
      );
    },
    CustomPaintersRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.CustomPainters(),
      );
    },
    FlutterPatternsRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.FlutterPatterns(),
      );
    },
    HomePageRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.HomePage(),
      );
    },
    MakeApiCallRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.MakeApiCall(),
      );
    },
    StickyHeaderPageRoute.name: (routeData) {
      return _i7.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.StickyHeaderPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AsyncTransformers]
class AsyncTransformersRoute extends _i7.PageRouteInfo<void> {
  const AsyncTransformersRoute({List<_i7.PageRouteInfo>? children})
      : super(
          AsyncTransformersRoute.name,
          initialChildren: children,
        );

  static const String name = 'AsyncTransformersRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i2.CustomPainters]
class CustomPaintersRoute extends _i7.PageRouteInfo<void> {
  const CustomPaintersRoute({List<_i7.PageRouteInfo>? children})
      : super(
          CustomPaintersRoute.name,
          initialChildren: children,
        );

  static const String name = 'CustomPaintersRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i3.FlutterPatterns]
class FlutterPatternsRoute extends _i7.PageRouteInfo<void> {
  const FlutterPatternsRoute({List<_i7.PageRouteInfo>? children})
      : super(
          FlutterPatternsRoute.name,
          initialChildren: children,
        );

  static const String name = 'FlutterPatternsRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i4.HomePage]
class HomePageRoute extends _i7.PageRouteInfo<void> {
  const HomePageRoute({List<_i7.PageRouteInfo>? children})
      : super(
          HomePageRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomePageRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i5.MakeApiCall]
class MakeApiCallRoute extends _i7.PageRouteInfo<void> {
  const MakeApiCallRoute({List<_i7.PageRouteInfo>? children})
      : super(
          MakeApiCallRoute.name,
          initialChildren: children,
        );

  static const String name = 'MakeApiCallRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}

/// generated route for
/// [_i6.StickyHeaderPage]
class StickyHeaderPageRoute extends _i7.PageRouteInfo<void> {
  const StickyHeaderPageRoute({List<_i7.PageRouteInfo>? children})
      : super(
          StickyHeaderPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'StickyHeaderPageRoute';

  static const _i7.PageInfo<void> page = _i7.PageInfo<void>(name);
}
