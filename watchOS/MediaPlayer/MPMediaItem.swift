
@available(watchOS 5.0, *)
struct MPMediaType : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var music: MPMediaType { get }
  static var podcast: MPMediaType { get }
  static var audioBook: MPMediaType { get }
  @available(watchOS 5.0, *)
  static var audioITunesU: MPMediaType { get }
  static var anyAudio: MPMediaType { get }
  @available(watchOS 5.0, *)
  static var movie: MPMediaType { get }
  @available(watchOS 5.0, *)
  static var tvShow: MPMediaType { get }
  @available(watchOS 5.0, *)
  static var videoPodcast: MPMediaType { get }
  @available(watchOS 5.0, *)
  static var musicVideo: MPMediaType { get }
  @available(watchOS 5.0, *)
  static var videoITunesU: MPMediaType { get }
  @available(watchOS 5.0, *)
  static var homeVideo: MPMediaType { get }
  @available(watchOS 5.0, *)
  static var anyVideo: MPMediaType { get }
  static var any: MPMediaType { get }
}
@available(watchOS 5.0, *)
let MPMediaItemPropertyPersistentID: String
@available(watchOS 5.0, *)
let MPMediaItemPropertyMediaType: String
@available(watchOS 5.0, *)
let MPMediaItemPropertyTitle: String
@available(watchOS 5.0, *)
let MPMediaItemPropertyAlbumTitle: String
@available(watchOS 5.0, *)
let MPMediaItemPropertyAlbumPersistentID: String
@available(watchOS 5.0, *)
let MPMediaItemPropertyArtist: String
@available(watchOS 5.0, *)
let MPMediaItemPropertyArtistPersistentID: String
@available(watchOS 5.0, *)
let MPMediaItemPropertyAlbumArtist: String
@available(watchOS 5.0, *)
let MPMediaItemPropertyAlbumArtistPersistentID: String
@available(watchOS 5.0, *)
let MPMediaItemPropertyGenre: String
@available(watchOS 5.0, *)
let MPMediaItemPropertyGenrePersistentID: String
@available(watchOS 5.0, *)
let MPMediaItemPropertyComposer: String
@available(watchOS 5.0, *)
let MPMediaItemPropertyComposerPersistentID: String
@available(watchOS 5.0, *)
let MPMediaItemPropertyPlaybackDuration: String
@available(watchOS 5.0, *)
let MPMediaItemPropertyAlbumTrackNumber: String
@available(watchOS 5.0, *)
let MPMediaItemPropertyAlbumTrackCount: String
@available(watchOS 5.0, *)
let MPMediaItemPropertyDiscNumber: String
@available(watchOS 5.0, *)
let MPMediaItemPropertyDiscCount: String
@available(watchOS 5.0, *)
let MPMediaItemPropertyArtwork: String
@available(watchOS 5.0, *)
let MPMediaItemPropertyIsExplicit: String
@available(watchOS 5.0, *)
let MPMediaItemPropertyLyrics: String
@available(watchOS 5.0, *)
let MPMediaItemPropertyIsCompilation: String
@available(watchOS 5.0, *)
let MPMediaItemPropertyReleaseDate: String
@available(watchOS 5.0, *)
let MPMediaItemPropertyBeatsPerMinute: String
@available(watchOS 5.0, *)
let MPMediaItemPropertyComments: String
@available(watchOS 5.0, *)
let MPMediaItemPropertyAssetURL: String
@available(watchOS 5.0, *)
let MPMediaItemPropertyIsCloudItem: String
@available(watchOS 5.0, *)
let MPMediaItemPropertyHasProtectedAsset: String
@available(watchOS 5.0, *)
let MPMediaItemPropertyPodcastTitle: String
@available(watchOS 5.0, *)
let MPMediaItemPropertyPodcastPersistentID: String
@available(watchOS 5.0, *)
let MPMediaItemPropertyPlayCount: String
@available(watchOS 5.0, *)
let MPMediaItemPropertySkipCount: String
@available(watchOS 5.0, *)
let MPMediaItemPropertyRating: String
@available(watchOS 5.0, *)
let MPMediaItemPropertyLastPlayedDate: String
@available(watchOS 5.0, *)
let MPMediaItemPropertyUserGrouping: String
@available(watchOS 5.0, *)
let MPMediaItemPropertyBookmarkTime: String
@available(watchOS 5.0, *)
let MPMediaItemPropertyDateAdded: String
@available(watchOS 5.0, *)
let MPMediaItemPropertyPlaybackStoreID: String
@available(watchOS 5.0, *)
class MPMediaItemArtwork : NSObject {
  var bounds: CGRect { get }
  @available(watchOS, introduced: 2.0, deprecated: 3.0, message: "cropRect is no longer used")
  var imageCropRect: CGRect { get }
}
