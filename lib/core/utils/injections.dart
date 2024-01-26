import 'package:get_it/get_it.dart';

import '../blocs/painters_bloc.dart';


final sl = GetIt.instance;

Future<void> init() async {
  //! Blocs

  sl.registerLazySingleton<PaintersBloc>(() => PaintersBloc());


}
