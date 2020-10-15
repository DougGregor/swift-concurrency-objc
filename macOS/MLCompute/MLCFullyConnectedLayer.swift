
@available(macOS 11.0, *)
class MLCFullyConnectedLayer : MLCLayer {
  @NSCopying var descriptor: MLCConvolutionDescriptor { get }
  var weights: MLCTensor { get }
  var biases: MLCTensor? { get }
  var weightsParameter: MLCTensorParameter { get }
  var biasesParameter: MLCTensorParameter? { get }
  convenience init?(weights: MLCTensor, biases: MLCTensor?, descriptor: MLCConvolutionDescriptor)
}
