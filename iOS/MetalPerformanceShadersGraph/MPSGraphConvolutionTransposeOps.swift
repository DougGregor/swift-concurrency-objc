
@available(iOS 14.0, *)
extension MPSGraph {
  func convolutionTranspose2D(_ source: MPSGraphTensor, weights: MPSGraphTensor, outputShape: [NSNumber], descriptor: MPSGraphConvolution2DOpDescriptor, name: String?) -> MPSGraphTensor
  func convolutionTranspose2DDataGradient(_ incomingGradient: MPSGraphTensor, weights: MPSGraphTensor, outputShape: [NSNumber], forwardConvolutionDescriptor: MPSGraphConvolution2DOpDescriptor, name: String?) -> MPSGraphTensor
  func convolutionTranspose2DWeightsGradient(_ incomingGradientTensor: MPSGraphTensor, weights source: MPSGraphTensor, outputShape: [NSNumber], forwardConvolutionDescriptor: MPSGraphConvolution2DOpDescriptor, name: String?) -> MPSGraphTensor
}
