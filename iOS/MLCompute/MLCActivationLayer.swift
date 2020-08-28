
@available(iOS 14.0, *)
class MLCActivationLayer : MLCLayer {
  @NSCopying var descriptor: MLCActivationDescriptor { get }
  convenience init(descriptor: MLCActivationDescriptor)
  class var relu: MLCActivationLayer { get }
  class var relu6: MLCActivationLayer { get }
  class var leakyReLU: MLCActivationLayer { get }
  class func leakyReLU(negativeSlope: Float) -> Self
  class func linear(scale: Float, bias: Float) -> Self
  class var sigmoid: MLCActivationLayer { get }
  class var hardSigmoid: MLCActivationLayer { get }
  class var tanh: MLCActivationLayer { get }
  class var absolute: MLCActivationLayer { get }
  class var softPlus: MLCActivationLayer { get }
  class func softPlus(beta: Float) -> Self
  class var softSign: MLCActivationLayer { get }
  class var elu: MLCActivationLayer { get }
  class func elu(a: Float) -> Self
  class func relun(a: Float, b: Float) -> Self
  class var logSigmoid: MLCActivationLayer { get }
  class var selu: MLCActivationLayer { get }
  class var celu: MLCActivationLayer { get }
  class func celu(a: Float) -> Self
  class var hardShrink: MLCActivationLayer { get }
  class func hardShrink(a: Float) -> Self
  class var softShrink: MLCActivationLayer { get }
  class func softShrink(a: Float) -> Self
  class var tanhShrink: MLCActivationLayer { get }
  class func threshold(_ threshold: Float, replacement: Float) -> Self
  class var gelu: MLCActivationLayer { get }
}
