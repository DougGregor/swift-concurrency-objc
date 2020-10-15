
@available(iOS 14.0, *)
class VNDetectContoursRequest : VNImageBasedRequest {
  var contrastAdjustment: Float
  var detectsDarkOnLight: Bool
  @available(iOS, introduced: 14.0, deprecated: 14.0)
  var detectDarkOnLight: Bool
  var maximumImageDimension: Int
}
@available(iOS 14.0, *)
let VNDetectContourRequestRevision1: Int
