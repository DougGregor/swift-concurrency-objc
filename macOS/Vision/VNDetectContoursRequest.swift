
@available(macOS 11.0, *)
class VNDetectContoursRequest : VNImageBasedRequest {
  var contrastAdjustment: Float
  var detectsDarkOnLight: Bool
  @available(macOS, introduced: 11.0, deprecated: 11.0)
  var detectDarkOnLight: Bool
  var maximumImageDimension: Int
}
@available(macOS 11.0, *)
let VNDetectContourRequestRevision1: Int
