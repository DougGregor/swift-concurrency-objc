
@available(macOS 10.13, *)
class VNCoreMLModel : NSObject {
  convenience init(for model: MLModel) throws
  @available(macOS 10.15, *)
  var inputImageFeatureName: String
  @available(macOS 10.15, *)
  var featureProvider: MLFeatureProvider?
}
@available(macOS 10.13, *)
class VNCoreMLRequest : VNImageBasedRequest {
  var model: VNCoreMLModel { get }
  var imageCropAndScaleOption: VNImageCropAndScaleOption
  convenience init(model: VNCoreMLModel)
  init(model: VNCoreMLModel, completionHandler: VNRequestCompletionHandler? = nil)
}
@available(macOS 10.14, *)
let VNCoreMLRequestRevision1: Int
