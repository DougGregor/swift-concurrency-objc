
@available(iOS 11.0, *)
class VNTrackRectangleRequest : VNTrackingRequest {
  convenience init(rectangleObservation observation: VNRectangleObservation)
  init(rectangleObservation observation: VNRectangleObservation, completionHandler: VNRequestCompletionHandler? = nil)
}
@available(iOS 12.0, *)
let VNTrackRectangleRequestRevision1: Int
