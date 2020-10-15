
@available(iOS 14.0, *)
extension MPSGraph {
  func gradients(of primaryTensor: MPSGraphTensor, with tensors: [MPSGraphTensor], name: String?) -> [MPSGraphTensor : MPSGraphTensor]
}
