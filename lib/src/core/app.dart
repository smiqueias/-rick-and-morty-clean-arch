import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rm_clean_arch_graphql/src/core/theme/app_theme_data.dart';
import 'package:rm_clean_arch_graphql/src/modules/character/presentation/screens/character/character_screen.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: CharacterScreen.kRouteName,
        theme: AppThemeData.appThemeData,
        routes: {
          CharacterScreen.kRouteName: (context) => const CharacterScreen(),
        },
      ),
    );
  }
}
