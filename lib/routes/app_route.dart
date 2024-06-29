import 'package:project/constants/route_constant.dart';
import 'package:project/screens/feeds/feeds_screen.dart';
import 'package:project/screens/marketplace/marketplace_screen.dart';
import 'package:project/screens/menu/menu_screen.dart';
import 'package:project/screens/notifications/notifications_screen.dart';
import 'package:project/screens/video/video_screen.dart';

class AppRoute {
  static final appPages = [
    const FeedsScreen(),
    const VideoScreen(),
    const MarketPlaceScreen(),
    const NotificationsScreen(),
    const MenuScreen(),
  ];

  static final appTitle = [
    'feedsScreen',
    'videoScreen',
    'marketplaceScreen',
    'notificationScreen',
    'menuScreen',
  ];

  static final routes = {
    RouteConstant.feedsScreen.name: (context) => const FeedsScreen(),
    RouteConstant.videoScreen.name: (context) => const VideoScreen(),
    RouteConstant.marketplaceScreen.name: (context) =>
        const MarketPlaceScreen(),
    RouteConstant.notificationScreen.name: (context) =>
        const NotificationsScreen(),
    RouteConstant.menuScreen.name: (context) => const MenuScreen()
  };
}
