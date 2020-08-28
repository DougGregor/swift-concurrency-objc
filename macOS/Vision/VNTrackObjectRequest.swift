
@available(macOS 10.13, *)
class VNTrackObjectRequest : VNTrackingRequest {
  init(detectedObjectObservation observation: VNDetectedObjectObservation)
  init(detectedObjectObservation observation: VNDetectedObjectObservation, completionHandler: VNRequestCompletionHandler? = nil)
}
@available(macOS 10.14, *)
let VNTrackObjectRequestRevision1: Int
@available(macOS 10.15, *)
let VNTrackObjectRequestRevision2: Int
