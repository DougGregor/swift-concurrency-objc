
@available(macOS 11.0, *)
class MLCGroupNormalizationLayer : MLCLayer {
  var featureChannelCount: Int { get }
  var groupCount: Int { get }
  var beta: MLCTensor? { get }
  var gamma: MLCTensor? { get }
  var betaParameter: MLCTensorParameter? { get }
  var gammaParameter: MLCTensorParameter? { get }
  var varianceEpsilon: Float { get }
  convenience init?(featureChannelCount: Int, groupCount: Int, beta: MLCTensor?, gamma: MLCTensor?, varianceEpsilon: Float)
}
