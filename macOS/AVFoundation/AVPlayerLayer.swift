
@available(macOS 10.7, *)
class AVPlayerLayer : CALayer {
  /*not inherited*/ init(player: AVPlayer?)
  var player: AVPlayer?
  var videoGravity: AVLayerVideoGravity
  var isReadyForDisplay: Bool { get }
  @available(macOS 10.9, *)
  var videoRect: CGRect { get }
  @available(macOS 10.11, *)
  var pixelBufferAttributes: [String : Any]?
}
