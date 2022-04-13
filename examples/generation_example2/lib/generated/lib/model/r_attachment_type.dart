//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class RAttachmentType {
  /// Instantiate a new enum with the provided [value].
  const RAttachmentType._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const IMAGE = RAttachmentType._(r'IMAGE');
  static const PDF = RAttachmentType._(r'PDF');
  static const DOCUMENT = RAttachmentType._(r'DOCUMENT');
  static const SPREADSHEET = RAttachmentType._(r'SPREADSHEET');
  static const PRESENTATION = RAttachmentType._(r'PRESENTATION');
  static const VIDEO = RAttachmentType._(r'VIDEO');
  static const AUDIO = RAttachmentType._(r'AUDIO');
  static const YEARBOOK = RAttachmentType._(r'YEARBOOK');
  static const YEARBOOK_FRONT = RAttachmentType._(r'YEARBOOK_FRONT');
  static const YEARBOOK_BACK = RAttachmentType._(r'YEARBOOK_BACK');
  static const YEARBOOK_IMAGE = RAttachmentType._(r'YEARBOOK_IMAGE');
  static const UNKNOWN = RAttachmentType._(r'UNKNOWN');

  /// List of all possible values in this [enum][RAttachmentType].
  static const values = <RAttachmentType>[
    IMAGE,
    PDF,
    DOCUMENT,
    SPREADSHEET,
    PRESENTATION,
    VIDEO,
    AUDIO,
    YEARBOOK,
    YEARBOOK_FRONT,
    YEARBOOK_BACK,
    YEARBOOK_IMAGE,
    UNKNOWN,
  ];

  static RAttachmentType? fromJson(dynamic value) => RAttachmentTypeTypeTransformer().decode(value);

  static List<RAttachmentType>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RAttachmentType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RAttachmentType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [RAttachmentType] to String,
/// and [decode] dynamic data back to [RAttachmentType].
class RAttachmentTypeTypeTransformer {
  factory RAttachmentTypeTypeTransformer() => _instance ??= const RAttachmentTypeTypeTransformer._();

  const RAttachmentTypeTypeTransformer._();

  String encode(RAttachmentType data) => data.value;

  /// Decodes a [dynamic value][data] to a RAttachmentType.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RAttachmentType? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'IMAGE': return RAttachmentType.IMAGE;
        case r'PDF': return RAttachmentType.PDF;
        case r'DOCUMENT': return RAttachmentType.DOCUMENT;
        case r'SPREADSHEET': return RAttachmentType.SPREADSHEET;
        case r'PRESENTATION': return RAttachmentType.PRESENTATION;
        case r'VIDEO': return RAttachmentType.VIDEO;
        case r'AUDIO': return RAttachmentType.AUDIO;
        case r'YEARBOOK': return RAttachmentType.YEARBOOK;
        case r'YEARBOOK_FRONT': return RAttachmentType.YEARBOOK_FRONT;
        case r'YEARBOOK_BACK': return RAttachmentType.YEARBOOK_BACK;
        case r'YEARBOOK_IMAGE': return RAttachmentType.YEARBOOK_IMAGE;
        case r'UNKNOWN': return RAttachmentType.UNKNOWN;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [RAttachmentTypeTypeTransformer] instance.
  static RAttachmentTypeTypeTransformer? _instance;
}

