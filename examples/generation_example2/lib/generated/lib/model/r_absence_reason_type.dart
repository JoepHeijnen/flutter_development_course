//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class RAbsenceReasonType {
  /// Instantiate a new enum with the provided [value].
  const RAbsenceReasonType._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const SICKNESS = RAbsenceReasonType._(r'SICKNESS');
  static const OTHER = RAbsenceReasonType._(r'OTHER');

  /// List of all possible values in this [enum][RAbsenceReasonType].
  static const values = <RAbsenceReasonType>[
    SICKNESS,
    OTHER,
  ];

  static RAbsenceReasonType? fromJson(dynamic value) => RAbsenceReasonTypeTypeTransformer().decode(value);

  static List<RAbsenceReasonType>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RAbsenceReasonType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RAbsenceReasonType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [RAbsenceReasonType] to String,
/// and [decode] dynamic data back to [RAbsenceReasonType].
class RAbsenceReasonTypeTypeTransformer {
  factory RAbsenceReasonTypeTypeTransformer() => _instance ??= const RAbsenceReasonTypeTypeTransformer._();

  const RAbsenceReasonTypeTypeTransformer._();

  String encode(RAbsenceReasonType data) => data.value;

  /// Decodes a [dynamic value][data] to a RAbsenceReasonType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RAbsenceReasonType? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'SICKNESS': return RAbsenceReasonType.SICKNESS;
        case r'OTHER': return RAbsenceReasonType.OTHER;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [RAbsenceReasonTypeTypeTransformer] instance.
  static RAbsenceReasonTypeTypeTransformer? _instance;
}

