import 'package:equatable/equatable.dart';

abstract class CubitStates extends Equatable {}

// ignore: must_be_immutable
class InitialState extends CubitStates {
  late int x;
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class WelcomeState extends CubitStates {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class LoadingState extends CubitStates {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

class LoadedState extends CubitStates {
  @override
  // TODO: implement props
  List<Object> get props => [];
}
