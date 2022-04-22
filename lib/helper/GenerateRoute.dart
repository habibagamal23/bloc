import 'package:flutter/material.dart';
import 'package:flutter_application_1/busnis_logic/cubit/charctrstic_cubit.dart';
import 'package:flutter_application_1/data/api/charc_api.dart';
import 'package:flutter_application_1/data/repostiy/charcter_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../presention/screens/charcters_Screen.dart';
import 'mystrings.dart';

class AppRoute {
  late final CharctersRepo repo;
  late final CharctrsticCubit cubit;
  AppRoute() {
    repo = CharctersRepo(CharcterApiSerices());
    cubit = CharctrsticCubit(repo);
  }

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case charctersscreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (BuildContext contxt) => cubit,
            child: const CharcterScreen(),
          ),
        );
    }
    return null;
  }
}
