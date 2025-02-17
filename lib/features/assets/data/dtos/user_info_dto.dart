import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta_package/meta_package.dart';

part '_generated/user_info_dto.freezed.dart';
part '_generated/user_info_dto.g.dart';

@freezed
sealed class UserInfoDto with _$UserInfoDto {
  const factory UserInfoDto({required UserInfoResultDto result}) = _UserInfoDto;

  factory UserInfoDto.fromJson(JsonMapResponse json) => _$UserInfoDtoFromJson(json);

  factory UserInfoDto.fromHttpResponse(JsonMapResponse response) {
    return UserInfoDto.fromJson(response);
  }
}

@freezed
sealed class UserInfoResultDto with _$UserInfoResultDto {
  const factory UserInfoResultDto({@JsonKey(name: 'last_asset_updated_at') required String lastSync}) =
      _UserInfoResultDtoo;

  factory UserInfoResultDto.fromJson(JsonMapResponse json) => _$UserInfoResultDtoFromJson(json);

  factory UserInfoResultDto.fromHttpResponse(JsonMapResponse response) {
    return UserInfoResultDto.fromJson(response);
  }
}
