
@available(iOS 14.0, *)
class MLCEmbeddingLayer : MLCLayer {
  @NSCopying var descriptor: MLCEmbeddingDescriptor { get }
  var weights: MLCTensor { get }
  var weightsParameter: MLCTensorParameter { get }
  convenience init(descriptor: MLCEmbeddingDescriptor, weights: MLCTensor)
}
