
@available(tvOS 11.0, *)
class VNDetectRectanglesRequest : VNImageBasedRequest {
  var minimumAspectRatio: VNAspectRatio
  var maximumAspectRatio: VNAspectRatio
  var quadratureTolerance: VNDegrees
  var minimumSize: Float
  var minimumConfidence: VNConfidence
  var maximumObservations: Int
}
@available(tvOS 12.0, *)
let VNDetectRectanglesRequestRevision1: Int
