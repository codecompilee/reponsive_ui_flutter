import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_widgets/home_screen/home_screen_app.dart';
import 'package:flutter_widgets/home_screen/home_screen_tab.dart';
import 'package:flutter_widgets/home_screen/home_screen_web.dart';
import 'package:flutter_widgets/utils/screen_util_breakpoints.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) {
        ScreenUtilBreakpoints.initMobileDesignSize(context);
        return const HomeScreenApp();
      },
      tablet: (context) {
         ScreenUtilBreakpoints.initTabletDesignSize(context);
        return const HomeScreenTab();
      },
      desktop: (context) {
         ScreenUtilBreakpoints.initWebDesignSize(context);
        return const HomeScreenWeb();
      },
    );
  }
}