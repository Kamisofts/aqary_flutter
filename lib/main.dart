import 'package:aqary_flutter/core/blocs/painters/painters_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'core/blocs/api/api_call_bloc.dart';
import 'core/blocs/steps/steps_bloc.dart';
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
        BlocProvider(create: (context) => di.sl<StepsBloc>()),
        BlocProvider(create: (context) => di.sl<ApiCallBloc>()),
      ],
      child: ResponsiveSizer(
          builder: (context, orientation, screenType)
      {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
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


