import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/data/models/charcters.dart';
import 'package:flutter_application_1/data/repostiy/charcter_repo.dart';
import 'package:meta/meta.dart';

part 'charctrstic_state.dart';

class CharctrsticCubit extends Cubit<CharctrsticState> {
  final CharctersRepo charctersRepo;

  CharctrsticCubit(this.charctersRepo) : super(CharctrsticInitial());

  late List<Characterrs> charcter = [];

  List<Characterrs> getAllCharcter() {
    charctersRepo.getallCharcter().then((charcter) =>
        {emit(Charcterloaded(charcter)), this.charcter = charcter});

    return charcter;
  }
}
