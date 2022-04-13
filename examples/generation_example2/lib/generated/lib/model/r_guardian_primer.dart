//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RGuardianPrimer {
  /// Returns a new [RGuardianPrimer] instance.
  RGuardianPrimer({
    this.accountActive,
    this.numberOfExternalIdentitites,
    this.numberOfActiveExternalIdentities,
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
  bool? accountActive;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? numberOfExternalIdentitites;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? numberOfActiveExternalIdentities;

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
  bool operator ==(Object other) => identical(this, other) || other is RGuardianPrimer &&
     other.accountActive == accountActive &&
     other.numberOfExternalIdentitites == numberOfExternalIdentitites &&
     other.numberOfActiveExternalIdentities == numberOfActiveExternalIdentities &&
     other.links == links &&
     other.permissions == permissions &&
     other.additionalObjects == additionalObjects &&
     other.dollarType == dollarType;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accountActive == null ? 0 : accountActive!.hashCode) +
    (numberOfExternalIdentitites == null ? 0 : numberOfExternalIdentitites!.hashCode) +
    (numberOfActiveExternalIdentities == null ? 0 : numberOfActiveExternalIdentities!.hashCode) +
    (links.hashCode) +
    (permissions.hashCode) +
    (additionalObjects.hashCode) +
    (dollarType == null ? 0 : dollarType!.hashCode);

  @override
  String toString() => 'RGuardianPrimer[accountActive=$accountActive, numberOfExternalIdentitites=$numberOfExternalIdentitites, numberOfActiveExternalIdentities=$numberOfActiveExternalIdentities, links=$links, permissions=$permissions, additionalObjects=$additionalObjects, dollarType=$dollarType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (accountActive != null) {
      json[r'accountActive'] = accountActive;
    }
    if (numberOfExternalIdentitites != null) {
      json[r'numberOfExternalIdentitites'] = numberOfExternalIdentitites;
    }
    if (numberOfActiveExternalIdentities != null) {
      json[r'numberOfActiveExternalIdentities'] = numberOfActiveExternalIdentities;
    }
      json[r'links'] = links;
      json[r'permissions'] = permissions;
      json[r'additionalObjects'] = additionalObjects;
    if (dollarType != null) {
      json[r'$type'] = dollarType;
    }
    return json;
  }

  /// Returns a new [RGuardianPrimer] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RGuardianPrimer? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RGuardianPrimer[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RGuardianPrimer[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RGuardianPrimer(
        accountActive: mapValueOfType<bool>(json, r'accountActive'),
        numberOfExternalIdentitites: mapValueOfType<int>(json, r'numberOfExternalIdentitites'),
        numberOfActiveExternalIdentities: mapValueOfType<int>(json, r'numberOfActiveExternalIdentities'),
        links: Link.listFromJson(json[r'links']) ?? const [],
        permissions: Permission.listFromJson(json[r'permissions']) ?? const [],
        additionalObjects: mapValueOfType<Map<String, Object>>(json, r'additionalObjects') ?? const {},
        dollarType: mapValueOfType<String>(json, r'$type'),
      );
    }
    return null;
  }

  static List<RGuardianPrimer>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RGuardianPrimer>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RGuardianPrimer.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RGuardianPrimer> mapFromJson(dynamic json) {
    final map = <String, RGuardianPrimer>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RGuardianPrimer.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RGuardianPrimer-objects as value to a dart map
  static Map<String, List<RGuardianPrimer>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RGuardianPrimer>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RGuardianPrimer.listFromJson(entry.value, growable: growable,);
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

