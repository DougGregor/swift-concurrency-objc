
@available(iOS 3.0, *)
struct MPMediaType : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var music: MPMediaType { get }
  static var podcast: MPMediaType { get }
  static var audioBook: MPMediaType { get }
  @available(iOS 5.0, *)
  static var audioITunesU: MPMediaType { get }
  static var anyAudio: MPMediaType { get }
  @available(iOS 5.0, *)
  static var movie: MPMediaType { get }
  @available(iOS 5.0, *)
  static var tvShow: MPMediaType { get }
  @available(iOS 5.0, *)
  static var videoPodcast: MPMediaType { get }
  @available(iOS 5.0, *)
  static var musicVideo: MPMediaType { get }
  @available(iOS 5.0, *)
  static var videoITunesU: MPMediaType { get }
  @available(iOS 7.0, *)
  static var homeVideo: MPMediaType { get }
  @available(iOS 5.0, *)
  static var anyVideo: MPMediaType { get }
  static var any: MPMediaType { get }
}
@available(iOS 3.0, *)
class MPMediaItem : MPMediaEntity {
  @available(iOS 7.0, *)
  var mediaType: MPMediaType { get }
  @available(iOS 7.0, *)
  var title: String? { get }
  @available(iOS 7.0, *)
  var albumTitle: String? { get }
  @available(iOS 8.0, *)
  var albumPersistentID: MPMediaEntityPersistentID { get }
  @available(iOS 7.0, *)
  var artist: String? { get }
  @available(iOS 8.0, *)
  var artistPersistentID: MPMediaEntityPersistentID { get }
  @available(iOS 7.0, *)
  var albumArtist: String? { get }
  @available(iOS 8.0, *)
  var albumArtistPersistentID: MPMediaEntityPersistentID { get }
  @available(iOS 7.0, *)
  var genre: String? { get }
  @available(iOS 8.0, *)
  var genrePersistentID: MPMediaEntityPersistentID { get }
  @available(iOS 7.0, *)
  var composer: String? { get }
  @available(iOS 8.0, *)
  var composerPersistentID: MPMediaEntityPersistentID { get }
  @available(iOS 7.0, *)
  var playbackDuration: TimeInterval { get }
  @available(iOS 7.0, *)
  var albumTrackNumber: Int { get }
  @available(iOS 8.0, *)
  var albumTrackCount: Int { get }
  @available(iOS 7.0, *)
  var discNumber: Int { get }
  @available(iOS 8.0, *)
  var discCount: Int { get }
  @available(iOS 7.0, *)
  var artwork: MPMediaItemArtwork? { get }
  @available(iOS 10.0, *)
  var isExplicitItem: Bool { get }
  @available(iOS 8.0, *)
  var lyrics: String? { get }
  @available(iOS 8.0, *)
  var isCompilation: Bool { get }
  @available(iOS 7.0, *)
  var releaseDate: Date? { get }
  @available(iOS 8.0, *)
  var beatsPerMinute: Int { get }
  @available(iOS 8.0, *)
  var comments: String? { get }
  @available(iOS 8.0, *)
  var assetURL: URL? { get }
  @available(iOS 8.0, *)
  var isCloudItem: Bool { get }
  @available(iOS 9.2, *)
  var hasProtectedAsset: Bool { get }
  @available(iOS 7.0, *)
  var podcastTitle: String? { get }
  @available(iOS 8.0, *)
  var podcastPersistentID: MPMediaEntityPersistentID { get }
  @available(iOS 7.0, *)
  var playCount: Int { get }
  @available(iOS 7.0, *)
  var skipCount: Int { get }
  @available(iOS 7.0, *)
  var rating: Int { get }
  @available(iOS 7.0, *)
  var lastPlayedDate: Date? { get }
  @available(iOS 8.0, *)
  var userGrouping: String? { get }
  @available(iOS 7.0, *)
  var bookmarkTime: TimeInterval { get }
  @available(iOS 10.0, *)
  var dateAdded: Date { get }
  @available(iOS 10.3, *)
  var playbackStoreID: String { get }
}
@available(iOS 4.2, *)
let MPMediaItemPropertyPersistentID: String
@available(iOS 3.0, *)
let MPMediaItemPropertyMediaType: String
@available(iOS 3.0, *)
let MPMediaItemPropertyTitle: String
@available(iOS 3.0, *)
let MPMediaItemPropertyAlbumTitle: String
@available(iOS 4.2, *)
let MPMediaItemPropertyAlbumPersistentID: String
@available(iOS 3.0, *)
let MPMediaItemPropertyArtist: String
@available(iOS 4.2, *)
let MPMediaItemPropertyArtistPersistentID: String
@available(iOS 3.0, *)
let MPMediaItemPropertyAlbumArtist: String
@available(iOS 4.2, *)
let MPMediaItemPropertyAlbumArtistPersistentID: String
@available(iOS 3.0, *)
let MPMediaItemPropertyGenre: String
@available(iOS 4.2, *)
let MPMediaItemPropertyGenrePersistentID: String
@available(iOS 3.0, *)
let MPMediaItemPropertyComposer: String
@available(iOS 4.2, *)
let MPMediaItemPropertyComposerPersistentID: String
@available(iOS 3.0, *)
let MPMediaItemPropertyPlaybackDuration: String
@available(iOS 3.0, *)
let MPMediaItemPropertyAlbumTrackNumber: String
@available(iOS 3.0, *)
let MPMediaItemPropertyAlbumTrackCount: String
@available(iOS 3.0, *)
let MPMediaItemPropertyDiscNumber: String
@available(iOS 3.0, *)
let MPMediaItemPropertyDiscCount: String
@available(iOS 3.0, *)
let MPMediaItemPropertyArtwork: String
@available(iOS 7.0, *)
let MPMediaItemPropertyIsExplicit: String
@available(iOS 3.0, *)
let MPMediaItemPropertyLyrics: String
@available(iOS 3.0, *)
let MPMediaItemPropertyIsCompilation: String
@available(iOS 4.0, *)
let MPMediaItemPropertyReleaseDate: String
@available(iOS 4.0, *)
let MPMediaItemPropertyBeatsPerMinute: String
@available(iOS 4.0, *)
let MPMediaItemPropertyComments: String
@available(iOS 4.0, *)
let MPMediaItemPropertyAssetURL: String
@available(iOS 6.0, *)
let MPMediaItemPropertyIsCloudItem: String
@available(iOS 9.2, *)
let MPMediaItemPropertyHasProtectedAsset: String
@available(iOS 3.0, *)
let MPMediaItemPropertyPodcastTitle: String
@available(iOS 4.2, *)
let MPMediaItemPropertyPodcastPersistentID: String
@available(iOS 3.0, *)
let MPMediaItemPropertyPlayCount: String
@available(iOS 3.0, *)
let MPMediaItemPropertySkipCount: String
@available(iOS 3.0, *)
let MPMediaItemPropertyRating: String
@available(iOS 3.0, *)
let MPMediaItemPropertyLastPlayedDate: String
@available(iOS 4.0, *)
let MPMediaItemPropertyUserGrouping: String
@available(iOS 6.0, *)
let MPMediaItemPropertyBookmarkTime: String
@available(iOS 10.0, *)
let MPMediaItemPropertyDateAdded: String
@available(iOS 10.3, *)
let MPMediaItemPropertyPlaybackStoreID: String
@available(iOS 3.0, *)
class MPMediaItemArtwork : NSObject {
  @available(iOS 10.0, *)
  init(boundsSize: CGSize, requestHandler: @escaping (CGSize) -> UIImage)
  func image(at size: CGSize) -> UIImage?
  var bounds: CGRect { get }
  @available(iOS, introduced: 3.0, deprecated: 10.0, message: "cropRect is no longer used")
  var imageCropRect: CGRect { get }
  @available(iOS, introduced: 5.0, deprecated: 10.0, message: "Use -initWithBoundsSize:requestHandler:")
  convenience init(image: UIImage)
}
