import 'package:aqary_flutter/core/blocs/steps/steps_bloc.dart';
import 'package:get_it/get_it.dart';

import '../blocs/api/api_call_bloc.dart';
import '../blocs/painters/painters_bloc.dart';


final sl = GetIt.instance;

Future<void> init() async {
  //! Blocs

  sl.registerLazySingleton<PaintersBloc>(() => PaintersBloc());
  sl.registerLazySingleton<StepsBloc>(() => StepsBloc());
  sl.registerLazySingleton<ApiCallBloc>(() => ApiCallBloc());


}
