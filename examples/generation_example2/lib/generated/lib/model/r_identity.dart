//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RIdentity {
  /// Returns a new [RIdentity] instance.
  RIdentity({
    this.avatar,
    required this.email,
    this.guardians = const [],
    this.children = const [],
    this.teachers = const [],
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
  RAvatarAttachment? avatar;

  String email;

  List<RGuardianPrimer> guardians;

  List<RChildPrimer> children;

  List<RTeacher> teachers;

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
  bool operator ==(Object other) => identical(this, other) || other is RIdentity &&
     other.avatar == avatar &&
     other.email == email &&
     other.guardians == guardians &&
     other.children == children &&
     other.teachers == teachers &&
     other.links == links &&
     other.permissions == permissions &&
     other.additionalObjects == additionalObjects &&
     other.dollarType == dollarType;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (avatar == null ? 0 : avatar!.hashCode) +
    (email.hashCode) +
    (guardians.hashCode) +
    (children.hashCode) +
    (teachers.hashCode) +
    (links.hashCode) +
    (permissions.hashCode) +
    (additionalObjects.hashCode) +
    (dollarType == null ? 0 : dollarType!.hashCode);

  @override
  String toString() => 'RIdentity[avatar=$avatar, email=$email, guardians=$guardians, children=$children, teachers=$teachers, links=$links, permissions=$permissions, additionalObjects=$additionalObjects, dollarType=$dollarType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (avatar != null) {
      json[r'avatar'] = avatar;
    }
      json[r'email'] = email;
      json[r'guardians'] = guardians;
      json[r'children'] = children;
      json[r'teachers'] = teachers;
      json[r'links'] = links;
      json[r'permissions'] = permissions;
      json[r'additionalObjects'] = additionalObjects;
    if (dollarType != null) {
      json[r'$type'] = dollarType;
    }
    return json;
  }

  /// Returns a new [RIdentity] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RIdentity? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RIdentity[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RIdentity[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RIdentity(
        avatar: RAvatarAttachment.fromJson(json[r'avatar']),
        email: mapValueOfType<String>(json, r'email')!,
        guardians: RGuardianPrimer.listFromJson(json[r'guardians']) ?? const [],
        children: RChildPrimer.listFromJson(json[r'children']) ?? const [],
        teachers: RTeacher.listFromJson(json[r'teachers']) ?? const [],
        links: Link.listFromJson(json[r'links']) ?? const [],
        permissions: Permission.listFromJson(json[r'permissions']) ?? const [],
        additionalObjects: mapValueOfType<Map<String, Object>>(json, r'additionalObjects') ?? const {},
        dollarType: mapValueOfType<String>(json, r'$type'),
      );
    }
    return null;
  }

  static List<RIdentity>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RIdentity>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RIdentity.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RIdentity> mapFromJson(dynamic json) {
    final map = <String, RIdentity>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RIdentity.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RIdentity-objects as value to a dart map
  static Map<String, List<RIdentity>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RIdentity>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RIdentity.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'email',
  };
}

