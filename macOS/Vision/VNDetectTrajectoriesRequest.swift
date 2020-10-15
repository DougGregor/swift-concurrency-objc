
@available(macOS 11.0, *)
class VNDetectTrajectoriesRequest : VNStatefulRequest {
  init(frameAnalysisSpacing: CMTime, trajectoryLength: Int, completionHandler: VNRequestCompletionHandler? = nil)
  var trajectoryLength: Int { get }
  var objectMinimumNormalizedRadius: Float
  @available(macOS, introduced: 11.0, deprecated: 11.0)
  var minimumObjectSize: Float
  var objectMaximumNormalizedRadius: Float
  @available(macOS, introduced: 11.0, deprecated: 11.0)
  var maximumObjectSize: Float
}
@available(macOS 11.0, *)
let VNDetectTrajectoriesRequestRevision1: Int
