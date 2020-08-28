
@available(macOS 10.12.2, *)
struct MPMediaType : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var music: MPMediaType { get }
  static var podcast: MPMediaType { get }
  static var audioBook: MPMediaType { get }
  @available(macOS 10.12.2, *)
  static var audioITunesU: MPMediaType { get }
  static var anyAudio: MPMediaType { get }
  @available(macOS 10.12.2, *)
  static var movie: MPMediaType { get }
  @available(macOS 10.12.2, *)
  static var tvShow: MPMediaType { get }
  @available(macOS 10.12.2, *)
  static var videoPodcast: MPMediaType { get }
  @available(macOS 10.12.2, *)
  static var musicVideo: MPMediaType { get }
  @available(macOS 10.12.2, *)
  static var videoITunesU: MPMediaType { get }
  @available(macOS 10.12.2, *)
  static var homeVideo: MPMediaType { get }
  @available(macOS 10.12.2, *)
  static var anyVideo: MPMediaType { get }
  static var any: MPMediaType { get }
}
@available(macOS 10.12.2, *)
let MPMediaItemPropertyPersistentID: String
@available(macOS 10.12.2, *)
let MPMediaItemPropertyMediaType: String
@available(macOS 10.12.2, *)
let MPMediaItemPropertyTitle: String
@available(macOS 10.12.2, *)
let MPMediaItemPropertyAlbumTitle: String
@available(macOS 10.12.2, *)
let MPMediaItemPropertyAlbumPersistentID: String
@available(macOS 10.12.2, *)
let MPMediaItemPropertyArtist: String
@available(macOS 10.12.2, *)
let MPMediaItemPropertyArtistPersistentID: String
@available(macOS 10.12.2, *)
let MPMediaItemPropertyAlbumArtist: String
@available(macOS 10.12.2, *)
let MPMediaItemPropertyAlbumArtistPersistentID: String
@available(macOS 10.12.2, *)
let MPMediaItemPropertyGenre: String
@available(macOS 10.12.2, *)
let MPMediaItemPropertyGenrePersistentID: String
@available(macOS 10.12.2, *)
let MPMediaItemPropertyComposer: String
@available(macOS 10.12.2, *)
let MPMediaItemPropertyComposerPersistentID: String
@available(macOS 10.12.2, *)
let MPMediaItemPropertyPlaybackDuration: String
@available(macOS 10.12.2, *)
let MPMediaItemPropertyAlbumTrackNumber: String
@available(macOS 10.12.2, *)
let MPMediaItemPropertyAlbumTrackCount: String
@available(macOS 10.12.2, *)
let MPMediaItemPropertyDiscNumber: String
@available(macOS 10.12.2, *)
let MPMediaItemPropertyDiscCount: String
@available(macOS 10.13.2, *)
let MPMediaItemPropertyArtwork: String
@available(macOS 10.12.2, *)
let MPMediaItemPropertyIsExplicit: String
@available(macOS 10.12.2, *)
let MPMediaItemPropertyLyrics: String
@available(macOS 10.12.2, *)
let MPMediaItemPropertyIsCompilation: String
@available(macOS 10.12.2, *)
let MPMediaItemPropertyReleaseDate: String
@available(macOS 10.12.2, *)
let MPMediaItemPropertyBeatsPerMinute: String
@available(macOS 10.12.2, *)
let MPMediaItemPropertyComments: String
@available(macOS 10.12.2, *)
let MPMediaItemPropertyAssetURL: String
@available(macOS 10.12.2, *)
let MPMediaItemPropertyIsCloudItem: String
@available(macOS 10.12.2, *)
let MPMediaItemPropertyHasProtectedAsset: String
@available(macOS 10.12.2, *)
let MPMediaItemPropertyPodcastTitle: String
@available(macOS 10.12.2, *)
let MPMediaItemPropertyPodcastPersistentID: String
@available(macOS 10.12.2, *)
let MPMediaItemPropertyPlayCount: String
@available(macOS 10.12.2, *)
let MPMediaItemPropertySkipCount: String
@available(macOS 10.12.2, *)
let MPMediaItemPropertyRating: String
@available(macOS 10.12.2, *)
let MPMediaItemPropertyLastPlayedDate: String
@available(macOS 10.12.2, *)
let MPMediaItemPropertyUserGrouping: String
@available(macOS 10.12.2, *)
let MPMediaItemPropertyBookmarkTime: String
@available(macOS 10.12.2, *)
let MPMediaItemPropertyDateAdded: String
@available(macOS 10.13, *)
let MPMediaItemPropertyPlaybackStoreID: String
@available(macOS 10.12.2, *)
class MPMediaItemArtwork : NSObject {
  var bounds: CGRect { get }
  var imageCropRect: CGRect { get }
}
