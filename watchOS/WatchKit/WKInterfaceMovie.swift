
@available(watchOS 2.0, *)
class WKInterfaceMovie : WKInterfaceObject {
  func setMovieURL(_ URL: URL)
  func setVideoGravity(_ videoGravity: WKVideoGravity)
  func setLoops(_ loops: Bool)
  func setPosterImage(_ posterImage: WKImage?)
}
