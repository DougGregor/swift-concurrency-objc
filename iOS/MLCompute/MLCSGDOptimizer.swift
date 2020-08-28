
@available(iOS 14.0, *)
class MLCSGDOptimizer : MLCOptimizer, NSCopying {
  var momentumScale: Float { get }
  var usesNesterovMomentum: Bool { get }
  convenience init(descriptor optimizerDescriptor: MLCOptimizerDescriptor)
  @available(iOS, introduced: 14.0, deprecated: 14.0, message: "Please use +optimizerWithDescriptor:momentumScale:usesNesterovMomentum: instead")
  convenience init(descriptor optimizerDescriptor: MLCOptimizerDescriptor, momentumScale: Float, usesNestrovMomentum: Bool)
  convenience init(descriptor optimizerDescriptor: MLCOptimizerDescriptor, momentumScale: Float, usesNesterovMomentum: Bool)
}
