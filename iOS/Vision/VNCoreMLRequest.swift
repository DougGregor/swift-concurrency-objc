
@available(iOS 11.0, *)
class VNCoreMLModel : NSObject {
  convenience init(for model: MLModel) throws
  @available(iOS 13.0, *)
  var inputImageFeatureName: String
  @available(iOS 13.0, *)
  var featureProvider: MLFeatureProvider?
}
@available(iOS 11.0, *)
class VNCoreMLRequest : VNImageBasedRequest {
  var model: VNCoreMLModel { get }
  var imageCropAndScaleOption: VNImageCropAndScaleOption
  convenience init(model: VNCoreMLModel)
  init(model: VNCoreMLModel, completionHandler: VNRequestCompletionHandler? = nil)
}
@available(iOS 12.0, *)
let VNCoreMLRequestRevision1: Int
