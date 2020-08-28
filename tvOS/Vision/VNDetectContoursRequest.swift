
@available(tvOS 14.0, *)
class VNDetectContoursRequest : VNImageBasedRequest {
  var contrastAdjustment: Float
  var detectsDarkOnLight: Bool
  @available(tvOS, introduced: 14.0, deprecated: 14.0)
  var detectDarkOnLight: Bool
  var maximumImageDimension: Int
}
@available(tvOS 14.0, *)
let VNDetectContourRequestRevision1: Int
