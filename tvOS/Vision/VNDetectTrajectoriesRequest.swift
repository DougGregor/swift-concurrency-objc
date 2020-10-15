
@available(tvOS 14.0, *)
class VNDetectTrajectoriesRequest : VNStatefulRequest {
  init(frameAnalysisSpacing: CMTime, trajectoryLength: Int, completionHandler: VNRequestCompletionHandler? = nil)
  var trajectoryLength: Int { get }
  var objectMinimumNormalizedRadius: Float
  @available(tvOS, introduced: 14.0, deprecated: 14.0)
  var minimumObjectSize: Float
  var objectMaximumNormalizedRadius: Float
  @available(tvOS, introduced: 14.0, deprecated: 14.0)
  var maximumObjectSize: Float
}
@available(tvOS 14.0, *)
let VNDetectTrajectoriesRequestRevision1: Int
