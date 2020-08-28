
@available(iOS 14.0, *)
extension MPSGraph {
  func reshape(_ tensor: MPSGraphTensor, shape: [NSNumber], name: String?) -> MPSGraphTensor
  func transposeTensor(_ tensor: MPSGraphTensor, dimension dimensionIndex: Int, withDimension dimensionIndex2: Int, name: String?) -> MPSGraphTensor
  func sliceTensor(_ tensor: MPSGraphTensor, dimension dimensionIndex: Int, start: Int, length: Int, name: String?) -> MPSGraphTensor
  func concatTensor(_ tensor: MPSGraphTensor, with tensor2: MPSGraphTensor, dimension dimensionIndex: Int, name: String?) -> MPSGraphTensor
  func concatTensors(_ tensors: [MPSGraphTensor], dimension dimensionIndex: Int, name: String?) -> MPSGraphTensor
  func tileTensor(_ tensor: MPSGraphTensor, withMultiplier multiplier: [NSNumber], name: String?) -> MPSGraphTensor
  func tileGradient(withIncomingGradientTensor incomingGradientTensor: MPSGraphTensor, sourceTensor: MPSGraphTensor, withMultiplier multiplier: [NSNumber], name: String?) -> MPSGraphTensor
  func padTensor(_ tensor: MPSGraphTensor, with paddingMode: MPSGraphPaddingMode, leftPadding: [NSNumber], rightPadding: [NSNumber], constantValue: Double, name: String?) -> MPSGraphTensor
  func padGradient(withIncomingGradientTensor incomingGradientTensor: MPSGraphTensor, sourceTensor: MPSGraphTensor, paddingMode: MPSGraphPaddingMode, leftPadding: [NSNumber], rightPadding: [NSNumber], name: String?) -> MPSGraphTensor
}
