
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
@available(macOS 10.9, *)
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
@available(macOS 10.15, *)
class AVVideoCompositionRenderHint : NSObject {
  var startCompositionTime: CMTime { get }
  var endCompositionTime: CMTime { get }
}
@available(macOS 10.9, *)
protocol AVVideoCompositing : NSObjectProtocol {
  var sourcePixelBufferAttributes: [String : Any]? { get }
  var requiredPixelBufferAttributesForRenderContext: [String : Any] { get }
  func renderContextChanged(_ newRenderContext: AVVideoCompositionRenderContext)
  func startRequest(_ asyncVideoCompositionRequest: AVAsynchronousVideoCompositionRequest)
  optional func cancelAllPendingVideoCompositionRequests()
  @available(macOS 10.12, *)
  optional var supportsWideColorSourceFrames: Bool { get }
  @available(macOS 11.0, *)
  optional var supportsHDRSourceFrames: Bool { get }
  @available(macOS 10.15, *)
  optional func anticipateRendering(using renderHint: AVVideoCompositionRenderHint)
  @available(macOS 10.15, *)
  optional func prerollForRendering(using renderHint: AVVideoCompositionRenderHint)
}
@available(macOS 10.9, *)
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
@available(macOS 10.11, *)
class AVAsynchronousCIImageFilteringRequest : NSObject, NSCopying {
  var renderSize: CGSize { get }
  var compositionTime: CMTime { get }
  var sourceImage: CIImage { get }
  func finish(with filteredImage: CIImage, context: CIContext?)
  func finish(with error: Error)
}
@available(macOS 10.9, *)
protocol AVVideoCompositionInstructionProtocol : NSObjectProtocol {
  var timeRange: CMTimeRange { get }
  var enablePostProcessing: Bool { get }
  var containsTweening: Bool { get }
  var requiredSourceTrackIDs: [NSValue]? { get }
  var passthroughTrackID: CMPersistentTrackID { get }
}
