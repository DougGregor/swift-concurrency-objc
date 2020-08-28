
@available(tvOS 14.0, *)
class MLCDropoutLayer : MLCLayer {
  var rate: Float { get }
  var seed: Int { get }
  convenience init(rate: Float, seed: Int)
}
