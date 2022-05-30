import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:world_clock/sevecies/world_time.dart';

part 'world_time_state.dart';

class WorldTimeCubit extends Cubit<WorldTimeState> {
  final WorldTime worldTime;
  WorldTimeCubit(this.worldTime) : super(WorldTimeInitial());
}

void setupWorldTime() async {
  WorldTime inestance =
      WorldTime(location: 'Berlin', flag: 'Germany.png', url: 'Europe/Berlin');
  await inestance.getTime();
  Navigator.pushReplacementNamed(context, '/home', arguments: {
    'location': inestance.location,
    'flag': inestance.flag,
    'time': inestance.time,
    'isDayTie': inestance.isDaytime,
  });
}

@override
void initstate() {
  super.initState();
  setupWorldTime();
}
