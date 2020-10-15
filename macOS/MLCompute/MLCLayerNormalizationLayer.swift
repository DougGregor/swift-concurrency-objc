
@available(macOS 11.0, *)
class MLCLayerNormalizationLayer : MLCLayer {
  var __normalizedShape: [NSNumber] { get }
  var beta: MLCTensor? { get }
  var gamma: MLCTensor? { get }
  var betaParameter: MLCTensorParameter? { get }
  var gammaParameter: MLCTensorParameter? { get }
  var varianceEpsilon: Float { get }
  convenience init?(__normalizedShape normalizedShape: [NSNumber], beta: MLCTensor?, gamma: MLCTensor?, varianceEpsilon: Float)
}

@available(macOS 11.0, iOS 14, tvOS 14, *)
extension MLCLayerNormalizationLayer {
  @inlinable var normalizedShape: [Int] { get }
  @inlinable convenience init?(normalizedShape: [Int], beta: MLCTensor, gamma: MLCTensor, varianceEpsilon: Float)
}
