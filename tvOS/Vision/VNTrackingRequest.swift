
enum VNRequestTrackingLevel : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case accurate
  case fast
}
@available(tvOS 11.0, *)
class VNTrackingRequest : VNImageBasedRequest {
  var inputObservation: VNDetectedObjectObservation
  var trackingLevel: VNRequestTrackingLevel
  var isLastFrame: Bool
}
