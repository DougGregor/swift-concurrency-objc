
@available(tvOS 14.0, *)
class MPSGraphConvolution2DOpDescriptor : NSObject, NSCopying {
  var strideInX: Int
  var strideInY: Int
  var dilationRateInX: Int
  var dilationRateInY: Int
  var paddingLeft: Int
  var paddingRight: Int
  var paddingTop: Int
  var paddingBottom: Int
  var paddingStyle: MPSGraphPaddingStyle
  var dataLayout: MPSGraphTensorNamedDataLayout
  var weightsLayout: MPSGraphTensorNamedDataLayout
  var groups: Int
  convenience init?(strideInX: Int, strideInY: Int, dilationRateInX: Int, dilationRateInY: Int, groups: Int, paddingLeft: Int, paddingRight: Int, paddingTop: Int, paddingBottom: Int, paddingStyle: MPSGraphPaddingStyle, dataLayout: MPSGraphTensorNamedDataLayout, weightsLayout: MPSGraphTensorNamedDataLayout)
  convenience init?(strideInX: Int, strideInY: Int, dilationRateInX: Int, dilationRateInY: Int, groups: Int, paddingStyle: MPSGraphPaddingStyle, dataLayout: MPSGraphTensorNamedDataLayout, weightsLayout: MPSGraphTensorNamedDataLayout)
  func setExplicitPaddingWithPaddingLeft(_ paddingLeft: Int, paddingRight: Int, paddingTop: Int, paddingBottom: Int)
}
@available(tvOS 14.0, *)
extension MPSGraph {
  func convolution2D(_ source: MPSGraphTensor, weights: MPSGraphTensor, descriptor: MPSGraphConvolution2DOpDescriptor, name: String?) -> MPSGraphTensor
  func convolution2DDataGradient(_ incomingGradient: MPSGraphTensor, weights: MPSGraphTensor, outputShape: [NSNumber], forwardConvolutionDescriptor: MPSGraphConvolution2DOpDescriptor, name: String?) -> MPSGraphTensor
  func convolution2DWeightsGradient(_ incomingGradient: MPSGraphTensor, source: MPSGraphTensor, outputShape: [NSNumber], forwardConvolutionDescriptor: MPSGraphConvolution2DOpDescriptor, name: String?) -> MPSGraphTensor
}
