import 'dart:convert';
import 'dart:io';

dynamic loadJsonFixture(String name) =>
    jsonDecode(File('test/fixtures/json/data/$name.json').readAsStringSync());

Map<String, dynamic> loadJsonFixtureAsMap(String name) =>
    Map<String, dynamic>.from(loadJsonFixture(name));

List<Map<String, dynamic>> loadJsonFixtureAsList(String name) =>
    List<Map<String, dynamic>>.from(loadJsonFixture(name));
