part of 'charctrstic_cubit.dart';

@immutable
abstract class CharctrsticState {}

class CharctrsticInitial extends CharctrsticState {}

class Charcterloaded extends CharctrsticState {
  final List<Characterrs> charcter;
  Charcterloaded(this.charcter);
}
