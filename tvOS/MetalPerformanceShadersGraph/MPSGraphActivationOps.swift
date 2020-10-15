
@available(tvOS 14.0, *)
extension MPSGraph {
  func reLU(with tensor: MPSGraphTensor, name: String?) -> MPSGraphTensor
  func reLUGradient(withIncomingGradient gradient: MPSGraphTensor, sourceTensor source: MPSGraphTensor, name: String?) -> MPSGraphTensor
  func sigmoid(with tensor: MPSGraphTensor, name: String?) -> MPSGraphTensor
  func sigmoidGradient(withIncomingGradient gradient: MPSGraphTensor, sourceTensor source: MPSGraphTensor, name: String?) -> MPSGraphTensor
  func softMax(with tensor: MPSGraphTensor, axis: Int, name: String?) -> MPSGraphTensor
  func softMaxGradient(withIncomingGradient gradient: MPSGraphTensor, sourceTensor source: MPSGraphTensor, axis: Int, name: String?) -> MPSGraphTensor
}
