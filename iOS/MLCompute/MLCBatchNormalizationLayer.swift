
@available(iOS 14.0, *)
class MLCBatchNormalizationLayer : MLCLayer {
  var featureChannelCount: Int { get }
  var mean: MLCTensor { get }
  var variance: MLCTensor { get }
  var beta: MLCTensor? { get }
  var gamma: MLCTensor? { get }
  var betaParameter: MLCTensorParameter? { get }
  var gammaParameter: MLCTensorParameter? { get }
  var varianceEpsilon: Float { get }
  var momentum: Float { get }
  convenience init?(featureChannelCount: Int, mean: MLCTensor, variance: MLCTensor, beta: MLCTensor?, gamma: MLCTensor?, varianceEpsilon: Float)
  convenience init?(featureChannelCount: Int, mean: MLCTensor, variance: MLCTensor, beta: MLCTensor?, gamma: MLCTensor?, varianceEpsilon: Float, momentum: Float)
}
