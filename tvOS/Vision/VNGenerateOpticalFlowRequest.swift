
extension VNGenerateOpticalFlowRequest {
  @available(tvOS 14.0, *)
  enum ComputationAccuracy : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case low
    case medium
    case high
    case veryHigh
  }
}
@available(tvOS 14.0, *)
class VNGenerateOpticalFlowRequest : VNTargetedImageRequest {
  var computationAccuracy: VNGenerateOpticalFlowRequest.ComputationAccuracy
  var outputPixelFormat: OSType
}
@available(tvOS 14.0, *)
let VNGenerateOpticalFlowRequestRevision1: Int
