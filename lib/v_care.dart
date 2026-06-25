import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/routes_manager.dart';
import 'core/routing/routes_name.dart';
import 'core/theming/colors_manager.dart';

class VCare extends StatelessWidget {
  const VCare({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        title: 'VCare',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: Colors.blue,
            textSelectionTheme: TextSelectionThemeData(
                cursorColor: ColorsManager.mainBlue,
                selectionHandleColor: ColorsManager.mainBlue,
                selectionColor: ColorsManager.mainBlue.withAlpha(30)
            ),
          scaffoldBackgroundColor: Colors.white
        )
        ,onGenerateRoute: RoutesManager.getRoutes,
        initialRoute: RoutesName.onboarding,
      ),
    );
  }
}
