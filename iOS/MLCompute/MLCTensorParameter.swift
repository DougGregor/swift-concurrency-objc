
@available(iOS 14.0, *)
class MLCTensorParameter : NSObject {
  var tensor: MLCTensor { get }
  var isUpdatable: Bool
  convenience init(tensor: MLCTensor)
  convenience init(tensor: MLCTensor, optimizerData: [MLCTensorData]?)
}
