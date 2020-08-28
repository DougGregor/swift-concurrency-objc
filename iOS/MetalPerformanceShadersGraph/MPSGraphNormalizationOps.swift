
@available(iOS 14.0, *)
extension MPSGraph {
  func mean(of tensor: MPSGraphTensor, axes: [NSNumber], name: String?) -> MPSGraphTensor
  func variance(of tensor: MPSGraphTensor, mean meanTensor: MPSGraphTensor, axes: [NSNumber], name: String?) -> MPSGraphTensor
  func variance(of tensor: MPSGraphTensor, axes: [NSNumber], name: String?) -> MPSGraphTensor
  func normalize(_ tensor: MPSGraphTensor, mean: MPSGraphTensor, variance: MPSGraphTensor, gamma: MPSGraphTensor?, beta: MPSGraphTensor?, epsilon: Float, name: String?) -> MPSGraphTensor
  func normalizationGammaGradient(withIncomingGradientTensor incomingGradientTensor: MPSGraphTensor, sourceTensor: MPSGraphTensor, mean meanTensor: MPSGraphTensor, varianceTensor: MPSGraphTensor, reductionAxes axes: [NSNumber], epsilon: Float, name: String?) -> MPSGraphTensor
  func normalizationBetaGradient(withIncomingGradientTensor incomingGradientTensor: MPSGraphTensor, sourceTensor: MPSGraphTensor, reductionAxes axes: [NSNumber], name: String?) -> MPSGraphTensor
  func normalizationGradient(withIncomingGradientTensor incomingGradientTensor: MPSGraphTensor, sourceTensor: MPSGraphTensor, mean meanTensor: MPSGraphTensor, varianceTensor: MPSGraphTensor, gammaTensor gamma: MPSGraphTensor?, gammaGradientTensor gammaGradient: MPSGraphTensor?, betaGradientTensor betaGradient: MPSGraphTensor?, reductionAxes axes: [NSNumber], epsilon: Float, name: String?) -> MPSGraphTensor
}
