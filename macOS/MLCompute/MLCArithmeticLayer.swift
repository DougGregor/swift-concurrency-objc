
@available(macOS 11.0, *)
class MLCArithmeticLayer : MLCLayer {
  var operation: MLCArithmeticOperation { get }
  convenience init(operation: MLCArithmeticOperation)
}
