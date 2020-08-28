
@available(tvOS 14.0, *)
class MLCInstanceNormalizationLayer : MLCLayer {
  var featureChannelCount: Int { get }
  var beta: MLCTensor? { get }
  var gamma: MLCTensor? { get }
  var betaParameter: MLCTensorParameter? { get }
  var gammaParameter: MLCTensorParameter? { get }
  var varianceEpsilon: Float { get }
  var momentum: Float { get }
  convenience init?(featureChannelCount: Int, beta: MLCTensor?, gamma: MLCTensor?, varianceEpsilon: Float)
  convenience init?(featureChannelCount: Int, beta: MLCTensor?, gamma: MLCTensor?, varianceEpsilon: Float, momentum: Float)
}
