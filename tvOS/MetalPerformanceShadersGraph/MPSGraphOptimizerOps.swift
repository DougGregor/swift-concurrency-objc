
@available(tvOS 14.0, *)
extension MPSGraph {
  func stochasticGradientDescent(learningRate learningRateTensor: MPSGraphTensor, values valuesTensor: MPSGraphTensor, gradient gradientTensor: MPSGraphTensor, name: String?) -> MPSGraphTensor
  func applyStochasticGradientDescent(learningRate learningRateTensor: MPSGraphTensor, variable: MPSGraphVariableOp, gradient gradientTensor: MPSGraphTensor, name: String?) -> MPSGraphOperation
}
