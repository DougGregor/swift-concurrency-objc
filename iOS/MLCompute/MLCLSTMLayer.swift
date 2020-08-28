
@available(iOS 14.0, *)
class MLCLSTMLayer : MLCLayer {
  @NSCopying var descriptor: MLCLSTMDescriptor { get }
  var gateActivations: [MLCActivationDescriptor] { get }
  @NSCopying var outputResultActivation: MLCActivationDescriptor { get }
  var inputWeights: [MLCTensor] { get }
  var hiddenWeights: [MLCTensor] { get }
  var peepholeWeights: [MLCTensor]? { get }
  var biases: [MLCTensor]? { get }
  var inputWeightsParameters: [MLCTensorParameter] { get }
  var hiddenWeightsParameters: [MLCTensorParameter] { get }
  var peepholeWeightsParameters: [MLCTensorParameter]? { get }
  var biasesParameters: [MLCTensorParameter]? { get }
  convenience init?(descriptor: MLCLSTMDescriptor, inputWeights: [MLCTensor], hiddenWeights: [MLCTensor], biases: [MLCTensor]?)
  convenience init?(descriptor: MLCLSTMDescriptor, inputWeights: [MLCTensor], hiddenWeights: [MLCTensor], peepholeWeights: [MLCTensor]?, biases: [MLCTensor]?)
  convenience init?(descriptor: MLCLSTMDescriptor, inputWeights: [MLCTensor], hiddenWeights: [MLCTensor], peepholeWeights: [MLCTensor]?, biases: [MLCTensor]?, gateActivations: [MLCActivationDescriptor], outputResultActivation: MLCActivationDescriptor)
}
