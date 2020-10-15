
@available(macOS 11.0, *)
extension MPSGraph {
  func dropout(_ tensor: MPSGraphTensor, rate: Double, name: String?) -> MPSGraphTensor
  func dropout(_ tensor: MPSGraphTensor, rate: MPSGraphTensor, name: String?) -> MPSGraphTensor
}
