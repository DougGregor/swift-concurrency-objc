
class MLCRMSPropOptimizer : MLCOptimizer, NSCopying {
  var momentumScale: Float { get }
  var alpha: Float { get }
  var epsilon: Float { get }
  var isCentered: Bool { get }
  convenience init(descriptor optimizerDescriptor: MLCOptimizerDescriptor)
  convenience init(descriptor optimizerDescriptor: MLCOptimizerDescriptor, momentumScale: Float, alpha: Float, epsilon: Float, isCentered: Bool)
}
