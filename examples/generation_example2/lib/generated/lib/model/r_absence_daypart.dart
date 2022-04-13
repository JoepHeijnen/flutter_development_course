//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class RAbsenceDaypart {
  /// Instantiate a new enum with the provided [value].
  const RAbsenceDaypart._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const MORNING = RAbsenceDaypart._(r'MORNING');
  static const AFTERNOON = RAbsenceDaypart._(r'AFTERNOON');
  static const CUSTOM = RAbsenceDaypart._(r'CUSTOM');

  /// List of all possible values in this [enum][RAbsenceDaypart].
  static const values = <RAbsenceDaypart>[
    MORNING,
    AFTERNOON,
    CUSTOM,
  ];

  static RAbsenceDaypart? fromJson(dynamic value) => RAbsenceDaypartTypeTransformer().decode(value);

  static List<RAbsenceDaypart>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RAbsenceDaypart>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RAbsenceDaypart.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [RAbsenceDaypart] to String,
/// and [decode] dynamic data back to [RAbsenceDaypart].
class RAbsenceDaypartTypeTransformer {
  factory RAbsenceDaypartTypeTransformer() => _instance ??= const RAbsenceDaypartTypeTransformer._();

  const RAbsenceDaypartTypeTransformer._();

  String encode(RAbsenceDaypart data) => data.value;

  /// Decodes a [dynamic value][data] to a RAbsenceDaypart.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RAbsenceDaypart? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'MORNING': return RAbsenceDaypart.MORNING;
        case r'AFTERNOON': return RAbsenceDaypart.AFTERNOON;
        case r'CUSTOM': return RAbsenceDaypart.CUSTOM;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [RAbsenceDaypartTypeTransformer] instance.
  static RAbsenceDaypartTypeTransformer? _instance;
}

