
@available(watchOS 2.0, *)
protocol MPMediaPlayback {
  func prepareToPlay()
  var isPreparedToPlay: Bool { get }
  func play()
  func pause()
  func stop()
  var currentPlaybackTime: TimeInterval { get set }
  var currentPlaybackRate: Float { get set }
  func beginSeekingForward()
  func beginSeekingBackward()
  func endSeeking()
}
extension NSNotification.Name {
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "Use AVPlayerViewController in AVKit.")
  static let MPMediaPlaybackIsPreparedToPlayDidChange: NSNotification.Name
}
