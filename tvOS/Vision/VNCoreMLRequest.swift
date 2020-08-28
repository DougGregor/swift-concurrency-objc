
@available(tvOS 11.0, *)
class VNCoreMLModel : NSObject {
  convenience init(for model: MLModel) throws
  @available(tvOS 13.0, *)
  var inputImageFeatureName: String
  @available(tvOS 13.0, *)
  var featureProvider: MLFeatureProvider?
}
@available(tvOS 11.0, *)
class VNCoreMLRequest : VNImageBasedRequest {
  var model: VNCoreMLModel { get }
  var imageCropAndScaleOption: VNImageCropAndScaleOption
  convenience init(model: VNCoreMLModel)
  init(model: VNCoreMLModel, completionHandler: VNRequestCompletionHandler? = nil)
}
@available(tvOS 12.0, *)
let VNCoreMLRequestRevision1: Int
