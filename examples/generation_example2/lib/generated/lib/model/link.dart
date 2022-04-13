//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Link {
  /// Returns a new [Link] instance.
  Link({
    this.SELF = 'self',
    this.IDENTITEIT = 'identiteit',
    this.KOPPELING = 'koppeling',
    this.id,
    this.rel,
    this.href,
  });

  String SELF;

  String IDENTITEIT;

  String KOPPELING;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? rel;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? href;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Link &&
     other.SELF == SELF &&
     other.IDENTITEIT == IDENTITEIT &&
     other.KOPPELING == KOPPELING &&
     other.id == id &&
     other.rel == rel &&
     other.href == href;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (SELF.hashCode) +
    (IDENTITEIT.hashCode) +
    (KOPPELING.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (rel == null ? 0 : rel!.hashCode) +
    (href == null ? 0 : href!.hashCode);

  @override
  String toString() => 'Link[SELF=$SELF, IDENTITEIT=$IDENTITEIT, KOPPELING=$KOPPELING, id=$id, rel=$rel, href=$href]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'SELF'] = SELF;
      json[r'IDENTITEIT'] = IDENTITEIT;
      json[r'KOPPELING'] = KOPPELING;
    if (id != null) {
      json[r'id'] = id;
    }
    if (rel != null) {
      json[r'rel'] = rel;
    }
    if (href != null) {
      json[r'href'] = href;
    }
    return json;
  }

  /// Returns a new [Link] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Link? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Link[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Link[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Link(
        SELF: mapValueOfType<String>(json, r'SELF') ?? 'self',
        IDENTITEIT: mapValueOfType<String>(json, r'IDENTITEIT') ?? 'identiteit',
        KOPPELING: mapValueOfType<String>(json, r'KOPPELING') ?? 'koppeling',
        id: mapValueOfType<int>(json, r'id'),
        rel: mapValueOfType<String>(json, r'rel'),
        href: mapValueOfType<String>(json, r'href'),
      );
    }
    return null;
  }

  static List<Link>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Link>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Link.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Link> mapFromJson(dynamic json) {
    final map = <String, Link>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Link.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Link-objects as value to a dart map
  static Map<String, List<Link>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Link>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Link.listFromJson(entry.value, growable: growable,);
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

