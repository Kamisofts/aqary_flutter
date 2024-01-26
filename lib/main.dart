import 'package:aqary_flutter/core/blocs/painters_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'core/constants/const_colors.dart';
import 'core/routes/routes_import.dart';
import 'core/utils/injections.dart' as di;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  // This widget is the root of your application.
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => di.sl<PaintersBloc>()),
      ],
      child: ResponsiveSizer(
          builder: (context, orientation, screenType)
      {
        return MaterialApp.router(
          title: 'Flutter Test',
          theme: ThemeData(

            colorScheme:
            ColorScheme.fromSeed(seedColor: ConstColors.kPrimaryColor),
            useMaterial3: true,
          ),

          routerConfig: _appRouter.config(),
        );
      }),
    );
  }
}


