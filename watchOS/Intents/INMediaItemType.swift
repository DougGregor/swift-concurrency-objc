
@available(watchOS 5.0, *)
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
  @available(watchOS 6.0, *)
  case podcastStation
  @available(watchOS 6.0, *)
  case radioStation
  @available(watchOS 6.0, *)
  case station
  @available(watchOS 6.0, *)
  case music
  @available(watchOS 6.2, *)
  case algorithmicRadioStation
  @available(watchOS 6.2.1, *)
  case news
}
