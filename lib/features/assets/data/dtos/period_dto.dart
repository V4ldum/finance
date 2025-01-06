import 'package:finance/_l10n/_generated/l10n.dart';
import 'package:json_annotation/json_annotation.dart';

enum PeriodDto {
  @JsonValue('1d')
  day,
  @JsonValue('1w')
  week,
  @JsonValue('1m')
  month,
  @JsonValue('ytd')
  ytd,
  @JsonValue('1y')
  year,
  @JsonValue('all')
  all,
}

extension PeriodDtoValues on PeriodDto {
  String toApiValue() {
    return switch (this) {
      PeriodDto.day => '1d',
      PeriodDto.week => '1w',
      PeriodDto.month => '1m',
      PeriodDto.ytd => 'ytd',
      PeriodDto.year => '1y',
      PeriodDto.all => 'all',
    };
  }

  String toIntlString() {
    return switch (this) {
      PeriodDto.day => S.current.periodDay,
      PeriodDto.week => S.current.periodWeek,
      PeriodDto.month => S.current.periodMonth,
      PeriodDto.ytd => S.current.periodYtd,
      PeriodDto.year => S.current.periodYear,
      PeriodDto.all => S.current.periodAll,
    };
  }
}
