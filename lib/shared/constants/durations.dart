/// Standard durations used across the app
class Durations {
  /// 80 milliseconds
  static const xs = 80;

  /// 150 milliseconds
  static const s = 150;

  /// 300 milliseconds
  static const m = 300;

  /// 500 milliseconds
  static const l = 500;

  /// 1000 milliseconds
  static const xl = 1000;
}

/// Custom constructor for a [Duration] instance using [Durations.xs]
class ExtraShortDuration extends Duration {
  /// Construct a [Duration] instance with [Durations.xs] milliseconds
  const ExtraShortDuration() : super(milliseconds: Durations.xs);
}

/// Custom constructor for a [Duration] instance using [Durations.s]
class ShortDuration extends Duration {
  /// Construct a [Duration] instance with [Durations.s] milliseconds
  const ShortDuration() : super(milliseconds: Durations.s);
}

/// Custom constructor for a [Duration] instance using [Durations.m]
class MediumDuration extends Duration {
  /// Construct a [Duration] instance with [Durations.m] milliseconds
  const MediumDuration() : super(milliseconds: Durations.m);
}

/// Custom constructor for a [Duration] instance using [Durations.l]
class LongDuration extends Duration {
  /// Construct a [Duration] instance with [Durations.l] milliseconds
  const LongDuration() : super(milliseconds: Durations.l);
}

/// Custom constructor for a [Duration] instance using [Durations.xl]
class ExtraLongDuration extends Duration {
  /// Construct a [Duration] instance with [Durations.xl] milliseconds
  const ExtraLongDuration() : super(milliseconds: Durations.xl);
}
