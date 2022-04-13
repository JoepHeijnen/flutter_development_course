//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RAbsentChildPrimer {
  /// Returns a new [RAbsentChildPrimer] instance.
  RAbsentChildPrimer({
    required this.name,
    required this.childId,
    this.avatarUrl,
    this.groupNames = const [],
    this.links = const [],
    this.permissions = const [],
    this.additionalObjects = const {},
    this.dollarType,
  });

  String name;

  int childId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? avatarUrl;

  List<String> groupNames;

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
  bool operator ==(Object other) => identical(this, other) || other is RAbsentChildPrimer &&
     other.name == name &&
     other.childId == childId &&
     other.avatarUrl == avatarUrl &&
     other.groupNames == groupNames &&
     other.links == links &&
     other.permissions == permissions &&
     other.additionalObjects == additionalObjects &&
     other.dollarType == dollarType;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (childId.hashCode) +
    (avatarUrl == null ? 0 : avatarUrl!.hashCode) +
    (groupNames.hashCode) +
    (links.hashCode) +
    (permissions.hashCode) +
    (additionalObjects.hashCode) +
    (dollarType == null ? 0 : dollarType!.hashCode);

  @override
  String toString() => 'RAbsentChildPrimer[name=$name, childId=$childId, avatarUrl=$avatarUrl, groupNames=$groupNames, links=$links, permissions=$permissions, additionalObjects=$additionalObjects, dollarType=$dollarType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = name;
      json[r'childId'] = childId;
    if (avatarUrl != null) {
      json[r'avatarUrl'] = avatarUrl;
    }
      json[r'groupNames'] = groupNames;
      json[r'links'] = links;
      json[r'permissions'] = permissions;
      json[r'additionalObjects'] = additionalObjects;
    if (dollarType != null) {
      json[r'$type'] = dollarType;
    }
    return json;
  }

  /// Returns a new [RAbsentChildPrimer] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RAbsentChildPrimer? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RAbsentChildPrimer[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RAbsentChildPrimer[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RAbsentChildPrimer(
        name: mapValueOfType<String>(json, r'name')!,
        childId: mapValueOfType<int>(json, r'childId')!,
        avatarUrl: mapValueOfType<String>(json, r'avatarUrl'),
        groupNames: json[r'groupNames'] is List
            ? (json[r'groupNames'] as List).cast<String>()
            : const [],
        links: Link.listFromJson(json[r'links']) ?? const [],
        permissions: Permission.listFromJson(json[r'permissions']) ?? const [],
        additionalObjects: mapValueOfType<Map<String, Object>>(json, r'additionalObjects') ?? const {},
        dollarType: mapValueOfType<String>(json, r'$type'),
      );
    }
    return null;
  }

  static List<RAbsentChildPrimer>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RAbsentChildPrimer>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RAbsentChildPrimer.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RAbsentChildPrimer> mapFromJson(dynamic json) {
    final map = <String, RAbsentChildPrimer>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RAbsentChildPrimer.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RAbsentChildPrimer-objects as value to a dart map
  static Map<String, List<RAbsentChildPrimer>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RAbsentChildPrimer>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RAbsentChildPrimer.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'childId',
    'groupNames',
  };
}

