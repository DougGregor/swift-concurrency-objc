
@available(iOS 14.0, *)
class MLCTransposeLayer : MLCLayer {
  var __dimensions: [NSNumber] { get }
  convenience init?(__dimensions dimensions: [NSNumber])
}

@available(macOS 11.0, iOS 14, tvOS 14, *)
extension MLCTransposeLayer {
  @inlinable var dimensions: [Int] { get }
  @inlinable convenience init?(dimensions: [Int])
}
