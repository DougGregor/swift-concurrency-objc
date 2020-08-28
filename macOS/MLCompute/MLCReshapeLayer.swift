
@available(macOS 10.15, *)
class MLCReshapeLayer : MLCLayer {
  convenience init?(__shape shape: [NSNumber])
}

@available(macOS 11.0, iOS 14, tvOS 14, *)
extension MLCReshapeLayer {
  @inlinable convenience init?(shape: [Int])
}
