import 'package:basketball_point_counter/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncrementState());

  int teamAPiont = 0;
  int teamBPiont = 0;

  void TeamIncreament({required String team, required int buttonNumber}) {
    if (team == 'A') {
      teamAPiont += buttonNumber;
      emit(CounterAIncrementState());
    } else {
      teamAPiont += buttonNumber;
      emit(CounterBIncrementState());
    }
  }
}
