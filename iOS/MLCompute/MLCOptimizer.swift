
@available(iOS 14.0, *)
class MLCOptimizer : NSObject, NSCopying {
  var learningRate: Float
  var gradientRescale: Float { get }
  var appliesGradientClipping: Bool
  var gradientClipMax: Float { get }
  var gradientClipMin: Float { get }
  var regularizationScale: Float { get }
  var regularizationType: MLCRegularizationType { get }
}
