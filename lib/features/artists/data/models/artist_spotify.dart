import 'package:freezed_annotation/freezed_annotation.dart';

part 'artist_spotify.freezed.dart';
part 'artist_spotify.g.dart';

@freezed
class ArtistModel with _$ArtistModel {
  const factory ArtistModel({
    required String id,
    required String name,
    required String href,
    required List<String> genres,
    @JsonKey(name: 'external_urls')
        required ArtistExternalUrlModel externalUrls,
    required List<ArtistImageModel> artistImage,
  }) = _ArtistModel;

  factory ArtistModel.fromJson(Map<String, Object?> json) =>
      _$ArtistModelFromJson(json);
}

@freezed
class ArtistExternalUrlModel with _$ArtistExternalUrlModel {
  const factory ArtistExternalUrlModel({
    required String spotify,
  }) = _ArtistExternalUrlModel;

  factory ArtistExternalUrlModel.fromJson(Map<String, Object?> json) =>
      _$ArtistExternalUrlModelFromJson(json);
}

@freezed
class ArtistImageModel with _$ArtistImageModel {
  const factory ArtistImageModel({
    required String url,
    required num width,
    required num height,
  }) = _ArtistImageModel;

  factory ArtistImageModel.fromJson(Map<String, Object?> json) =>
      _$ArtistImageModelFromJson(json);
}
