
@available(tvOS 14.0, *)
class VNStatefulRequest : VNImageBasedRequest {
  init(frameAnalysisSpacing: CMTime, completionHandler: VNRequestCompletionHandler? = nil)
  var minimumLatencyFrameCount: Int { get }
  var frameAnalysisSpacing: CMTime { get }
  @available(tvOS, introduced: 14.0, deprecated: 14.0)
  var requestFrameAnalysisSpacing: CMTime { get }
}
