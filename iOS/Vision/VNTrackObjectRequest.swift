
@available(iOS 11.0, *)
class VNTrackObjectRequest : VNTrackingRequest {
  init(detectedObjectObservation observation: VNDetectedObjectObservation)
  init(detectedObjectObservation observation: VNDetectedObjectObservation, completionHandler: VNRequestCompletionHandler? = nil)
}
@available(iOS 12.0, *)
let VNTrackObjectRequestRevision1: Int
@available(iOS 13.0, *)
let VNTrackObjectRequestRevision2: Int
