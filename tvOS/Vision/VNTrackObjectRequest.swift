
@available(tvOS 11.0, *)
class VNTrackObjectRequest : VNTrackingRequest {
  init(detectedObjectObservation observation: VNDetectedObjectObservation)
  init(detectedObjectObservation observation: VNDetectedObjectObservation, completionHandler: VNRequestCompletionHandler? = nil)
}
@available(tvOS 12.0, *)
let VNTrackObjectRequestRevision1: Int
@available(tvOS 13.0, *)
let VNTrackObjectRequestRevision2: Int
