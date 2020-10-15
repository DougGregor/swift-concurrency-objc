
@available(macOS 11.0, *)
extension MPSGraph {
  func gradients(of primaryTensor: MPSGraphTensor, with tensors: [MPSGraphTensor], name: String?) -> [MPSGraphTensor : MPSGraphTensor]
}
