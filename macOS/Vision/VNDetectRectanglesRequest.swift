
@available(macOS 10.13, *)
class VNDetectRectanglesRequest : VNImageBasedRequest {
  var minimumAspectRatio: VNAspectRatio
  var maximumAspectRatio: VNAspectRatio
  var quadratureTolerance: VNDegrees
  var minimumSize: Float
  var minimumConfidence: VNConfidence
  var maximumObservations: Int
}
@available(macOS 10.14, *)
let VNDetectRectanglesRequestRevision1: Int
