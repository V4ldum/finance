import 'package:json_annotation/json_annotation.dart';

enum TypeDto {
  @JsonValue('1d')
  net,
  @JsonValue('1w')
  gross,
  @JsonValue('1m')
  finary,
}

extension TypeDtoValues on TypeDto {
  String toApiValue() {
    return switch (this) {
      TypeDto.net => 'net',
      TypeDto.gross => 'gross',
      TypeDto.finary => 'finary',
    };
  }
}
