import 'package:custom_player_mentoria_tdd/features/artists/data/models/artist_spotify.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fixtures/json/load_json.dart';

void main() {
  group('Features: Artists', () {
    group('Data', () {
      group('Models', () {
        group(ArtistModel, () {
          test('fromJson should return ArtistModel filled', () {
            final expected = loadJsonFixtureAsMap(
              'spotify/artists/complete',
            );
            expect(expected, isA<Map<String, dynamic>>());

            final actual = ArtistModel.fromJson(expected);
            expect(actual, isA<ArtistModel>());
            expect(actual.name, expected['name']);
          });
        });
      }); // Models
    }); // Data
  }); // features artists
}
