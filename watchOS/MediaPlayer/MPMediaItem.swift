
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
@available(watchOS 2.0, *)
class MPMediaItem : MPMediaEntity {
  @available(watchOS 2.0, *)
  var mediaType: MPMediaType { get }
  @available(watchOS 2.0, *)
  var title: String? { get }
  @available(watchOS 2.0, *)
  var albumTitle: String? { get }
  @available(watchOS 2.0, *)
  var albumPersistentID: MPMediaEntityPersistentID { get }
  @available(watchOS 2.0, *)
  var artist: String? { get }
  @available(watchOS 2.0, *)
  var artistPersistentID: MPMediaEntityPersistentID { get }
  @available(watchOS 2.0, *)
  var albumArtist: String? { get }
  @available(watchOS 2.0, *)
  var albumArtistPersistentID: MPMediaEntityPersistentID { get }
  @available(watchOS 2.0, *)
  var genre: String? { get }
  @available(watchOS 2.0, *)
  var genrePersistentID: MPMediaEntityPersistentID { get }
  @available(watchOS 2.0, *)
  var composer: String? { get }
  @available(watchOS 2.0, *)
  var composerPersistentID: MPMediaEntityPersistentID { get }
  @available(watchOS 2.0, *)
  var playbackDuration: TimeInterval { get }
  @available(watchOS 2.0, *)
  var albumTrackNumber: Int { get }
  @available(watchOS 2.0, *)
  var albumTrackCount: Int { get }
  @available(watchOS 2.0, *)
  var discNumber: Int { get }
  @available(watchOS 2.0, *)
  var discCount: Int { get }
  @available(watchOS 2.0, *)
  var artwork: MPMediaItemArtwork? { get }
  @available(watchOS 3.0, *)
  var isExplicitItem: Bool { get }
  @available(watchOS 2.0, *)
  var lyrics: String? { get }
  @available(watchOS 2.0, *)
  var isCompilation: Bool { get }
  @available(watchOS 2.0, *)
  var releaseDate: Date? { get }
  @available(watchOS 2.0, *)
  var beatsPerMinute: Int { get }
  @available(watchOS 2.0, *)
  var comments: String? { get }
  @available(watchOS 2.0, *)
  var assetURL: URL? { get }
  @available(watchOS 2.0, *)
  var isCloudItem: Bool { get }
  @available(watchOS 2.2, *)
  var hasProtectedAsset: Bool { get }
  @available(watchOS 2.0, *)
  var podcastTitle: String? { get }
  @available(watchOS 2.0, *)
  var podcastPersistentID: MPMediaEntityPersistentID { get }
  @available(watchOS 2.0, *)
  var playCount: Int { get }
  @available(watchOS 2.0, *)
  var skipCount: Int { get }
  @available(watchOS 2.0, *)
  var rating: Int { get }
  @available(watchOS 2.0, *)
  var lastPlayedDate: Date? { get }
  @available(watchOS 2.0, *)
  var userGrouping: String? { get }
  @available(watchOS 2.0, *)
  var bookmarkTime: TimeInterval { get }
  @available(watchOS 3.0, *)
  var dateAdded: Date { get }
  @available(watchOS 3.3, *)
  var playbackStoreID: String { get }
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
