//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ROrganisationPrimer {
  /// Returns a new [ROrganisationPrimer] instance.
  ROrganisationPrimer({
    required this.code,
    required this.name,
    required this.active,
    required this.system,
    required this.pricingPlan,
    required this.pricingPlanStartDate,
    this.city,
    this.pricingPlanEndDate,
    this.links = const [],
    this.permissions = const [],
    this.additionalObjects = const {},
    this.dollarType,
  });

  String code;

  String name;

  bool active;

  bool system;

  RPricingPlan pricingPlan;

  DateTime pricingPlanStartDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? city;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? pricingPlanEndDate;

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
  bool operator ==(Object other) => identical(this, other) || other is ROrganisationPrimer &&
     other.code == code &&
     other.name == name &&
     other.active == active &&
     other.system == system &&
     other.pricingPlan == pricingPlan &&
     other.pricingPlanStartDate == pricingPlanStartDate &&
     other.city == city &&
     other.pricingPlanEndDate == pricingPlanEndDate &&
     other.links == links &&
     other.permissions == permissions &&
     other.additionalObjects == additionalObjects &&
     other.dollarType == dollarType;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (code.hashCode) +
    (name.hashCode) +
    (active.hashCode) +
    (system.hashCode) +
    (pricingPlan.hashCode) +
    (pricingPlanStartDate.hashCode) +
    (city == null ? 0 : city!.hashCode) +
    (pricingPlanEndDate == null ? 0 : pricingPlanEndDate!.hashCode) +
    (links.hashCode) +
    (permissions.hashCode) +
    (additionalObjects.hashCode) +
    (dollarType == null ? 0 : dollarType!.hashCode);

  @override
  String toString() => 'ROrganisationPrimer[code=$code, name=$name, active=$active, system=$system, pricingPlan=$pricingPlan, pricingPlanStartDate=$pricingPlanStartDate, city=$city, pricingPlanEndDate=$pricingPlanEndDate, links=$links, permissions=$permissions, additionalObjects=$additionalObjects, dollarType=$dollarType]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'code'] = code;
      json[r'name'] = name;
      json[r'active'] = active;
      json[r'system'] = system;
      json[r'pricingPlan'] = pricingPlan;
      json[r'pricingPlanStartDate'] = _dateFormatter.format(pricingPlanStartDate.toUtc());
    if (city != null) {
      json[r'city'] = city;
    }
    if (pricingPlanEndDate != null) {
      json[r'pricingPlanEndDate'] = _dateFormatter.format(pricingPlanEndDate!.toUtc());
    }
      json[r'links'] = links;
      json[r'permissions'] = permissions;
      json[r'additionalObjects'] = additionalObjects;
    if (dollarType != null) {
      json[r'$type'] = dollarType;
    }
    return json;
  }

  /// Returns a new [ROrganisationPrimer] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ROrganisationPrimer? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ROrganisationPrimer[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ROrganisationPrimer[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ROrganisationPrimer(
        code: mapValueOfType<String>(json, r'code')!,
        name: mapValueOfType<String>(json, r'name')!,
        active: mapValueOfType<bool>(json, r'active')!,
        system: mapValueOfType<bool>(json, r'system')!,
        pricingPlan: RPricingPlan.fromJson(json[r'pricingPlan'])!,
        pricingPlanStartDate: mapDateTime(json, r'pricingPlanStartDate', '')!,
        city: mapValueOfType<String>(json, r'city'),
        pricingPlanEndDate: mapDateTime(json, r'pricingPlanEndDate', ''),
        links: Link.listFromJson(json[r'links']) ?? const [],
        permissions: Permission.listFromJson(json[r'permissions']) ?? const [],
        additionalObjects: mapValueOfType<Map<String, Object>>(json, r'additionalObjects') ?? const {},
        dollarType: mapValueOfType<String>(json, r'$type'),
      );
    }
    return null;
  }

  static List<ROrganisationPrimer>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ROrganisationPrimer>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ROrganisationPrimer.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ROrganisationPrimer> mapFromJson(dynamic json) {
    final map = <String, ROrganisationPrimer>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ROrganisationPrimer.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ROrganisationPrimer-objects as value to a dart map
  static Map<String, List<ROrganisationPrimer>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ROrganisationPrimer>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ROrganisationPrimer.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'code',
    'name',
    'active',
    'system',
    'pricingPlan',
    'pricingPlanStartDate',
  };
}

