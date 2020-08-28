
@available(macOS 11.0, *)
class MLCConcatenationLayer : MLCLayer {
  var dimension: Int { get }
  convenience init()
  convenience init(dimension: Int)
}
