
@available(tvOS 9.0, *)
struct MPMediaType : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var music: MPMediaType { get }
  static var podcast: MPMediaType { get }
  static var audioBook: MPMediaType { get }
  @available(tvOS 9.0, *)
  static var audioITunesU: MPMediaType { get }
  static var anyAudio: MPMediaType { get }
  @available(tvOS 9.0, *)
  static var movie: MPMediaType { get }
  @available(tvOS 9.0, *)
  static var tvShow: MPMediaType { get }
  @available(tvOS 9.0, *)
  static var videoPodcast: MPMediaType { get }
  @available(tvOS 9.0, *)
  static var musicVideo: MPMediaType { get }
  @available(tvOS 9.0, *)
  static var videoITunesU: MPMediaType { get }
  @available(tvOS 9.0, *)
  static var homeVideo: MPMediaType { get }
  @available(tvOS 9.0, *)
  static var anyVideo: MPMediaType { get }
  static var any: MPMediaType { get }
}
@available(tvOS 14.0, *)
class MPMediaItem : MPMediaEntity {
  @available(tvOS 7.0, *)
  var mediaType: MPMediaType { get }
  @available(tvOS 7.0, *)
  var title: String? { get }
  @available(tvOS 7.0, *)
  var albumTitle: String? { get }
  @available(tvOS 8.0, *)
  var albumPersistentID: MPMediaEntityPersistentID { get }
  @available(tvOS 7.0, *)
  var artist: String? { get }
  @available(tvOS 8.0, *)
  var artistPersistentID: MPMediaEntityPersistentID { get }
  @available(tvOS 7.0, *)
  var albumArtist: String? { get }
  @available(tvOS 8.0, *)
  var albumArtistPersistentID: MPMediaEntityPersistentID { get }
  @available(tvOS 7.0, *)
  var genre: String? { get }
  @available(tvOS 8.0, *)
  var genrePersistentID: MPMediaEntityPersistentID { get }
  @available(tvOS 7.0, *)
  var composer: String? { get }
  @available(tvOS 8.0, *)
  var composerPersistentID: MPMediaEntityPersistentID { get }
  @available(tvOS 7.0, *)
  var playbackDuration: TimeInterval { get }
  @available(tvOS 7.0, *)
  var albumTrackNumber: Int { get }
  @available(tvOS 8.0, *)
  var albumTrackCount: Int { get }
  @available(tvOS 7.0, *)
  var discNumber: Int { get }
  @available(tvOS 8.0, *)
  var discCount: Int { get }
  @available(tvOS 7.0, *)
  var artwork: MPMediaItemArtwork? { get }
  @available(tvOS 10.0, *)
  var isExplicitItem: Bool { get }
  @available(tvOS 8.0, *)
  var lyrics: String? { get }
  @available(tvOS 8.0, *)
  var isCompilation: Bool { get }
  @available(tvOS 7.0, *)
  var releaseDate: Date? { get }
  @available(tvOS 8.0, *)
  var beatsPerMinute: Int { get }
  @available(tvOS 8.0, *)
  var comments: String? { get }
  @available(tvOS 8.0, *)
  var assetURL: URL? { get }
  @available(tvOS 8.0, *)
  var isCloudItem: Bool { get }
  @available(tvOS 9.2, *)
  var hasProtectedAsset: Bool { get }
  @available(tvOS 7.0, *)
  var podcastTitle: String? { get }
  @available(tvOS 8.0, *)
  var podcastPersistentID: MPMediaEntityPersistentID { get }
  @available(tvOS 7.0, *)
  var playCount: Int { get }
  @available(tvOS 7.0, *)
  var skipCount: Int { get }
  @available(tvOS 7.0, *)
  var rating: Int { get }
  @available(tvOS 7.0, *)
  var lastPlayedDate: Date? { get }
  @available(tvOS 8.0, *)
  var userGrouping: String? { get }
  @available(tvOS 7.0, *)
  var bookmarkTime: TimeInterval { get }
  @available(tvOS 10.0, *)
  var dateAdded: Date { get }
  @available(tvOS 10.3, *)
  var playbackStoreID: String { get }
}
@available(tvOS 9.0, *)
let MPMediaItemPropertyPersistentID: String
@available(tvOS 9.0, *)
let MPMediaItemPropertyMediaType: String
@available(tvOS 9.0, *)
let MPMediaItemPropertyTitle: String
@available(tvOS 9.0, *)
let MPMediaItemPropertyAlbumTitle: String
@available(tvOS 9.0, *)
let MPMediaItemPropertyAlbumPersistentID: String
@available(tvOS 9.0, *)
let MPMediaItemPropertyArtist: String
@available(tvOS 9.0, *)
let MPMediaItemPropertyArtistPersistentID: String
@available(tvOS 9.0, *)
let MPMediaItemPropertyAlbumArtist: String
@available(tvOS 9.0, *)
let MPMediaItemPropertyAlbumArtistPersistentID: String
@available(tvOS 9.0, *)
let MPMediaItemPropertyGenre: String
@available(tvOS 9.0, *)
let MPMediaItemPropertyGenrePersistentID: String
@available(tvOS 9.0, *)
let MPMediaItemPropertyComposer: String
@available(tvOS 9.0, *)
let MPMediaItemPropertyComposerPersistentID: String
@available(tvOS 9.0, *)
let MPMediaItemPropertyPlaybackDuration: String
@available(tvOS 9.0, *)
let MPMediaItemPropertyAlbumTrackNumber: String
@available(tvOS 9.0, *)
let MPMediaItemPropertyAlbumTrackCount: String
@available(tvOS 9.0, *)
let MPMediaItemPropertyDiscNumber: String
@available(tvOS 9.0, *)
let MPMediaItemPropertyDiscCount: String
@available(tvOS 9.0, *)
let MPMediaItemPropertyArtwork: String
@available(tvOS 9.0, *)
let MPMediaItemPropertyIsExplicit: String
@available(tvOS 9.0, *)
let MPMediaItemPropertyLyrics: String
@available(tvOS 9.0, *)
let MPMediaItemPropertyIsCompilation: String
@available(tvOS 9.0, *)
let MPMediaItemPropertyReleaseDate: String
@available(tvOS 9.0, *)
let MPMediaItemPropertyBeatsPerMinute: String
@available(tvOS 9.0, *)
let MPMediaItemPropertyComments: String
@available(tvOS 9.0, *)
let MPMediaItemPropertyAssetURL: String
@available(tvOS 9.0, *)
let MPMediaItemPropertyIsCloudItem: String
@available(tvOS 9.2, *)
let MPMediaItemPropertyHasProtectedAsset: String
@available(tvOS 9.0, *)
let MPMediaItemPropertyPodcastTitle: String
@available(tvOS 9.0, *)
let MPMediaItemPropertyPodcastPersistentID: String
@available(tvOS 9.0, *)
let MPMediaItemPropertyPlayCount: String
@available(tvOS 9.0, *)
let MPMediaItemPropertySkipCount: String
@available(tvOS 9.0, *)
let MPMediaItemPropertyRating: String
@available(tvOS 9.0, *)
let MPMediaItemPropertyLastPlayedDate: String
@available(tvOS 9.0, *)
let MPMediaItemPropertyUserGrouping: String
@available(tvOS 9.0, *)
let MPMediaItemPropertyBookmarkTime: String
@available(tvOS 10.0, *)
let MPMediaItemPropertyDateAdded: String
@available(tvOS 10.3, *)
let MPMediaItemPropertyPlaybackStoreID: String
@available(tvOS 9.0, *)
class MPMediaItemArtwork : NSObject {
  @available(tvOS 10.0, *)
  init(boundsSize: CGSize, requestHandler: @escaping (CGSize) -> UIImage)
  func image(at size: CGSize) -> UIImage?
  var bounds: CGRect { get }
  @available(tvOS, introduced: 3.0, deprecated: 10.0, message: "cropRect is no longer used")
  var imageCropRect: CGRect { get }
  @available(tvOS, introduced: 5.0, deprecated: 10.0, message: "Use -initWithBoundsSize:requestHandler:")
  convenience init(image: UIImage)
}
