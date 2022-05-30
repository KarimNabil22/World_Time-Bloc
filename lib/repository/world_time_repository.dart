import '../sevecies/world_time.dart';

class worldTimeRepository {
  final WorldTime worldTime;

  worldTimeRepository(this.worldTime);

  Future<void> getTime() async {
    final worldtime = await worldTime.getTime();
  }
}
