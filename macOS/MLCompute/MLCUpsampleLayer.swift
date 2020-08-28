
@available(macOS 11.0, *)
class MLCUpsampleLayer : MLCLayer {
  var __shape: [NSNumber] { get }
  var sampleMode: MLCSampleMode { get }
  var alignsCorners: Bool { get }
  convenience init?(__shape shape: [NSNumber])
  convenience init?(__shape shape: [NSNumber], sampleMode: MLCSampleMode, alignsCorners: Bool)
}

@available(macOS 11.0, iOS 14, tvOS 14, *)
extension MLCUpsampleLayer {
  @inlinable var shape: [Int] { get }
  @inlinable convenience init?(shape: [Int])
  @inlinable convenience init?(shape: [Int], sampleMode: MLCSampleMode, alignsCorners: Bool)
}
