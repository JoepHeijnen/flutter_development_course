//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class RPricingPlan {
  /// Instantiate a new enum with the provided [value].
  const RPricingPlan._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const PRE_PILOT = RPricingPlan._(r'PRE_PILOT');
  static const PILOT = RPricingPlan._(r'PILOT');
  static const STANDARD = RPricingPlan._(r'STANDARD');
  static const PLUS = RPricingPlan._(r'PLUS');
  static const ENDED = RPricingPlan._(r'ENDED');
  static const UNKNOWN = RPricingPlan._(r'UNKNOWN');

  /// List of all possible values in this [enum][RPricingPlan].
  static const values = <RPricingPlan>[
    PRE_PILOT,
    PILOT,
    STANDARD,
    PLUS,
    ENDED,
    UNKNOWN,
  ];

  static RPricingPlan? fromJson(dynamic value) => RPricingPlanTypeTransformer().decode(value);

  static List<RPricingPlan>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RPricingPlan>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RPricingPlan.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [RPricingPlan] to String,
/// and [decode] dynamic data back to [RPricingPlan].
class RPricingPlanTypeTransformer {
  factory RPricingPlanTypeTransformer() => _instance ??= const RPricingPlanTypeTransformer._();

  const RPricingPlanTypeTransformer._();

  String encode(RPricingPlan data) => data.value;

  /// Decodes a [dynamic value][data] to a RPricingPlan.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RPricingPlan? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'PRE_PILOT': return RPricingPlan.PRE_PILOT;
        case r'PILOT': return RPricingPlan.PILOT;
        case r'STANDARD': return RPricingPlan.STANDARD;
        case r'PLUS': return RPricingPlan.PLUS;
        case r'ENDED': return RPricingPlan.ENDED;
        case r'UNKNOWN': return RPricingPlan.UNKNOWN;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [RPricingPlanTypeTransformer] instance.
  static RPricingPlanTypeTransformer? _instance;
}

