
@available(tvOS 14.0, *)
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
  @available(tvOS, introduced: 3.2, deprecated: 9.0, message: "Use AVPlayerViewController in AVKit.")
  static let MPMediaPlaybackIsPreparedToPlayDidChange: NSNotification.Name
}
