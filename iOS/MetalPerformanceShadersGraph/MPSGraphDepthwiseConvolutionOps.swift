
@available(iOS 14.0, *)
class MPSGraphDepthwiseConvolution2DOpDescriptor : NSObject, NSCopying {
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
  convenience init?(strideInX: Int, strideInY: Int, dilationRateInX: Int, dilationRateInY: Int, paddingLeft: Int, paddingRight: Int, paddingTop: Int, paddingBottom: Int, paddingStyle: MPSGraphPaddingStyle, dataLayout: MPSGraphTensorNamedDataLayout, weightsLayout: MPSGraphTensorNamedDataLayout)
  convenience init?(dataLayout: MPSGraphTensorNamedDataLayout, weightsLayout: MPSGraphTensorNamedDataLayout)
  func setExplicitPaddingWithPaddingLeft(_ paddingLeft: Int, paddingRight: Int, paddingTop: Int, paddingBottom: Int)
}
@available(iOS 14.0, *)
extension MPSGraph {
  func depthwiseConvolution2D(_ source: MPSGraphTensor, weights: MPSGraphTensor, descriptor: MPSGraphDepthwiseConvolution2DOpDescriptor, name: String?) -> MPSGraphTensor
  func depthwiseConvolution2DDataGradient(_ incomingGradient: MPSGraphTensor, weights: MPSGraphTensor, outputShape: [NSNumber], descriptor: MPSGraphDepthwiseConvolution2DOpDescriptor, name: String?) -> MPSGraphTensor
  func depthwiseConvolution2DWeightsGradient(_ incomingGradient: MPSGraphTensor, source: MPSGraphTensor, outputShape: [NSNumber], descriptor: MPSGraphDepthwiseConvolution2DOpDescriptor, name: String?) -> MPSGraphTensor
}
