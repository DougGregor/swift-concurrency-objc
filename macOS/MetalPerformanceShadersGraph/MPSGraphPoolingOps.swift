
@available(macOS 11.0, *)
class MPSGraphPooling2DOpDescriptor : NSObject, NSCopying {
  var kernelWidth: Int
  var kernelHeight: Int
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
  convenience init?(kernelWidth: Int, kernelHeight: Int, strideInX: Int, strideInY: Int, dilationRateInX: Int, dilationRateInY: Int, paddingLeft: Int, paddingRight: Int, paddingTop: Int, paddingBottom: Int, paddingStyle: MPSGraphPaddingStyle, dataLayout: MPSGraphTensorNamedDataLayout)
  convenience init?(kernelWidth: Int, kernelHeight: Int, strideInX: Int, strideInY: Int, paddingStyle: MPSGraphPaddingStyle, dataLayout: MPSGraphTensorNamedDataLayout)
  func setExplicitPaddingWithPaddingLeft(_ paddingLeft: Int, paddingRight: Int, paddingTop: Int, paddingBottom: Int)
}
@available(macOS 11.0, *)
extension MPSGraph {
  func maxPooling2D(withSourceTensor source: MPSGraphTensor, descriptor: MPSGraphPooling2DOpDescriptor, name: String?) -> MPSGraphTensor
  func maxPooling2DGradient(withGradientTensor gradient: MPSGraphTensor, sourceTensor source: MPSGraphTensor, descriptor: MPSGraphPooling2DOpDescriptor, name: String?) -> MPSGraphTensor
  func avgPooling2D(withSourceTensor source: MPSGraphTensor, descriptor: MPSGraphPooling2DOpDescriptor, name: String?) -> MPSGraphTensor
  func avgPooling2DGradient(withGradientTensor gradient: MPSGraphTensor, sourceTensor source: MPSGraphTensor, descriptor: MPSGraphPooling2DOpDescriptor, name: String?) -> MPSGraphTensor
}
