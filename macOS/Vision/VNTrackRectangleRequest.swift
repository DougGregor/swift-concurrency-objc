
@available(macOS 10.13, *)
class VNTrackRectangleRequest : VNTrackingRequest {
  convenience init(rectangleObservation observation: VNRectangleObservation)
  init(rectangleObservation observation: VNRectangleObservation, completionHandler: VNRequestCompletionHandler? = nil)
}
@available(macOS 10.14, *)
let VNTrackRectangleRequestRevision1: Int
