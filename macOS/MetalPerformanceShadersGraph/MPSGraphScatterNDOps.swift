
@available(macOS 11.0, *)
extension MPSGraph {
  func scatterND(withUpdatesTensor updatesTensor: MPSGraphTensor, indicesTensor: MPSGraphTensor, shape: [NSNumber], batchDimensions: Int, name: String?) -> MPSGraphTensor
}
