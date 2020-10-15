
@available(iOS 14.0, *)
class MLCSoftmaxLayer : MLCLayer {
  var operation: MLCSoftmaxOperation { get }
  var dimension: Int { get }
  convenience init(operation: MLCSoftmaxOperation)
  convenience init(operation: MLCSoftmaxOperation, dimension: Int)
}
