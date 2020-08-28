
@available(iOS 14.0, *)
extension MPSGraph {
  func reductionSum(with tensor: MPSGraphTensor, axis: Int, name: String?) -> MPSGraphTensor
  func reductionSum(with tensor: MPSGraphTensor, axes: [NSNumber], name: String?) -> MPSGraphTensor
  func reductionMaximum(with tensor: MPSGraphTensor, axis: Int, name: String?) -> MPSGraphTensor
  func reductionMaximum(with tensor: MPSGraphTensor, axes: [NSNumber], name: String?) -> MPSGraphTensor
  func reductionMinimum(with tensor: MPSGraphTensor, axis: Int, name: String?) -> MPSGraphTensor
  func reductionMinimum(with tensor: MPSGraphTensor, axes: [NSNumber], name: String?) -> MPSGraphTensor
  func reductionProduct(with tensor: MPSGraphTensor, axis: Int, name: String?) -> MPSGraphTensor
  func reductionProduct(with tensor: MPSGraphTensor, axes: [NSNumber], name: String?) -> MPSGraphTensor
}
