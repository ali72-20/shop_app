import 'package:go_router/go_router.dart';
import 'package:shop_app/fetures/home_screen/presentaion_layer/home_screen.dart';
import 'package:shop_app/fetures/home_screen/presentaion_layer/widgets/product_Services.dart';
import 'package:shop_app/fetures/home_screen/presentaion_layer/widgets/start_screen.dart';

abstract class AppRoutes  {
  static const kStartPath = '/';

  static  final router = GoRouter(
    routes: [
      GoRoute(
        path: kStartPath,
        builder: (context,state)=> const StartScreen()
      )
    ]
  );
}