import '../../common_lib.dart';

enum CarInfoStatus {
  owner,
  rider,
  addingNewCar,
}

final carInfoPageStatusProvider =
    StateProvider<CarInfoStatus>((ref) => CarInfoStatus.owner);
