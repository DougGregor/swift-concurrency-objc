
@available(macOS 11.0, *)
class MLCAdamOptimizer : MLCOptimizer, NSCopying {
  var beta1: Float { get }
  var beta2: Float { get }
  var epsilon: Float { get }
  var timeStep: Int { get }
  convenience init(descriptor optimizerDescriptor: MLCOptimizerDescriptor)
  convenience init(descriptor optimizerDescriptor: MLCOptimizerDescriptor, beta1: Float, beta2: Float, epsilon: Float, timeStep: Int)
}
