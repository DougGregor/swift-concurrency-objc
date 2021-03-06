
@available(iOS 4.0, *)
class AVPlayerLayer : CALayer {
  /*not inherited*/ init(player: AVPlayer?)
  var player: AVPlayer?
  var videoGravity: AVLayerVideoGravity
  var isReadyForDisplay: Bool { get }
  @available(iOS 7.0, *)
  var videoRect: CGRect { get }
  @available(iOS 9.0, *)
  var pixelBufferAttributes: [String : Any]?
}
