// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const SplashScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: HomeScreen(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    BarcodeScannerRoute.name: (routeData) {
      final args = routeData.argsAs<BarcodeScannerRouteArgs>(
          orElse: () => const BarcodeScannerRouteArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: BarcodeScannerScreen(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    BarcodeEnterRoute.name: (routeData) {
      final args = routeData.argsAs<BarcodeEnterRouteArgs>(
          orElse: () => const BarcodeEnterRouteArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: BarcodeEnterScreen(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
    BarcodeInfoRoute.name: (routeData) {
      final args = routeData.argsAs<BarcodeInfoRouteArgs>(
          orElse: () => const BarcodeInfoRouteArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: BarcodeInfoScreen(
          key: args.key,
          wmFactory: args.wmFactory,
        ),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        RouteConfig(
          HomeRoute.name,
          path: '/home-screen',
        ),
        RouteConfig(
          BarcodeScannerRoute.name,
          path: '/barcode-scanner-screen',
        ),
        RouteConfig(
          BarcodeEnterRoute.name,
          path: '/barcode-enter-screen',
        ),
        RouteConfig(
          BarcodeInfoRoute.name,
          path: '/barcode-info-screen',
        ),
      ];
}

/// generated route for
/// [SplashScreen]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = homeScreenWidgetModelFactory,
  }) : super(
          HomeRoute.name,
          path: '/home-screen',
          args: HomeRouteArgs(
            key: key,
            wmFactory: wmFactory,
          ),
        );

  static const String name = 'HomeRoute';
}

class HomeRouteArgs {
  const HomeRouteArgs({
    this.key,
    this.wmFactory = homeScreenWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [BarcodeScannerScreen]
class BarcodeScannerRoute extends PageRouteInfo<BarcodeScannerRouteArgs> {
  BarcodeScannerRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = barcodeScannerScreenWidgetModelFactory,
  }) : super(
          BarcodeScannerRoute.name,
          path: '/barcode-scanner-screen',
          args: BarcodeScannerRouteArgs(
            key: key,
            wmFactory: wmFactory,
          ),
        );

  static const String name = 'BarcodeScannerRoute';
}

class BarcodeScannerRouteArgs {
  const BarcodeScannerRouteArgs({
    this.key,
    this.wmFactory = barcodeScannerScreenWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'BarcodeScannerRouteArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [BarcodeEnterScreen]
class BarcodeEnterRoute extends PageRouteInfo<BarcodeEnterRouteArgs> {
  BarcodeEnterRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = barcodeEnterScreenWidgetModelFactory,
  }) : super(
          BarcodeEnterRoute.name,
          path: '/barcode-enter-screen',
          args: BarcodeEnterRouteArgs(
            key: key,
            wmFactory: wmFactory,
          ),
        );

  static const String name = 'BarcodeEnterRoute';
}

class BarcodeEnterRouteArgs {
  const BarcodeEnterRouteArgs({
    this.key,
    this.wmFactory = barcodeEnterScreenWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'BarcodeEnterRouteArgs{key: $key, wmFactory: $wmFactory}';
  }
}

/// generated route for
/// [BarcodeInfoScreen]
class BarcodeInfoRoute extends PageRouteInfo<BarcodeInfoRouteArgs> {
  BarcodeInfoRoute({
    Key? key,
    WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
            BuildContext)
        wmFactory = barcodeInfoScreenWidgetModelFactory,
  }) : super(
          BarcodeInfoRoute.name,
          path: '/barcode-info-screen',
          args: BarcodeInfoRouteArgs(
            key: key,
            wmFactory: wmFactory,
          ),
        );

  static const String name = 'BarcodeInfoRoute';
}

class BarcodeInfoRouteArgs {
  const BarcodeInfoRouteArgs({
    this.key,
    this.wmFactory = barcodeInfoScreenWidgetModelFactory,
  });

  final Key? key;

  final WidgetModel<ElementaryWidget<IWidgetModel>, ElementaryModel> Function(
      BuildContext) wmFactory;

  @override
  String toString() {
    return 'BarcodeInfoRouteArgs{key: $key, wmFactory: $wmFactory}';
  }
}
