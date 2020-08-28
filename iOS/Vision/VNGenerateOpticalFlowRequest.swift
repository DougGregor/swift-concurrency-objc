
extension VNGenerateOpticalFlowRequest {
  @available(iOS 14.0, *)
  enum ComputationAccuracy : UInt {
    init?(rawValue: UInt)
    var rawValue: UInt { get }
    case low
    case medium
    case high
    case veryHigh
  }
}
@available(iOS 14.0, *)
class VNGenerateOpticalFlowRequest : VNTargetedImageRequest {
  var computationAccuracy: VNGenerateOpticalFlowRequest.ComputationAccuracy
  var outputPixelFormat: OSType
}
@available(iOS 14.0, *)
let VNGenerateOpticalFlowRequestRevision1: Int
