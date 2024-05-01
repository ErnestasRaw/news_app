import 'package:flutter/material.dart';
import 'package:news_app/core/config/theme/app_theme.dart';
import 'package:news_app/core/di/di_config.dart';
import 'package:news_app/presentation/articles_list/view/articles_list_view.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureDependencies();

  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.dumpErrorToConsole(details);
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        if (navigatorKey.currentContext != null) {
          ScaffoldMessenger.of(navigatorKey.currentContext!).showSnackBar(
            SnackBar(
              content: Text(
                "An exception occurred: ${details.exceptionAsString()}",
              ),
              backgroundColor: Colors.red,
              behavior: SnackBarBehavior.floating,
              showCloseIcon: true,
            ),
          );
        }
      },
    );
  };

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      initialRoute: "/",
      theme: appTheme,
      routes: {
        "/": (context) => const ArticleListView(),
      },
    );
  }
}
