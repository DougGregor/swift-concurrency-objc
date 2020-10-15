
@available(iOS 14.0, *)
class MLCReductionLayer : MLCLayer {
  var reductionType: MLCReductionType { get }
  var dimension: Int { get }
  convenience init?(reductionType: MLCReductionType, dimension: Int)
}
