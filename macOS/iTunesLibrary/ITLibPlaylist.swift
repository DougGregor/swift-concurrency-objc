
enum ITLibDistinguishedPlaylistKind : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case kindNone
  case kindMovies
  case kindTVShows
  case kindMusic
  case kindAudiobooks
  static var kindBooks: ITLibDistinguishedPlaylistKind { get }
  case kindRingtones
  case kindPodcasts
  case kindVoiceMemos
  case kindPurchases
  case kindiTunesU
  case kind90sMusic
  case kindMyTopRated
  case kindTop25MostPlayed
  case kindRecentlyPlayed
  case kindRecentlyAdded
  case kindMusicVideos
  case kindClassicalMusic
  case kindLibraryMusicVideos
  case kindHomeVideos
  case kindApplications
  case kindLovedSongs
  case kindMusicShowsAndMovies
}
enum ITLibPlaylistKind : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case regular
  case smart
  case genius
  case folder
  case geniusMix
}
class ITLibPlaylist : ITLibMediaEntity {
  var name: String { get }
  var isMaster: Bool { get }
  var parentID: NSNumber? { get }
  var isVisible: Bool { get }
  @available(*, deprecated, message: "not useful")
  var isAllItemsPlaylist: Bool { get }
  var items: [ITLibMediaItem] { get }
  var distinguishedKind: ITLibDistinguishedPlaylistKind { get }
  var kind: ITLibPlaylistKind { get }
}
let ITLibPlaylistPropertyName: String
let ITLibPlaylistPropertyAllItemsPlaylist: String
let ITLibPlaylistPropertyDistinguisedKind: String
let ITLibPlaylistPropertyMaster: String
let ITLibPlaylistPropertyParentPersistentID: String
let ITLibPlaylistPropertyVisible: String
let ITLibPlaylistPropertyItems: String
let ITLibPlaylistPropertyKind: String
