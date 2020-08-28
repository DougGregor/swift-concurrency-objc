
@available(tvOS 14.0, *)
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
  @available(tvOS 13.0, *)
  case podcastStation
  @available(tvOS 13.0, *)
  case radioStation
  @available(tvOS 13.0, *)
  case station
  @available(tvOS 13.0, *)
  case music
  @available(tvOS 13.4, *)
  case algorithmicRadioStation
  @available(tvOS 13.4.1, *)
  case news
}
