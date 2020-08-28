
typealias MLCGraphCompletionHandler = (MLCTensor?, Error?, TimeInterval) -> Void
@available(iOS 14.0, *)
enum MLCDataType : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case float32
  case boolean
  case int64
}
@available(iOS 14.0, *)
enum MLCRandomInitializerType : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case uniform
  case glorotUniform
  case xavier
}
@available(iOS 14.0, *)
enum MLCDeviceType : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case cpu
  case gpu
  case any
}
@available(iOS 14.0, *)
struct MLCGraphCompilationOptions : OptionSet {
  init(rawValue: UInt64)
  let rawValue: UInt64
  static var debugLayers: MLCGraphCompilationOptions { get }
  static var disableLayerFusion: MLCGraphCompilationOptions { get }
  static var linkGraphs: MLCGraphCompilationOptions { get }
  static var computeAllGradients: MLCGraphCompilationOptions { get }
}
@available(iOS 14.0, *)
struct MLCExecutionOptions : OptionSet {
  init(rawValue: UInt64)
  let rawValue: UInt64
  static var skipWritingInputDataToDevice: MLCExecutionOptions { get }
  static var synchronous: MLCExecutionOptions { get }
  static var profiling: MLCExecutionOptions { get }
  static var forwardForInference: MLCExecutionOptions { get }
}
@available(iOS 14.0, *)
enum MLCArithmeticOperation : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case add
  case subtract
  case multiply
  case divide
  case floor
  case round
  case ceil
  case sqrt
  case rsqrt
  case sin
  case cos
  case tan
  case asin
  case acos
  case atan
  case sinh
  case cosh
  case tanh
  case asinh
  case acosh
  case atanh
  case pow
  case exp
  case exp2
  case log
  case log2
}
@available(iOS 14.0, *)
enum MLCLossType : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case meanAbsoluteError
  case meanSquaredError
  case softmaxCrossEntropy
  case sigmoidCrossEntropy
  case categoricalCrossEntropy
  case hinge
  case huber
  case cosineDistance
  case log
}
@available(iOS 14.0, *)
enum MLCActivationType : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case none
  case relu
  case linear
  case sigmoid
  case hardSigmoid
  case tanh
  case absolute
  case softPlus
  case softSign
  case elu
  case relun
  case logSigmoid
  case selu
  case celu
  case hardShrink
  case softShrink
  case tanhShrink
  case threshold
  case gelu
}
@available(iOS 14.0, *)
enum MLCConvolutionType : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case standard
  case transposed
  case depthwise
}
@available(iOS 14.0, *)
enum __MLCPaddingPolicy : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case same
  case valid
  case usePaddingSize
}
@available(iOS 14.0, *)
enum MLCPaddingType : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case zero
  case reflect
  case symmetric
  case constant
}
@available(iOS 14.0, *)
enum __MLCPoolingType : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case max
  case average
  case l2Norm
}
@available(iOS 14.0, *)
enum MLCReductionType : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case none
  case sum
  case mean
  case max
  case min
  case argMax
  case argMin
}
@available(iOS 14.0, *)
enum MLCRegularizationType : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case none
  case l1
  case l2
}
@available(iOS 14.0, *)
enum MLCSampleMode : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case nearest
  case linear
}
@available(iOS 14.0, *)
enum MLCSoftmaxOperation : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case softmax
  case logSoftmax
}
@available(iOS 14.0, *)
enum MLCLSTMResultMode : UInt64 {
  init?(rawValue: UInt64)
  var rawValue: UInt64 { get }
  case output
  case outputAndStates
}
extension MLCActivationType {
  var debugDescription: String { get }
}
extension MLCArithmeticOperation {
  var debugDescription: String { get }
}
func __MLCPaddingPolicyDebugDescription(_ paddingPolicy: __MLCPaddingPolicy) -> String
extension MLCLossType {
  var debugDescription: String { get }
}
extension MLCReductionType {
  var debugDescription: String { get }
}
extension MLCPaddingType {
  var debugDescription: String { get }
}
extension MLCConvolutionType {
  var debugDescription: String { get }
}
func __MLCPoolingTypeDebugDescription(_ poolingType: __MLCPoolingType) -> String
extension MLCSoftmaxOperation {
  var debugDescription: String { get }
}
extension MLCSampleMode {
  var debugDescription: String { get }
}
extension MLCLSTMResultMode {
  var debugDescription: String { get }
}
