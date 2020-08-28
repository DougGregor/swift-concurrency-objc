
@available(iOS 14.0, *)
extension MPSGraph {
  func oneHot(withIndicesTensor indicesTensor: MPSGraphTensor, depth: Int, axis: Int, dataType: MPSDataType, onValue: Double, offValue: Double, name: String?) -> MPSGraphTensor
  func oneHot(withIndicesTensor indicesTensor: MPSGraphTensor, depth: Int, dataType: MPSDataType, onValue: Double, offValue: Double, name: String?) -> MPSGraphTensor
  func oneHot(withIndicesTensor indicesTensor: MPSGraphTensor, depth: Int, axis: Int, dataType: MPSDataType, name: String?) -> MPSGraphTensor
  func oneHot(withIndicesTensor indicesTensor: MPSGraphTensor, depth: Int, axis: Int, name: String?) -> MPSGraphTensor
  func oneHot(withIndicesTensor indicesTensor: MPSGraphTensor, depth: Int, dataType: MPSDataType, name: String?) -> MPSGraphTensor
  func oneHot(withIndicesTensor indicesTensor: MPSGraphTensor, depth: Int, name: String?) -> MPSGraphTensor
}
