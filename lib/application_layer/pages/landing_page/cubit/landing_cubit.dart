import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'landing_state.dart';

class LandingCubit extends Cubit<LandingCubitState> {
  LandingCubit() : super(const LandingInitial());
}
