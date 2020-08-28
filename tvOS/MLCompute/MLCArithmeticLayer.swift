
@available(tvOS 14.0, *)
class MLCArithmeticLayer : MLCLayer {
  var operation: MLCArithmeticOperation { get }
  convenience init(operation: MLCArithmeticOperation)
}
