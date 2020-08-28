
@available(watchOS 3.0, *)
class WKInterfaceInlineMovie : WKInterfaceObject {
  func setMovieURL(_ URL: URL)
  func setVideoGravity(_ videoGravity: WKVideoGravity)
  func setLoops(_ loops: Bool)
  func setAutoplays(_ autoplays: Bool)
  func setPosterImage(_ posterImage: WKImage?)
  func play()
  func playFromBeginning()
  func pause()
}
