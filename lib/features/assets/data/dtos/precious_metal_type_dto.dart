import 'package:freezed_annotation/freezed_annotation.dart';

enum PreciousMetalTypeDto {
  @JsonValue('GOLD')
  gold,
  @JsonValue('SILVER')
  silver,
  @JsonValue('OTHER')
  other,
}

extension PreciousMetalTypeDtoExtension on PreciousMetalTypeDto {
  String toApiValue() {
    return switch (this) {
      PreciousMetalTypeDto.gold => 'GOLD',
      PreciousMetalTypeDto.silver => 'SILVER',
      PreciousMetalTypeDto.other => 'OTHER',
    };
  }
}
