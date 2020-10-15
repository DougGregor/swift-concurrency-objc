
@available(tvOS 11.0, *)
class VNTrackRectangleRequest : VNTrackingRequest {
  convenience init(rectangleObservation observation: VNRectangleObservation)
  init(rectangleObservation observation: VNRectangleObservation, completionHandler: VNRequestCompletionHandler? = nil)
}
@available(tvOS 12.0, *)
let VNTrackRectangleRequestRevision1: Int
