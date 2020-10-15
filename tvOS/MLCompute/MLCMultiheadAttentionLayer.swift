
@available(tvOS 14.0, *)
class MLCMultiheadAttentionLayer : MLCLayer {
  @NSCopying var descriptor: MLCMultiheadAttentionDescriptor { get }
  var weights: [MLCTensor] { get }
  var biases: [MLCTensor]? { get }
  var attentionBiases: [MLCTensor]? { get }
  var weightsParameters: [MLCTensorParameter] { get }
  var biasesParameters: [MLCTensorParameter]? { get }
  convenience init?(descriptor: MLCMultiheadAttentionDescriptor, weights: [MLCTensor], biases: [MLCTensor]?, attentionBiases: [MLCTensor]?)
}
