
@available(macOS 10.15, *)
class MLCSGDOptimizer : MLCOptimizer, NSCopying {
  var momentumScale: Float { get }
  var usesNesterovMomentum: Bool { get }
  convenience init(descriptor optimizerDescriptor: MLCOptimizerDescriptor)
  convenience init(descriptor optimizerDescriptor: MLCOptimizerDescriptor, momentumScale: Float, usesNesterovMomentum: Bool)
}
