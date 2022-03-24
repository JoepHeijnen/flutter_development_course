//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Coin {
  /// Returns a new [Coin] instance.
  Coin({
    required this.id,
    required this.symbol,
    required this.name,
    this.currentPrice,
  });

  String id;

  String symbol;

  String name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? currentPrice;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Coin &&
     other.id == id &&
     other.symbol == symbol &&
     other.name == name &&
     other.currentPrice == currentPrice;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (symbol.hashCode) +
    (name.hashCode) +
    (currentPrice == null ? 0 : currentPrice!.hashCode);

  @override
  String toString() => 'Coin[id=$id, symbol=$symbol, name=$name, currentPrice=$currentPrice]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = id;
      json[r'symbol'] = symbol;
      json[r'name'] = name;
    if (currentPrice != null) {
      json[r'current_price'] = currentPrice;
    }
    return json;
  }

  /// Returns a new [Coin] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Coin? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Coin[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Coin[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Coin(
        id: mapValueOfType<String>(json, r'id')!,
        symbol: mapValueOfType<String>(json, r'symbol')!,
        name: mapValueOfType<String>(json, r'name')!,
        currentPrice: mapValueOfType<int>(json, r'current_price'),
      );
    }
    return null;
  }

  static List<Coin>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Coin>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Coin.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Coin> mapFromJson(dynamic json) {
    final map = <String, Coin>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Coin.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Coin-objects as value to a dart map
  static Map<String, List<Coin>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Coin>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Coin.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'symbol',
    'name',
  };
}

