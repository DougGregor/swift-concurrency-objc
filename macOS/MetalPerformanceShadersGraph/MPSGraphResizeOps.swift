
enum MPSGraphResizeMode : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  @available(macOS 11.0, *)
  case nearest
  @available(macOS 11.0, *)
  case bilinear
}
@available(macOS 11.0, *)
extension MPSGraph {
  func resize(_ imagesTensor: MPSGraphTensor, size: [NSNumber], mode: MPSGraphResizeMode, centerResult: Bool, alignCorners: Bool, layout: MPSGraphTensorNamedDataLayout, name: String?) -> MPSGraphTensor
  func resize(withGradientTensor gradient: MPSGraphTensor, input: MPSGraphTensor, mode: MPSGraphResizeMode, centerResult: Bool, alignCorners: Bool, layout: MPSGraphTensorNamedDataLayout, name: String?) -> MPSGraphTensor
}
