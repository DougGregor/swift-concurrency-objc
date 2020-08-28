
@available(tvOS 9.0, *)
class AVPlayerLayer : CALayer {
  /*not inherited*/ init(player: AVPlayer?)
  var player: AVPlayer?
  var videoGravity: AVLayerVideoGravity
  var isReadyForDisplay: Bool { get }
  @available(tvOS 9.0, *)
  var videoRect: CGRect { get }
  @available(tvOS 9.0, *)
  var pixelBufferAttributes: [String : Any]?
}
