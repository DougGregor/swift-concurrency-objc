
@available(macOS 11.0, *)
extension MPSGraph {
  func gatherND(withUpdatesTensor updatesTensor: MPSGraphTensor, indicesTensor: MPSGraphTensor, batchDimensions: Int, name: String?) -> MPSGraphTensor
}
