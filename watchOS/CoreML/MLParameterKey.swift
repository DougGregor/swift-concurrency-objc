
@available(watchOS 6.0, *)
class MLParameterKey : MLKey {
  class var learningRate: MLParameterKey { get }
  class var momentum: MLParameterKey { get }
  class var miniBatchSize: MLParameterKey { get }
  class var beta1: MLParameterKey { get }
  class var beta2: MLParameterKey { get }
  class var eps: MLParameterKey { get }
  class var epochs: MLParameterKey { get }
  class var shuffle: MLParameterKey { get }
  class var seed: MLParameterKey { get }
  class var numberOfNeighbors: MLParameterKey { get }
}
extension MLParameterKey {
  class var linkedModelFileName: MLParameterKey { get }
  class var linkedModelSearchPath: MLParameterKey { get }
}
extension MLParameterKey {
  class var weights: MLParameterKey { get }
  class var biases: MLParameterKey { get }
}
extension MLParameterKey {
  func scoped(to scope: String) -> MLParameterKey
}
