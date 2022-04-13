//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RDoNotDisturbPrimer {
  /// Returns a new [RDoNotDisturbPrimer] instance.
  RDoNotDisturbPrimer({
    this.mondayStart,
    this.mondayEnd,
    this.tuesdayStart,
    this.tuesdayEnd,
    this.wednesdayStart,
    this.wednesdayEnd,
    this.thursdayStart,
    this.thusdayEnd,
    this.fridayStart,
    this.fridayEnd,
    this.saturdayStart,
    this.saturdayEnd,
    this.sundayStart,
    this.sundayEnd,
    this.links = const [],
    this.permissions = const [],
    this.additionalObjects = const {},
    this.dollarType,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? mondayStart;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? mondayEnd;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? tuesdayStart;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? tuesdayEnd;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? wednesdayStart;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? wednesdayEnd;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? thursdayStart;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? thusdayEnd;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? fridayStart;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? fridayEnd;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? saturdayStart;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? saturdayEnd;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? sundayStart;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? sundayEnd;

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
  bool operator ==(Object other) => identical(this, other) || other is RDoNotDisturbPrimer &&
     other.mondayStart == mondayStart &&
     other.mondayEnd == mondayEnd &&
     other.tuesdayStart == tuesdayStart &&
     other.tuesdayEnd == tuesdayEnd &&
     other.wednesdayStart == wednesdayStart &&
     other.wednesdayEnd == wednesdayEnd &&
     other.thursdayStart == thursdayStart &&
     other.thusdayEnd == thusdayEnd &&
     other.fridayStart == fridayStart &&
     other.fridayEnd == fridayEnd &&
     other.saturdayStart == saturdayStart &&
     other.saturdayEnd == saturdayEnd &&
     other.sundayStart == sundayStart &&
     other.sundayEnd == sundayEnd &&
     other.links == links &&
     other.permissions == permissions &&
     other.additionalObjects == additionalObjects &&
     other.dollarType == dollarType;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (mondayStart == null ? 0 : mondayStart!.hashCode) +
    (mondayEnd == null ? 0 : mondayEnd!.hashCode) +
    (tuesdayStart == null ? 0 : tuesdayStart!.hashCode) +
    (tuesdayEnd == null ? 0 : tuesdayEnd!.hashCode) +
    (wednesdayStart == null ? 0 : wednesdayStart!.hashCode) +
    (wednesdayEnd == null ? 0 : wednesdayEnd!.hashCode) +
    (thursdayStart == null ? 0 : thursdayStart!.hashCode) +
    (thusdayEnd == null ? 0 : thusdayEnd!.hashCode) +
    (fridayStart == null ? 0 : fridayStart!.hashCode) +
    (fridayEnd == null ? 0 : fridayEnd!.hashCode) +
    (saturdayStart == null ? 0 : saturdayStart!.hashCode) +
    (saturdayEnd == null ? 0 : saturdayEnd!.hashCode) +
    (sundayStart == null ? 0 : sundayStart!.hashCode) +
    (sundayEnd == null ? 0 : sundayEnd!.hashCode) +
    (links.hashCode) +
    (permissions.hashCode) +
    (additionalObjects.hashCode) +
    (dollarType == null ? 0 : dollarType!.hashCode);

  @override
  String toString() => 'RDoNotDisturbPrimer[mondayStart=$mondayStart, mondayEnd=$mondayEnd, tuesdayStart=$tuesdayStart, tuesdayEnd=$tuesdayEnd, wednesdayStart=$wednesdayStart, wednesdayEnd=$wednesdayEnd, thursdayStart=$thursdayStart, thusdayEnd=$thusdayEnd, fridayStart=$fridayStart, fridayEnd=$fridayEnd, saturdayStart=$saturdayStart, saturdayEnd=$saturdayEnd, sundayStart=$sundayStart, sundayEnd=$sundayEnd, links=$links, permissions=$permissions, additionalObjects=$additionalObjects, dollarType=$dollarType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (mondayStart != null) {
      json[r'mondayStart'] = mondayStart!.toUtc().toIso8601String();
    }
    if (mondayEnd != null) {
      json[r'mondayEnd'] = mondayEnd!.toUtc().toIso8601String();
    }
    if (tuesdayStart != null) {
      json[r'tuesdayStart'] = tuesdayStart!.toUtc().toIso8601String();
    }
    if (tuesdayEnd != null) {
      json[r'tuesdayEnd'] = tuesdayEnd!.toUtc().toIso8601String();
    }
    if (wednesdayStart != null) {
      json[r'wednesdayStart'] = wednesdayStart!.toUtc().toIso8601String();
    }
    if (wednesdayEnd != null) {
      json[r'wednesdayEnd'] = wednesdayEnd!.toUtc().toIso8601String();
    }
    if (thursdayStart != null) {
      json[r'thursdayStart'] = thursdayStart!.toUtc().toIso8601String();
    }
    if (thusdayEnd != null) {
      json[r'thusdayEnd'] = thusdayEnd!.toUtc().toIso8601String();
    }
    if (fridayStart != null) {
      json[r'fridayStart'] = fridayStart!.toUtc().toIso8601String();
    }
    if (fridayEnd != null) {
      json[r'fridayEnd'] = fridayEnd!.toUtc().toIso8601String();
    }
    if (saturdayStart != null) {
      json[r'saturdayStart'] = saturdayStart!.toUtc().toIso8601String();
    }
    if (saturdayEnd != null) {
      json[r'saturdayEnd'] = saturdayEnd!.toUtc().toIso8601String();
    }
    if (sundayStart != null) {
      json[r'sundayStart'] = sundayStart!.toUtc().toIso8601String();
    }
    if (sundayEnd != null) {
      json[r'sundayEnd'] = sundayEnd!.toUtc().toIso8601String();
    }
      json[r'links'] = links;
      json[r'permissions'] = permissions;
      json[r'additionalObjects'] = additionalObjects;
    if (dollarType != null) {
      json[r'$type'] = dollarType;
    }
    return json;
  }

  /// Returns a new [RDoNotDisturbPrimer] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RDoNotDisturbPrimer? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RDoNotDisturbPrimer[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RDoNotDisturbPrimer[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RDoNotDisturbPrimer(
        mondayStart: mapDateTime(json, r'mondayStart', ''),
        mondayEnd: mapDateTime(json, r'mondayEnd', ''),
        tuesdayStart: mapDateTime(json, r'tuesdayStart', ''),
        tuesdayEnd: mapDateTime(json, r'tuesdayEnd', ''),
        wednesdayStart: mapDateTime(json, r'wednesdayStart', ''),
        wednesdayEnd: mapDateTime(json, r'wednesdayEnd', ''),
        thursdayStart: mapDateTime(json, r'thursdayStart', ''),
        thusdayEnd: mapDateTime(json, r'thusdayEnd', ''),
        fridayStart: mapDateTime(json, r'fridayStart', ''),
        fridayEnd: mapDateTime(json, r'fridayEnd', ''),
        saturdayStart: mapDateTime(json, r'saturdayStart', ''),
        saturdayEnd: mapDateTime(json, r'saturdayEnd', ''),
        sundayStart: mapDateTime(json, r'sundayStart', ''),
        sundayEnd: mapDateTime(json, r'sundayEnd', ''),
        links: Link.listFromJson(json[r'links']) ?? const [],
        permissions: Permission.listFromJson(json[r'permissions']) ?? const [],
        additionalObjects: mapValueOfType<Map<String, Object>>(json, r'additionalObjects') ?? const {},
        dollarType: mapValueOfType<String>(json, r'$type'),
      );
    }
    return null;
  }

  static List<RDoNotDisturbPrimer>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RDoNotDisturbPrimer>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RDoNotDisturbPrimer.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RDoNotDisturbPrimer> mapFromJson(dynamic json) {
    final map = <String, RDoNotDisturbPrimer>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RDoNotDisturbPrimer.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RDoNotDisturbPrimer-objects as value to a dart map
  static Map<String, List<RDoNotDisturbPrimer>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RDoNotDisturbPrimer>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RDoNotDisturbPrimer.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

