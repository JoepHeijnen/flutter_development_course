//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RAbsenceReport {
  /// Returns a new [RAbsenceReport] instance.
  RAbsenceReport({
    required this.child,
    required this.reason,
    required this.contactMe,
    required this.startDaypart,
    required this.startTime,
    this.endDaypart,
    this.endTime,
    this.comment,
    this.links = const [],
    this.permissions = const [],
    this.additionalObjects = const {},
    this.dollarType,
  });

  RChildPrimer child;

  RAbsenceReason reason;

  bool contactMe;

  RAbsenceDaypart startDaypart;

  DateTime startTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RAbsenceDaypart? endDaypart;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? endTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? comment;

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
  bool operator ==(Object other) => identical(this, other) || other is RAbsenceReport &&
     other.child == child &&
     other.reason == reason &&
     other.contactMe == contactMe &&
     other.startDaypart == startDaypart &&
     other.startTime == startTime &&
     other.endDaypart == endDaypart &&
     other.endTime == endTime &&
     other.comment == comment &&
     other.links == links &&
     other.permissions == permissions &&
     other.additionalObjects == additionalObjects &&
     other.dollarType == dollarType;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (child.hashCode) +
    (reason.hashCode) +
    (contactMe.hashCode) +
    (startDaypart.hashCode) +
    (startTime.hashCode) +
    (endDaypart == null ? 0 : endDaypart!.hashCode) +
    (endTime == null ? 0 : endTime!.hashCode) +
    (comment == null ? 0 : comment!.hashCode) +
    (links.hashCode) +
    (permissions.hashCode) +
    (additionalObjects.hashCode) +
    (dollarType == null ? 0 : dollarType!.hashCode);

  @override
  String toString() => 'RAbsenceReport[child=$child, reason=$reason, contactMe=$contactMe, startDaypart=$startDaypart, startTime=$startTime, endDaypart=$endDaypart, endTime=$endTime, comment=$comment, links=$links, permissions=$permissions, additionalObjects=$additionalObjects, dollarType=$dollarType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'child'] = child;
      json[r'reason'] = reason;
      json[r'contactMe'] = contactMe;
      json[r'startDaypart'] = startDaypart;
      json[r'startTime'] = startTime.toUtc().toIso8601String();
    if (endDaypart != null) {
      json[r'endDaypart'] = endDaypart;
    }
    if (endTime != null) {
      json[r'endTime'] = endTime!.toUtc().toIso8601String();
    }
    if (comment != null) {
      json[r'comment'] = comment;
    }
      json[r'links'] = links;
      json[r'permissions'] = permissions;
      json[r'additionalObjects'] = additionalObjects;
    if (dollarType != null) {
      json[r'$type'] = dollarType;
    }
    return json;
  }

  /// Returns a new [RAbsenceReport] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RAbsenceReport? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RAbsenceReport[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RAbsenceReport[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RAbsenceReport(
        child: RChildPrimer.fromJson(json[r'child'])!,
        reason: RAbsenceReason.fromJson(json[r'reason'])!,
        contactMe: mapValueOfType<bool>(json, r'contactMe')!,
        startDaypart: RAbsenceDaypart.fromJson(json[r'startDaypart'])!,
        startTime: mapDateTime(json, r'startTime', '')!,
        endDaypart: RAbsenceDaypart.fromJson(json[r'endDaypart']),
        endTime: mapDateTime(json, r'endTime', ''),
        comment: mapValueOfType<String>(json, r'comment'),
        links: Link.listFromJson(json[r'links']) ?? const [],
        permissions: Permission.listFromJson(json[r'permissions']) ?? const [],
        additionalObjects: mapValueOfType<Map<String, Object>>(json, r'additionalObjects') ?? const {},
        dollarType: mapValueOfType<String>(json, r'$type'),
      );
    }
    return null;
  }

  static List<RAbsenceReport>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RAbsenceReport>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RAbsenceReport.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RAbsenceReport> mapFromJson(dynamic json) {
    final map = <String, RAbsenceReport>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RAbsenceReport.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RAbsenceReport-objects as value to a dart map
  static Map<String, List<RAbsenceReport>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RAbsenceReport>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RAbsenceReport.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'child',
    'reason',
    'contactMe',
    'startDaypart',
    'startTime',
  };
}

