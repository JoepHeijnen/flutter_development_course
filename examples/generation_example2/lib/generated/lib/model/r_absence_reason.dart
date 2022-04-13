//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RAbsenceReason {
  /// Returns a new [RAbsenceReason] instance.
  RAbsenceReason({
    required this.externalId,
    required this.externalName,
    required this.type,
    required this.endTimeRequired,
    this.links = const [],
    this.permissions = const [],
    this.additionalObjects = const {},
    this.dollarType,
  });

  int externalId;

  String externalName;

  RAbsenceReasonType type;

  bool endTimeRequired;

  List<Link> links;

  List<Permission> permissions;

  Map<String, Object> additionalObjects;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dollarType;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RAbsenceReason &&
     other.externalId == externalId &&
     other.externalName == externalName &&
     other.type == type &&
     other.endTimeRequired == endTimeRequired &&
     other.links == links &&
     other.permissions == permissions &&
     other.additionalObjects == additionalObjects &&
     other.dollarType == dollarType;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (externalId.hashCode) +
    (externalName.hashCode) +
    (type.hashCode) +
    (endTimeRequired.hashCode) +
    (links.hashCode) +
    (permissions.hashCode) +
    (additionalObjects.hashCode) +
    (dollarType == null ? 0 : dollarType!.hashCode);

  @override
  String toString() => 'RAbsenceReason[externalId=$externalId, externalName=$externalName, type=$type, endTimeRequired=$endTimeRequired, links=$links, permissions=$permissions, additionalObjects=$additionalObjects, dollarType=$dollarType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'externalId'] = externalId;
      json[r'externalName'] = externalName;
      json[r'type'] = type;
      json[r'endTimeRequired'] = endTimeRequired;
      json[r'links'] = links;
      json[r'permissions'] = permissions;
      json[r'additionalObjects'] = additionalObjects;
    if (dollarType != null) {
      json[r'$type'] = dollarType;
    }
    return json;
  }

  /// Returns a new [RAbsenceReason] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RAbsenceReason? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RAbsenceReason[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RAbsenceReason[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RAbsenceReason(
        externalId: mapValueOfType<int>(json, r'externalId')!,
        externalName: mapValueOfType<String>(json, r'externalName')!,
        type: RAbsenceReasonType.fromJson(json[r'type'])!,
        endTimeRequired: mapValueOfType<bool>(json, r'endTimeRequired')!,
        links: Link.listFromJson(json[r'links']) ?? const [],
        permissions: Permission.listFromJson(json[r'permissions']) ?? const [],
        additionalObjects: mapValueOfType<Map<String, Object>>(json, r'additionalObjects') ?? const {},
        dollarType: mapValueOfType<String>(json, r'$type'),
      );
    }
    return null;
  }

  static List<RAbsenceReason>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RAbsenceReason>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RAbsenceReason.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RAbsenceReason> mapFromJson(dynamic json) {
    final map = <String, RAbsenceReason>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RAbsenceReason.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RAbsenceReason-objects as value to a dart map
  static Map<String, List<RAbsenceReason>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RAbsenceReason>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RAbsenceReason.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'externalId',
    'externalName',
    'type',
    'endTimeRequired',
  };
}

