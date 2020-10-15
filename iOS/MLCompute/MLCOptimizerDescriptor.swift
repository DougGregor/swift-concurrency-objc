
@available(iOS 14.0, *)
class MLCOptimizerDescriptor : NSObject, NSCopying {
  var learningRate: Float { get }
  var gradientRescale: Float { get }
  var appliesGradientClipping: Bool { get }
  var gradientClipMax: Float { get }
  var gradientClipMin: Float { get }
  var regularizationScale: Float { get }
  var regularizationType: MLCRegularizationType { get }
  convenience init(learningRate: Float, gradientRescale: Float, regularizationType: MLCRegularizationType, regularizationScale: Float)
  convenience init(learningRate: Float, gradientRescale: Float, appliesGradientClipping: Bool, gradientClipMax: Float, gradientClipMin: Float, regularizationType: MLCRegularizationType, regularizationScale: Float)
}
