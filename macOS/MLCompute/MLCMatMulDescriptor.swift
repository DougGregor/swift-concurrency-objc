
@available(macOS 11.0, *)
class MLCMatMulDescriptor : NSObject, NSCopying {
  var alpha: Float { get }
  var transposesX: Bool { get }
  var transposesY: Bool { get }
  convenience init?(alpha: Float, transposesX: Bool, transposesY: Bool)
  convenience init()
}
