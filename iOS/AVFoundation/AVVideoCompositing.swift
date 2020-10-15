
struct AVPixelAspectRatio {
  var horizontalSpacing: Int
  var verticalSpacing: Int
  init()
  init(horizontalSpacing: Int, verticalSpacing: Int)
}
struct AVEdgeWidths {
  var left: CGFloat
  var top: CGFloat
  var right: CGFloat
  var bottom: CGFloat
  init()
  init(left: CGFloat, top: CGFloat, right: CGFloat, bottom: CGFloat)
}
@available(iOS 7.0, *)
class AVVideoCompositionRenderContext : NSObject {
  var size: CGSize { get }
  var renderTransform: CGAffineTransform { get }
  var renderScale: Float { get }
  var pixelAspectRatio: AVPixelAspectRatio { get }
  var edgeWidths: AVEdgeWidths { get }
  var highQualityRendering: Bool { get }
  var videoComposition: AVVideoComposition { get }
  func newPixelBuffer() -> CVPixelBuffer?
}
@available(iOS 13.0, *)
class AVVideoCompositionRenderHint : NSObject {
  var startCompositionTime: CMTime { get }
  var endCompositionTime: CMTime { get }
}
@available(iOS 7.0, *)
protocol AVVideoCompositing : NSObjectProtocol {
  var sourcePixelBufferAttributes: [String : Any]? { get }
  var requiredPixelBufferAttributesForRenderContext: [String : Any] { get }
  func renderContextChanged(_ newRenderContext: AVVideoCompositionRenderContext)
  func startRequest(_ asyncVideoCompositionRequest: AVAsynchronousVideoCompositionRequest)
  optional func cancelAllPendingVideoCompositionRequests()
  @available(iOS 10.0, *)
  optional var supportsWideColorSourceFrames: Bool { get }
  @available(iOS 14.0, *)
  optional var supportsHDRSourceFrames: Bool { get }
  @available(iOS 13.0, *)
  optional func anticipateRendering(using renderHint: AVVideoCompositionRenderHint)
  @available(iOS 13.0, *)
  optional func prerollForRendering(using renderHint: AVVideoCompositionRenderHint)
}
@available(iOS 7.0, *)
class AVAsynchronousVideoCompositionRequest : NSObject, NSCopying {
  var renderContext: AVVideoCompositionRenderContext { get }
  var compositionTime: CMTime { get }
  var sourceTrackIDs: [NSNumber] { get }
  var videoCompositionInstruction: AVVideoCompositionInstructionProtocol { get }
  func sourceFrame(byTrackID trackID: CMPersistentTrackID) -> CVPixelBuffer?
  func finish(withComposedVideoFrame composedVideoFrame: CVPixelBuffer)
  func finish(with error: Error)
  func finishCancelledRequest()
}
@available(iOS 9.0, *)
class AVAsynchronousCIImageFilteringRequest : NSObject, NSCopying {
  var renderSize: CGSize { get }
  var compositionTime: CMTime { get }
  func finish(with error: Error)
}
@available(iOS 7.0, *)
protocol AVVideoCompositionInstructionProtocol : NSObjectProtocol {
  var timeRange: CMTimeRange { get }
  var enablePostProcessing: Bool { get }
  var containsTweening: Bool { get }
  var requiredSourceTrackIDs: [NSValue]? { get }
  var passthroughTrackID: CMPersistentTrackID { get }
}
