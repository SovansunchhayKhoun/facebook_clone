import 'package:project/constants/route_constant.dart';
import 'package:project/screens/feeds/feeds_screen.dart';
import 'package:project/screens/marketplace/marketplace_screen.dart';

class AppRoute {
  static final appPages = [
    const FeedsScreen(),
    const MarketPlaceScreen(),
  ];

  static final appTitle = [
    'Feeds',
    'Marketplace',
  ];

  static final routes = {
    RouteConstant.feedsScreen.name: (context) => const FeedsScreen(),
    RouteConstant.marketplaceScreen.name: (context) => const MarketPlaceScreen()
  };
}
