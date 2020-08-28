
@available(macOS 11.0, *)
class VNStatefulRequest : VNImageBasedRequest {
  init(frameAnalysisSpacing: CMTime, completionHandler: VNRequestCompletionHandler? = nil)
  var minimumLatencyFrameCount: Int { get }
  var frameAnalysisSpacing: CMTime { get }
  @available(macOS, introduced: 11.0, deprecated: 11.0)
  var requestFrameAnalysisSpacing: CMTime { get }
}
