import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum EventStatus{ONCHANGE}

class OnboardEvent{
  final int value;
  final EventStatus status;

  const OnboardEvent({@required this.value, @required this.status});
}

class OnboardBloc extends Bloc<OnboardEvent, int>{

  @override
  OnboardBloc(int initialState): super(initialState);

  int get initialState => 0;

  @override
  Stream<int> mapEventToState(event) async*{
    if(event.status == EventStatus.ONCHANGE){
      yield event.value;
    }
  }
}