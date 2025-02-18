import 'package:app/data/models/authentication_model.dart';
import 'package:app/data/models/garage_model.dart';
import 'package:app/data/models/plate_characters.dart';
import 'package:app/data/services/clients/callback.dart';

import '../../models/governorate_model.dart';
import '../../models/plate_types.dart';
import '../../models/vehicle_models.dart';
import '../../models/vehicle_type.dart';
import '_clients.dart';

part "auth_client.g.dart";

@riverpod
AuthClient authClient(AuthClientRef ref) => AuthClient(ref.dio);

@RestApi()
abstract class AuthClient {
  factory AuthClient(Dio dio, {String baseUrl}) = _AuthClient;

  @POST('/login')
  FutureApiResponse<AuthenticationModel> login(@Body() dynamic data);

  @GET('/mobile/governorates')
  FuturePaginatedResponse<GovernorateModel> getGovernorates({
    @Query('pageNumber') int? pageNumber,
    @Query('name') String? name,
  });

  @GET('/mobile/plate-characters')
  FuturePaginatedResponse<PlateCharacters> getPlateCharecters(
      {@Query('pageNumber') int? pageNumber,
      @Query('name') String? name,
      @Query('governorateName') String? governorateName});

  @GET('/mobile/plate-types')
  FuturePaginatedResponse<PlateTypes> getPlateType({
    @Query('pageNumber') int? pageNumber,
    @Query('name') String? name,
  });

  @GET('/mobile/vehicle-types')
  FuturePaginatedResponse<VehicleType> getVeichleType({
    @Query('pageNumber') int? pageNumber,
    @Query('name') String? name,
  });

  @GET('/mobile/vehicle-models')
  FuturePaginatedResponse<VehicleModel> getVeichleModel({
    @Query('pageNumber') int? pageNumber,
    @Query('name') String? name,
  });

  @GET('/mobile/garages')
  FuturePaginatedResponse<Garage> getGarages({
    @Query('pageNumber') int? pageNumber,
    @Query('name') String? name,
  });
}
