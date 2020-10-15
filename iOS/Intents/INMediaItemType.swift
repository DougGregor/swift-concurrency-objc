
@available(iOS 12.0, *)
enum INMediaItemType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case song
  case album
  case artist
  case genre
  case playlist
  case podcastShow
  case podcastEpisode
  case podcastPlaylist
  case musicStation
  case audioBook
  case movie
  case tvShow
  case tvShowEpisode
  case musicVideo
  @available(iOS 13.0, *)
  case podcastStation
  @available(iOS 13.0, *)
  case radioStation
  @available(iOS 13.0, *)
  case station
  @available(iOS 13.0, *)
  case music
  @available(iOS 13.4, *)
  case algorithmicRadioStation
  @available(iOS 13.4.1, *)
  case news
}
