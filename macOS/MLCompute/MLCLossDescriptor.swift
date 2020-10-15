
@available(macOS 11.0, *)
class MLCLossDescriptor : NSObject, NSCopying {
  var lossType: MLCLossType { get }
  var reductionType: MLCReductionType { get }
  var weight: Float { get }
  var labelSmoothing: Float { get }
  var classCount: Int { get }
  var epsilon: Float { get }
  var delta: Float { get }
  convenience init(type lossType: MLCLossType, reductionType: MLCReductionType)
  convenience init(type lossType: MLCLossType, reductionType: MLCReductionType, weight: Float)
  convenience init(type lossType: MLCLossType, reductionType: MLCReductionType, weight: Float, labelSmoothing: Float, classCount: Int)
  convenience init(type lossType: MLCLossType, reductionType: MLCReductionType, weight: Float, labelSmoothing: Float, classCount: Int, epsilon: Float, delta: Float)
}
