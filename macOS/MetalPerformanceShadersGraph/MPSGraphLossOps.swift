
enum MPSGraphLossReductionType : UInt64 {
  init?(rawValue: UInt64)
  var rawValue: UInt64 { get }
  @available(macOS 11.0, *)
  case none
  @available(macOS 11.0, *)
  case sum
}
@available(macOS 11.0, *)
extension MPSGraph {
  func softMaxCrossEntropy(_ sourceTensor: MPSGraphTensor, labels labelsTensor: MPSGraphTensor, axis: Int, reuctionType reductionType: MPSGraphLossReductionType, name: String?) -> MPSGraphTensor
  func softMaxCrossEntropyGradient(_ gradientTensor: MPSGraphTensor, source sourceTensor: MPSGraphTensor, labels labelsTensor: MPSGraphTensor, axis: Int, reuctionType reductionType: MPSGraphLossReductionType, name: String?) -> MPSGraphTensor
}
