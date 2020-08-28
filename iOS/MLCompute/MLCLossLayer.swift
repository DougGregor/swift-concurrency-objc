
@available(iOS 14.0, *)
class MLCLossLayer : MLCLayer {
  @NSCopying var descriptor: MLCLossDescriptor { get }
  var weights: MLCTensor? { get }
  convenience init(descriptor lossDescriptor: MLCLossDescriptor)
  convenience init(descriptor lossDescriptor: MLCLossDescriptor, weights: MLCTensor)
  class func softmaxCrossEntropy(reductionType: MLCReductionType, labelSmoothing: Float, classCount: Int, weight: Float) -> Self
  class func softmaxCrossEntropy(reductionType: MLCReductionType, labelSmoothing: Float, classCount: Int, weights: MLCTensor?) -> Self
  class func categoricalCrossEntropy(reductionType: MLCReductionType, labelSmoothing: Float, classCount: Int, weight: Float) -> Self
  class func categoricalCrossEntropy(reductionType: MLCReductionType, labelSmoothing: Float, classCount: Int, weights: MLCTensor?) -> Self
  class func sigmoidCrossEntropy(reductionType: MLCReductionType, labelSmoothing: Float, weight: Float) -> Self
  class func sigmoidCrossEntropy(reductionType: MLCReductionType, labelSmoothing: Float, weights: MLCTensor?) -> Self
  class func log(reductionType: MLCReductionType, epsilon: Float, weight: Float) -> Self
  class func log(reductionType: MLCReductionType, epsilon: Float, weights: MLCTensor?) -> Self
  class func huberLoss(reductionType: MLCReductionType, delta: Float, weight: Float) -> Self
  class func huberLoss(reductionType: MLCReductionType, delta: Float, weights: MLCTensor?) -> Self
  class func meanAbsoluteError(reductionType: MLCReductionType, weight: Float) -> Self
  class func meanAbsoluteError(reductionType: MLCReductionType, weights: MLCTensor?) -> Self
  class func meanSquaredError(reductionType: MLCReductionType, weight: Float) -> Self
  class func meanSquaredError(reductionType: MLCReductionType, weights: MLCTensor?) -> Self
  class func hingeLoss(reductionType: MLCReductionType, weight: Float) -> Self
  class func hingeLoss(reductionType: MLCReductionType, weights: MLCTensor?) -> Self
  class func cosineDistance(reductionType: MLCReductionType, weight: Float) -> Self
  class func cosineDistance(reductionType: MLCReductionType, weights: MLCTensor?) -> Self
}
