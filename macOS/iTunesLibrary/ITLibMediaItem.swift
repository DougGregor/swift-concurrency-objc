
enum ITLibMediaItemMediaKind : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case kindUnknown
  case kindSong
  case kindMovie
  case kindPodcast
  case kindAudiobook
  case kindPDFBooklet
  case kindMusicVideo
  case kindTVShow
  case kindInteractiveBooklet
  case kindHomeVideo
  case kindRingtone
  case kindDigitalBooklet
  case kindIOSApplication
  case kindVoiceMemo
  case kindiTunesU
  case kindBook
  case kindPDFBook
  case kindAlertTone
}
enum ITLibMediaItemLyricsContentRating : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case none
  case explicit
  case clean
}
enum ITLibMediaItemLocationType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case unknown
  case file
  case URL
  case remote
}
enum ITLibMediaItemPlayStatus : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case none
  case partiallyPlayed
  case unplayed
}
class ITLibMediaItem : ITLibMediaEntity {
  var title: String { get }
  var sortTitle: String? { get }
  var artist: ITLibArtist? { get }
  var composer: String { get }
  var sortComposer: String? { get }
  var rating: Int { get }
  var isRatingComputed: Bool { get }
  var startTime: Int { get }
  var stopTime: Int { get }
  var album: ITLibAlbum { get }
  var genre: String { get }
  var kind: String? { get }
  var mediaKind: ITLibMediaItemMediaKind { get }
  var fileSize: UInt64 { get }
  @available(*, deprecated)
  var size: Int { get }
  var totalTime: Int { get }
  var trackNumber: Int { get }
  var category: String? { get }
  var lyricsContentRating: ITLibMediaItemLyricsContentRating { get }
  var contentRating: String? { get }
  var modifiedDate: Date? { get }
  var addedDate: Date? { get }
  var bitrate: Int { get }
  var sampleRate: Int { get }
  var beatsPerMinute: Int { get }
  var playCount: Int { get }
  var lastPlayedDate: Date? { get }
  var playStatus: ITLibMediaItemPlayStatus { get }
  var location: URL? { get }
  var hasArtworkAvailable: Bool { get }
  var artwork: ITLibArtwork? { get }
  var comments: String? { get }
  var isPurchased: Bool { get }
  var isCloud: Bool { get }
  var isDRMProtected: Bool { get }
  var isVideo: Bool { get }
  var videoInfo: ITLibMediaItemVideoInfo? { get }
  var releaseDate: Date? { get }
  var year: Int { get }
  @available(*, deprecated)
  var fileType: Int { get }
  var skipCount: Int { get }
  var skipDate: Date? { get }
  var voiceOverLanguage: String? { get }
  var volumeAdjustment: Int { get }
  var volumeNormalizationEnergy: Int { get }
  var isUserDisabled: Bool { get }
  var grouping: String? { get }
  var locationType: ITLibMediaItemLocationType { get }
}
let ITLibMediaItemPropertyAlbumTitle: String
let ITLibMediaItemPropertySortAlbumTitle: String
let ITLibMediaItemPropertyAlbumArtist: String
let ITLibMediaItemPropertyAlbumRating: String
let ITLibMediaItemPropertyAlbumRatingComputed: String
let ITLibMediaItemPropertySortAlbumArtist: String
let ITLibMediaItemPropertyAlbumIsGapless: String
let ITLibMediaItemPropertyAlbumIsCompilation: String
let ITLibMediaItemPropertyAlbumDiscCount: String
let ITLibMediaItemPropertyAlbumDiscNumber: String
let ITLibMediaItemPropertyAlbumTrackCount: String
let ITLibMediaItemPropertyArtistName: String
let ITLibMediaItemPropertySortArtistName: String
let ITLibMediaItemPropertyVideoIsHD: String
let ITLibMediaItemPropertyVideoWidth: String
let ITLibMediaItemPropertyVideoHeight: String
let ITLibMediaItemPropertyVideoSeries: String
let ITLibMediaItemPropertyVideoSortSeries: String
let ITLibMediaItemPropertyVideoSeason: String
let ITLibMediaItemPropertyVideoEpisode: String
let ITLibMediaItemPropertyVideoEpisodeOrder: String
let ITLibMediaItemPropertyHasArtwork: String
let ITLibMediaItemPropertyBitRate: String
let ITLibMediaItemPropertyBeatsPerMinute: String
let ITLibMediaItemPropertyCategory: String
let ITLibMediaItemPropertyComments: String
let ITLibMediaItemPropertyComposer: String
let ITLibMediaItemPropertySortComposer: String
let ITLibMediaItemPropertyContentRating: String
let ITLibMediaItemPropertyLyricsContentRating: String
let ITLibMediaItemPropertyAddedDate: String
let ITLibMediaItemPropertyModifiedDate: String
let ITLibMediaItemPropertyDescription: String
let ITLibMediaItemPropertyIsUserDisabled: String
@available(*, deprecated)
let ITLibMediaItemPropertyFileType: String
let ITLibMediaItemPropertyGenre: String
let ITLibMediaItemPropertyGrouping: String
let ITLibMediaItemPropertyIsVideo: String
let ITLibMediaItemPropertyKind: String
let ITLibMediaItemPropertyTitle: String
let ITLibMediaItemPropertySortTitle: String
let ITLibMediaItemPropertyVolumeNormalizationEnergy: String
let ITLibMediaItemPropertyPlayCount: String
let ITLibMediaItemPropertyLastPlayDate: String
let ITLibMediaItemPropertyPlayStatus: String
let ITLibMediaItemPropertyIsDRMProtected: String
let ITLibMediaItemPropertyIsPurchased: String
let ITLibMediaItemPropertyMovementCount: String
let ITLibMediaItemPropertyMovementName: String
let ITLibMediaItemPropertyMovementNumber: String
let ITLibMediaItemPropertyRating: String
let ITLibMediaItemPropertyRatingComputed: String
let ITLibMediaItemPropertyReleaseDate: String
let ITLibMediaItemPropertySampleRate: String
let ITLibMediaItemPropertySize: String
let ITLibMediaItemPropertyFileSize: String
let ITLibMediaItemPropertyUserSkipCount: String
let ITLibMediaItemPropertySkipDate: String
let ITLibMediaItemPropertyStartTime: String
let ITLibMediaItemPropertyStopTime: String
let ITLibMediaItemPropertyTotalTime: String
let ITLibMediaItemPropertyTrackNumber: String
let ITLibMediaItemPropertyLocationType: String
let ITLibMediaItemPropertyVoiceOverLanguage: String
let ITLibMediaItemPropertyVolumeAdjustment: String
let ITLibMediaItemPropertyWork: String
let ITLibMediaItemPropertyYear: String
let ITLibMediaItemPropertyMediaKind: String
let ITLibMediaItemPropertyLocation: String
let ITLibMediaItemPropertyArtwork: String
