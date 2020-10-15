
@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
protocol AccelerateBuffer {
  associatedtype Element
  var count: Int { get }
  func withUnsafeBufferPointer<R>(_ body: (UnsafeBufferPointer<Self.Element>) throws -> R) rethrows -> R
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension AccelerateBuffer where Self : Collection {
  @inlinable func withUnsafeBufferPointer<R>(_ body: (UnsafeBufferPointer<Self.Element>) throws -> R) rethrows -> R
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
protocol AccelerateMutableBuffer : AccelerateBuffer {
  mutating func withUnsafeMutableBufferPointer<R>(_ body: (inout UnsafeMutableBufferPointer<Self.Element>) throws -> R) rethrows -> R
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension AccelerateMutableBuffer where Self : MutableCollection {
  @inlinable mutating func withUnsafeMutableBufferPointer<R>(_ body: (inout UnsafeMutableBufferPointer<Self.Element>) throws -> R) rethrows -> R
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
enum BNNS {
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension BNNS {
  static func transpose(input: BNNSNDArrayDescriptor, output: BNNSNDArrayDescriptor, firstTransposeAxis: Int, secondTransposeAxis: Int, filterParameters: BNNSFilterParameters? = nil) throws
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension BNNS {
  enum ActivationFunction {
    case identity
    case rectifiedLinear
    case leakyRectifiedLinear(alpha: Float)
    case sigmoid
    case logSigmoid
    case tanh
    case scaledTanh(alpha: Float, beta: Float)
    case abs
    case linear(alpha: Float)
    case clamp(bounds: ClosedRange<Float>)
    case softmax
    case geluApproximation(alpha: Float, beta: Float)
    case geluApproximation2(alpha: Float, beta: Float)
    case gumbel(alpha: Float, beta: Float)
    case gumbelMax(alpha: Float, beta: Float)
    case hardSigmoid(alpha: Float, beta: Float)
    case softplus(alpha: Float, beta: Float)
    case softsign
    case elu(alpha: Float)
    case selu
    case celu(alpha: Float)
    case clampedLeakyRectifiedLinear(alpha: Float, beta: Float)
    case linearWithBias(alpha: Float, beta: Float)
    case logSoftmax
    case hardShrink(alpha: Float)
    case softShrink(alpha: Float)
    case tanhShrink
    case threshold(alpha: Float, beta: Float)
    var bnnsActivation: BNNSActivation { get }
  }
  class ActivationLayer : BNNS.UnaryLayer {
    convenience init?(function activationFunction: BNNS.ActivationFunction, input: BNNSNDArrayDescriptor, output: BNNSNDArrayDescriptor, filterParameters: BNNSFilterParameters? = nil)
  }
  static func applyActivation(activation: BNNS.ActivationFunction, input: BNNSNDArrayDescriptor, output: BNNSNDArrayDescriptor, batchSize: Int, filterParameters: BNNSFilterParameters? = nil) throws
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension BNNS {
  enum DataLayout : CaseIterable {
    case vector
    case matrixRowMajor
    case matrixColumnMajor
    case matrixFirstMajor
    case matrixLastMajor
    case imageCHW
    case tensor3DFirstMajor
    case tensor3DLastMajor
    case convolutionWeightsOIHW
    case tensor4DFirstMajor
    case tensor4DLastMajor
    case tensor5DFirstMajor
    case tensor5DLastMajor
    case tensor6DFirstMajor
    case tensor6DLastMajor
    case tensor7DFirstMajor
    case tensor7DLastMajor
    case tensor8DFirstMajor
    case tensor8DLastMajor
    var rank: Int { get }
  }
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension BNNS {
  enum Error : Error {
    case layerApplyFail
    case unableToCreateLayer
    case arrayDescriptorInvalidData
    case optimizerStepFail
  }
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension BNNS {
  enum PoolingType {
    case max(indices: UnsafeMutableBufferPointer<Int>? = nil, xDilationStride: Int = 0, yDilationStride: Int = 0)
    case unMax(indices: UnsafeMutableBufferPointer<Int>? = nil, xDilationStride: Int = 0, yDilationStride: Int = 0)
    case average(countIncludesPadding: Bool)
    case l2Norm
    var bnnsPoolingFunction: BNNSPoolingFunction { get }
  }
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension BNNS {
  class PoolingLayer : BNNS.Layer {
    convenience init?(type poolingType: BNNS.PoolingType, input: BNNSNDArrayDescriptor, output: BNNSNDArrayDescriptor, bias: BNNSNDArrayDescriptor?, activation: BNNS.ActivationFunction, kernelSize: (width: Int, height: Int), stride: (x: Int, y: Int), padding: BNNS.ConvolutionPadding, filterParameters: BNNSFilterParameters? = nil)
    func apply(batchSize: Int, input: BNNSNDArrayDescriptor, output: BNNSNDArrayDescriptor) throws
    func applyBackward(batchSize: Int, input: BNNSNDArrayDescriptor, output: BNNSNDArrayDescriptor, outputGradient: BNNSNDArrayDescriptor, generatingInputGradient inputGradient: BNNSNDArrayDescriptor, generatingBiasGradient biasGradient: BNNSNDArrayDescriptor? = nil) throws
  }
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension BNNS {
  class ConvolutionLayer : BNNS.UnaryLayer {
    convenience init?(type convolutionType: BNNS.ConvolutionType, input: BNNSNDArrayDescriptor, weights: BNNSNDArrayDescriptor, output: BNNSNDArrayDescriptor, bias: BNNSNDArrayDescriptor?, padding: BNNS.ConvolutionPadding, activation: BNNS.ActivationFunction, groupCount: Int, stride: (x: Int, y: Int), dilationStride: (x: Int, y: Int), filterParameters: BNNSFilterParameters? = nil)
    func applyBackward(batchSize: Int, input: BNNSNDArrayDescriptor, output: BNNSNDArrayDescriptor, outputGradient: BNNSNDArrayDescriptor, generatingInputGradient inputGradient: BNNSNDArrayDescriptor, generatingWeightsGradient weightsGradient: BNNSNDArrayDescriptor? = nil, generatingBiasGradient biasGradient: BNNSNDArrayDescriptor? = nil) throws
  }
  enum ConvolutionPadding {
    case symmetric(x: Int, y: Int)
    case asymmetric(left: Int, right: Int, up: Int, down: Int)
    static var zero: BNNS.ConvolutionPadding { get }
  }
  enum ConvolutionType {
    case standard
    case transposed
  }
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension BNNS {
  @frozen enum LearningPhase {
    case training
    case inference
  }
  class FusedLayer : BNNS.Layer {
    func apply(batchSize: Int, input: BNNSNDArrayDescriptor, output: BNNSNDArrayDescriptor, for learningPhase: BNNS.LearningPhase) throws
    func applyBackward(batchSize: Int, input: BNNSNDArrayDescriptor, output: BNNSNDArrayDescriptor, outputGradient: BNNSNDArrayDescriptor, generatingInputGradient inputGradient: BNNSNDArrayDescriptor, generatingParameterGradients parameterGradients: [BNNSNDArrayDescriptor]) throws
  }
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension BNNS {
  class FusedConvolutionNormalizationLayer : BNNS.FusedLayer {
    convenience init?(input: BNNSNDArrayDescriptor, output: BNNSNDArrayDescriptor, convolutionWeights: BNNSNDArrayDescriptor, convolutionBias: BNNSNDArrayDescriptor?, convolutionStride: (x: Int, y: Int), convolutionDilationStride: (x: Int, y: Int), convolutionPadding: BNNS.ConvolutionPadding, normalization: BNNS.NormalizationType, normalizationBeta: BNNSNDArrayDescriptor, normalizationGamma: BNNSNDArrayDescriptor, normalizationMomentum: Float, normalizationEpsilon: Float, normalizationActivation: BNNS.ActivationFunction, filterParameters: BNNSFilterParameters? = nil)
  }
  class FusedFullyConnectedNormalizationLayer : BNNS.FusedLayer {
    convenience init?(input: BNNSNDArrayDescriptor, output: BNNSNDArrayDescriptor, fullyConnectedWeights: BNNSNDArrayDescriptor, fullyConnectedBias: BNNSNDArrayDescriptor?, normalization: BNNS.NormalizationType, normalizationBeta: BNNSNDArrayDescriptor, normalizationGamma: BNNSNDArrayDescriptor, normalizationMomentum: Float, normalizationEpsilon: Float, normalizationActivation: BNNS.ActivationFunction, filterParameters: BNNSFilterParameters? = nil)
  }
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension BNNS {
  class BroadcastMatrixMultiplyLayer : BNNS.Layer {
    convenience init?(inputA: BNNSNDArrayDescriptor, transposed transposeA: Bool, isWeights aIsWeights: Bool, inputB: BNNSNDArrayDescriptor, transposed transposeB: Bool, isWeights bIsWeights: Bool, output: BNNSNDArrayDescriptor, alpha: Float, accumulatesToOutput: Bool, isQuadratic: Bool, filterParameters: BNNSFilterParameters? = nil)
    func applyBackward(batchSize: Int, inputA: BNNSNDArrayDescriptor, inputB: BNNSNDArrayDescriptor, output: BNNSNDArrayDescriptor, outputGradient: BNNSNDArrayDescriptor, generatingInputAGradient inputAGradient: BNNSNDArrayDescriptor, generatingInputBGradient inputBGradient: BNNSNDArrayDescriptor) throws
  }
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension BNNS {
  static func applyTopK(k: Int, input: BNNSNDArrayDescriptor, bestValues: BNNSNDArrayDescriptor, bestIndices: BNNSNDArrayDescriptor, axis: Int, batchSize: Int, filterParameters: BNNSFilterParameters? = nil) throws
  static func applyInTopK(k: Int, input: BNNSNDArrayDescriptor, testIndices: BNNSNDArrayDescriptor, output: BNNSNDArrayDescriptor, axis: Int, batchSize: Int, filterParameters: BNNSFilterParameters? = nil) throws
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension BNNS {
  enum Shape {
    init(_ size: [Int], dataLayout: BNNS.DataLayout? = nil, stride: [Int]? = nil)
    case vector(Int, stride: Int = 0)
    case matrixColumnMajor(Int, Int, stride: (Int, Int) = (0, 0))
    case matrixRowMajor(Int, Int, stride: (Int, Int) = (0, 0))
    case matrixFirstMajor(Int, Int, stride: (Int, Int) = (0, 0))
    case matrixLastMajor(Int, Int, stride: (Int, Int) = (0, 0))
    case imageCHW(Int, Int, Int, stride: (Int, Int, Int) = (0, 0, 0))
    case tensor3DFirstMajor(Int, Int, Int, stride: (Int, Int, Int) = (0, 0, 0))
    case tensor3DLastMajor(Int, Int, Int, stride: (Int, Int, Int) = (0, 0, 0))
    case convolutionWeightsOIHW(Int, Int, Int, Int, stride: (Int, Int, Int, Int) = (0, 0, 0, 0))
    case tensor4DFirstMajor(Int, Int, Int, Int, stride: (Int, Int, Int, Int) = (0, 0, 0, 0))
    case tensor4DLastMajor(Int, Int, Int, Int, stride: (Int, Int, Int, Int) = (0, 0, 0, 0))
    case tensor5DFirstMajor(Int, Int, Int, Int, Int, stride: (Int, Int, Int, Int, Int) = (0, 0, 0, 0, 0))
    case tensor5DLastMajor(Int, Int, Int, Int, Int, stride: (Int, Int, Int, Int, Int) = (0, 0, 0, 0, 0))
    case tensor6DFirstMajor(Int, Int, Int, Int, Int, Int, stride: (Int, Int, Int, Int, Int, Int) = (0, 0, 0, 0, 0, 0))
    case tensor6DLastMajor(Int, Int, Int, Int, Int, Int, stride: (Int, Int, Int, Int, Int, Int) = (0, 0, 0, 0, 0, 0))
    case tensor7DFirstMajor(Int, Int, Int, Int, Int, Int, Int, stride: (Int, Int, Int, Int, Int, Int, Int) = (0, 0, 0, 0, 0, 0, 0))
    case tensor7DLastMajor(Int, Int, Int, Int, Int, Int, Int, stride: (Int, Int, Int, Int, Int, Int, Int) = (0, 0, 0, 0, 0, 0, 0))
    case tensor8DFirstMajor(Int, Int, Int, Int, Int, Int, Int, Int, stride: (Int, Int, Int, Int, Int, Int, Int, Int) = (0, 0, 0, 0, 0, 0, 0, 0))
    case tensor8DLastMajor(Int, Int, Int, Int, Int, Int, Int, Int, stride: (Int, Int, Int, Int, Int, Int, Int, Int) = (0, 0, 0, 0, 0, 0, 0, 0))
    var rank: Int { get }
    var size: (Int, Int, Int, Int, Int, Int, Int, Int) { get }
    var stride: (Int, Int, Int, Int, Int, Int, Int, Int) { get }
    var batchStride: Int { get }
    var layout: BNNSDataLayout { get }
  }
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension BNNS {
  class PermuteLayer : BNNS.UnaryLayer {
    convenience init?(input: BNNSNDArrayDescriptor, output: BNNSNDArrayDescriptor, permutation: [Int], filterParameters: BNNSFilterParameters? = nil)
  }
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension BNNS {
  class Layer {
    final let bnnsFilter: BNNSFilter
  }
  class UnaryLayer : BNNS.Layer {
    func apply(batchSize: Int, input: BNNSNDArrayDescriptor, output: BNNSNDArrayDescriptor) throws
    func applyBackward(batchSize: Int, input: BNNSNDArrayDescriptor, output: BNNSNDArrayDescriptor, outputGradient: BNNSNDArrayDescriptor, generatingInputGradient inputGradient: BNNSNDArrayDescriptor) throws
  }
  class BinaryLayer : BNNS.Layer {
    func apply(batchSize: Int, inputA: BNNSNDArrayDescriptor, inputB: BNNSNDArrayDescriptor, output: BNNSNDArrayDescriptor) throws
    func applyBackward(batchSize: Int, inputA: BNNSNDArrayDescriptor, inputB: BNNSNDArrayDescriptor, output: BNNSNDArrayDescriptor, outputGradient: BNNSNDArrayDescriptor, generatingInputAGradient inputAGradient: BNNSNDArrayDescriptor, generatingInputBGradient inputBGradient: BNNSNDArrayDescriptor) throws
  }
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension BNNS {
  class GramLayer : BNNS.UnaryLayer {
    convenience init?(input: BNNSNDArrayDescriptor, output: BNNSNDArrayDescriptor, alpha: Float, filterParameters: BNNSFilterParameters? = nil)
  }
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension BNNS {
  struct AdamOptimizer : BNNSOptimizer {
    var learningRate: Float
    var beta1: Float
    var beta2: Float
    var timeStep: Float
    var epsilon: Float
    var gradientScale: Float
    var regularizationScale: Float
    var gradientBounds: ClosedRange<Float>?
    var regularizationFunction: BNNSOptimizerRegularizationFunction
    init(learningRate: Float, beta1: Float, beta2: Float, timeStep: Float, epsilon: Float, gradientScale: Float, regularizationScale: Float, clipsGradientsTo gradientBounds: ClosedRange<Float>? = nil, regularizationFunction: BNNSOptimizerRegularizationFunction)
  }
  struct RMSPropOptimizer : BNNSOptimizer {
    var learningRate: Float
    var alpha: Float
    var epsilon: Float
    var centered: Bool
    var momentum: Float
    var gradientScale: Float
    var regularizationScale: Float
    var gradientBounds: ClosedRange<Float>?
    var regularizationFunction: BNNSOptimizerRegularizationFunction
    init(learningRate: Float, alpha: Float, epsilon: Float, centered: Bool, momentum: Float, gradientScale: Float, regularizationScale: Float, clipsGradientsTo gradientBounds: ClosedRange<Float>? = nil, regularizationFunction: BNNSOptimizerRegularizationFunction)
  }
  struct SGDMomentumOptimizer : BNNSOptimizer {
    var learningRate: Float
    var momentum: Float
    var gradientScale: Float
    var regularizationScale: Float
    var gradientBounds: ClosedRange<Float>?
    var usesNestrovMomentum: Bool
    var regularizationFunction: BNNSOptimizerRegularizationFunction
    var sgdMomentumVariant: BNNSOptimizerSGDMomentumVariant
    init(learningRate: Float, momentum: Float, gradientScale: Float, regularizationScale: Float, clipsGradientsTo gradientBounds: ClosedRange<Float>? = nil, usesNestrovMomentum: Bool, regularizationFunction: BNNSOptimizerRegularizationFunction, sgdMomentumVariant: BNNSOptimizerSGDMomentumVariant)
  }
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension BNNS {
  class NormalizationLayer : BNNS.Layer {
    convenience init?(type normalization: BNNS.NormalizationType, input: BNNSNDArrayDescriptor, output: BNNSNDArrayDescriptor, beta: BNNSNDArrayDescriptor, gamma: BNNSNDArrayDescriptor, momentum: Float = 0, epsilon: Float, activation: BNNS.ActivationFunction, filterParameters: BNNSFilterParameters? = nil)
    func apply(batchSize: Int, input: BNNSNDArrayDescriptor, output: BNNSNDArrayDescriptor, for learningPhase: BNNS.LearningPhase) throws
    func applyBackward(batchSize: Int, input: BNNSNDArrayDescriptor, output: BNNSNDArrayDescriptor, outputGradient: BNNSNDArrayDescriptor, generatingInputGradient inputGradient: BNNSNDArrayDescriptor, generatingBetaGradient betaGradient: BNNSNDArrayDescriptor? = nil, generatingGammaGradient gammaGradient: BNNSNDArrayDescriptor? = nil) throws
  }
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension BNNS {
  enum NormalizationType {
    case batch(movingMean: BNNSNDArrayDescriptor?, movingVariance: BNNSNDArrayDescriptor?)
    case instance(movingMean: BNNSNDArrayDescriptor?, movingVariance: BNNSNDArrayDescriptor?)
    case layer(normalizationAxis: Int)
    case group(groupCount: Int)
  }
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension BNNS {
  static func applyReduction(_ reductionFunction: BNNS.ReductionFunction, input: BNNSNDArrayDescriptor, output: BNNSNDArrayDescriptor, weights: BNNSNDArrayDescriptor?, filterParameters: BNNSFilterParameters? = nil) throws
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension BNNS {
  class ReductionLayer : BNNS.UnaryLayer {
    convenience init?(function reductionFunction: BNNS.ReductionFunction, input: BNNSNDArrayDescriptor, output: BNNSNDArrayDescriptor, weights: BNNSNDArrayDescriptor?, filterParameters: BNNSFilterParameters? = nil)
    func applyBackward(batchSize: Int, input: BNNSNDArrayDescriptor, output: BNNSNDArrayDescriptor, outputGradient: BNNSNDArrayDescriptor, generatingInputGradient inputGradient: BNNSNDArrayDescriptor, generatingWeightsGradient weightsGradient: BNNSNDArrayDescriptor? = nil) throws
  }
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension BNNS {
  enum ReductionFunction {
    case max
    case min
    case maxIndex
    case minIndex
    case mean
    case meanNonZero
    case sum
    case sumOfSquares
    case sumOfLogs(epsilon: Float)
    case sumOfAbsolutes
    var bnnsReduceFunction: BNNSReduceFunction { get }
  }
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension BNNS {
  class DropoutLayer : BNNS.UnaryLayer {
    convenience init?(input: BNNSNDArrayDescriptor, output: BNNSNDArrayDescriptor, rate: Float, seed: UInt32, control: UInt8, filterParameters: BNNSFilterParameters? = nil)
  }
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension BNNS {
  class FullyConnectedLayer : BNNS.ConvolutionLayer {
    convenience init?(input: BNNSNDArrayDescriptor, output: BNNSNDArrayDescriptor, weights: BNNSNDArrayDescriptor, bias: BNNSNDArrayDescriptor?, activation: BNNS.ActivationFunction, filterParameters: BNNSFilterParameters? = nil)
  }
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension BNNS {
  @frozen struct RelationalOperator {
    @usableFromInline
    var value: BNNSRelationalOperator
    @usableFromInline
    @inline(__always) init(_ value: BNNSRelationalOperator)
    @inlinable static var equal: BNNS.RelationalOperator { get }
    @inlinable static var less: BNNS.RelationalOperator { get }
    @inlinable static var lessEqual: BNNS.RelationalOperator { get }
    @inlinable static var greater: BNNS.RelationalOperator { get }
    @inlinable static var greaterEqual: BNNS.RelationalOperator { get }
    @inlinable static var notEqual: BNNS.RelationalOperator { get }
    @inlinable static var and: BNNS.RelationalOperator { get }
    @inlinable static var or: BNNS.RelationalOperator { get }
    @inlinable static var not: BNNS.RelationalOperator { get }
    @inlinable static var nand: BNNS.RelationalOperator { get }
    @inlinable static var nor: BNNS.RelationalOperator { get }
    @inlinable static var xor: BNNS.RelationalOperator { get }
  }
  static func compare(_ inputA: BNNSNDArrayDescriptor, _ inputB: BNNSNDArrayDescriptor, using relationalOperator: BNNS.RelationalOperator, output: BNNSNDArrayDescriptor) throws
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension BNNS {
  enum DescriptorType {
    case constant
    case sample
    case parameter
  }
  enum ArithmeticUnaryFunction : CaseIterable {
    case squareRoot
    case reciprocalSquareRoot
    case floor
    case ceil
    case round
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
    case exp
    case exp2
    case log
    case log2
    var bnnsArithmeticFunction: BNNSArithmeticFunction { get }
  }
  enum ArithmeticBinaryFunction : CaseIterable {
    case add
    case subtract
    case multiply
    case multiplyNoNaN
    case divide
    case divideNoNaN
    case pow
  }
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension BNNS {
  class UnaryArithmeticLayer : BNNS.Layer {
    convenience init?(input: BNNSNDArrayDescriptor, inputDescriptorType: BNNS.DescriptorType, output: BNNSNDArrayDescriptor, outputDescriptorType: BNNS.DescriptorType, function: BNNS.ArithmeticUnaryFunction, activation: BNNS.ActivationFunction = .identity, filterParameters: BNNSFilterParameters? = nil)
    func apply(batchSize: Int, input: BNNSNDArrayDescriptor, output: BNNSNDArrayDescriptor) throws
    func applyBackward(batchSize: Int, input: BNNSNDArrayDescriptor, output: BNNSNDArrayDescriptor, outputGradient: BNNSNDArrayDescriptor, generatingInputGradient inputGradient: BNNSNDArrayDescriptor) throws
  }
  class BinaryArithmeticLayer : BNNS.Layer {
    convenience init?(inputA: BNNSNDArrayDescriptor, inputADescriptorType: BNNS.DescriptorType, inputB: BNNSNDArrayDescriptor, inputBDescriptorType: BNNS.DescriptorType, output: BNNSNDArrayDescriptor, outputDescriptorType: BNNS.DescriptorType, function: BNNS.ArithmeticBinaryFunction, activation: BNNS.ActivationFunction = .identity, filterParameters: BNNSFilterParameters? = nil)
    func apply(batchSize: Int, inputA: BNNSNDArrayDescriptor, inputB: BNNSNDArrayDescriptor, output: BNNSNDArrayDescriptor) throws
    func applyBackward(batchSize: Int, inputA: BNNSNDArrayDescriptor, inputB: BNNSNDArrayDescriptor, output: BNNSNDArrayDescriptor, outputGradient: BNNSNDArrayDescriptor, generatingInputAGradient inputAGradient: BNNSNDArrayDescriptor, generatingInputBGradient inputBGradient: BNNSNDArrayDescriptor) throws
  }
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension BNNS {
  enum InterpolationMethod {
    case linear
    case nearestNeighbor
  }
  class ResizeLayer : BNNS.UnaryLayer {
    convenience init?(interpolationMethod: BNNS.InterpolationMethod, input: BNNSNDArrayDescriptor, output: BNNSNDArrayDescriptor, alignsCorners: Bool, filterParameters: BNNSFilterParameters? = nil)
  }
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension BNNS {
  static func copy(_ source: BNNSNDArrayDescriptor, to destination: BNNSNDArrayDescriptor, filterParameters: BNNSFilterParameters? = nil) throws
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension BNNS {
  enum PaddingMode {
    case constantBitPattern(UInt32)
    case constantScalar(Float)
    case reflect
    case symmetric
    var bnnsPaddingMode: BNNSPaddingMode { get }
    var paddingBitPattern: UInt32 { get }
  }
  class PaddingLayer : BNNS.UnaryLayer {
    convenience init?(input: BNNSNDArrayDescriptor, output: BNNSNDArrayDescriptor, mode: BNNS.PaddingMode, size: [(x: Int, y: Int)], filterParameters: BNNSFilterParameters? = nil)
  }
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension BNNS {
  class LossLayer : BNNS.Layer {
    convenience init?(input: BNNSNDArrayDescriptor, output: BNNSNDArrayDescriptor, lossFunction: BNNS.LossFunction, lossReduction: BNNS.LossReduction, filterParameters: BNNSFilterParameters? = nil)
    func apply(batchSize: Int, input: BNNSNDArrayDescriptor, labels: BNNSNDArrayDescriptor, output: BNNSNDArrayDescriptor, generatingInputGradient inputGradient: BNNSNDArrayDescriptor) throws
  }
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension BNNS {
  enum LossFunction {
    struct YoloParameters {
      let huberDelta: Float
      let gridColumnCount: Int
      let gridRowsCount: Int
      let anchorBoxCount: Int
      let anchorBoxSize: Int
      let rescore: Bool
      let xyScale: Float
      let whScale: Float
      let objectScale: Float
      let noObjectScale: Float
      let classificationScale: Float
      let objectMinimumIoU: Float
      let noObjectMaximumIoU: Float
      let anchorsData: UnsafeMutablePointer<Float>
    }
    case softmaxCrossEntropy(labelSmoothing: Float)
    case sigmoidCrossEntropy(labelSmoothing: Float)
    case huber(huberDelta: Float)
    case yolo(parameters: BNNS.LossFunction.YoloParameters)
    case meanSquareError
    case log
    case cosineDistance
    case hinge
    case meanAbsoluteError
    case categoricalCrossEntropy
    var bnnsLossFunction: BNNSLossFunction { get }
  }
  enum LossReduction {
    case none
    case sum
    case weightedMean
    case reductionMean
    case zeroWeightMean
    var bnnsLossReductionFunction: BNNSLossReductionFunction { get }
  }
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension BNNS.DataLayout : Equatable {
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension BNNS.DataLayout : Hashable {
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension BNNS.Error : Equatable {
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension BNNS.Error : Hashable {
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension BNNS.ConvolutionType : Equatable {
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension BNNS.ConvolutionType : Hashable {
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension BNNS.LearningPhase : Equatable {
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension BNNS.LearningPhase : Hashable {
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension BNNS.Shape : ExpressibleByArrayLiteral {
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension BNNS.DescriptorType : Equatable {
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension BNNS.DescriptorType : Hashable {
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension BNNS.ArithmeticUnaryFunction : Equatable {
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension BNNS.ArithmeticUnaryFunction : Hashable {
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension BNNS.ArithmeticBinaryFunction : Equatable {
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension BNNS.ArithmeticBinaryFunction : Hashable {
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension BNNS.InterpolationMethod : Equatable {
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension BNNS.InterpolationMethod : Hashable {
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension BNNS.LossReduction : Equatable {
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension BNNS.LossReduction : Hashable {
}

@available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 3.0, *)
@available(*, deprecated, renamed: "BNNSActivationFunction.abs")
var BNNSActivationFunctionAbs: BNNSActivationFunction

@available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 3.0, *)
@available(*, deprecated, renamed: "BNNSActivationFunction.identity")
var BNNSActivationFunctionIdentity: BNNSActivationFunction

@available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 3.0, *)
@available(*, deprecated, renamed: "BNNSActivationFunction.leakyRectifiedLinear")
var BNNSActivationFunctionLeakyRectifiedLinear: BNNSActivationFunction

@available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 3.0, *)
@available(*, deprecated, renamed: "BNNSActivationFunction.rectifiedLinear")
var BNNSActivationFunctionRectifiedLinear: BNNSActivationFunction

@available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 3.0, *)
@available(*, deprecated, renamed: "BNNSActivationFunction.scaledTanh")
var BNNSActivationFunctionScaledTanh: BNNSActivationFunction

@available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 3.0, *)
@available(*, deprecated, renamed: "BNNSActivationFunction.sigmoid")
var BNNSActivationFunctionSigmoid: BNNSActivationFunction

@available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 3.0, *)
@available(*, deprecated, renamed: "BNNSActivationFunction.tanh")
var BNNSActivationFunctionTanh: BNNSActivationFunction

@available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 3.0, *)
@available(*, deprecated, renamed: "BNNSDataType.float16")
var BNNSDataTypeFloat16: BNNSDataType

@available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 3.0, *)
@available(*, deprecated, renamed: "BNNSDataType.float")
var BNNSDataTypeFloat32: BNNSDataType

@available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 3.0, *)
@available(*, deprecated, renamed: "BNNSDataType.indexed8")
var BNNSDataTypeIndexed8: BNNSDataType

@available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 3.0, *)
@available(*, deprecated, renamed: "BNNSDataType.int16")
var BNNSDataTypeInt16: BNNSDataType

@available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 3.0, *)
@available(*, deprecated, renamed: "BNNSDataType.int32")
var BNNSDataTypeInt32: BNNSDataType

@available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 3.0, *)
@available(*, deprecated, renamed: "BNNSDataType.int8")
var BNNSDataTypeInt8: BNNSDataType

@available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 3.0, *)
@available(*, deprecated, renamed: "BNNSFlags.useClientPointer")
var BNNSFlagsUseClientPtr: BNNSFlags

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
protocol BNNSOptimizer {
  func step(parameters: [BNNSNDArrayDescriptor], gradients: [BNNSNDArrayDescriptor], accumulators: [BNNSNDArrayDescriptor], filterParameters: BNNSFilterParameters?) throws
  var bnnsOptimizerFunction: BNNSOptimizerFunction { get }
  var accumulatorCountMultiplier: Int { get }
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension BNNSOptimizer {
  func step(parameters: [BNNSNDArrayDescriptor], gradients: [BNNSNDArrayDescriptor], accumulators: [BNNSNDArrayDescriptor], filterParameters: BNNSFilterParameters? = nil) throws
}

@available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 3.0, *)
@available(*, deprecated, renamed: "BNNSPoolingFunction.average")
var BNNSPoolingFunctionAverage: BNNSPoolingFunction

@available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 3.0, *)
@available(*, deprecated, renamed: "BNNSPoolingFunction.max")
var BNNSPoolingFunctionMax: BNNSPoolingFunction

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
protocol BNNSScalar {
  static var bnnsDataType: BNNSDataType { get }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
struct Quadrature {
  init(integrator: Quadrature.Integrator, absoluteTolerance: Double = 1.0e-8, relativeTolerance: Double = 1.0e-2)
  var absoluteTolerance: Double
  var relativeTolerance: Double
  func integrate(over interval: ClosedRange<Double>, integrand: (UnsafeBufferPointer<Double>, UnsafeMutableBufferPointer<Double>) -> ()) -> Result<(integralResult: Double, estimatedAbsoluteError: Double), Quadrature.Error>
  func integrate(over interval: ClosedRange<Double>, integrand: (Double) -> Double) -> Result<(integralResult: Double, estimatedAbsoluteError: Double), Quadrature.Error>
  enum Integrator {
    case qng
    static let nonAdaptive: Quadrature.Integrator
    case qag(pointsPerInterval: Quadrature.QAGPointsPerInterval, maxIntervals: Int)
    static func adaptive(pointsPerInterval: Quadrature.QAGPointsPerInterval, maxIntervals: Int) -> Quadrature.Integrator
    case qags(maxIntervals: Int)
    static func adaptiveWithSingularities(maxIntervals: Int) -> Quadrature.Integrator
  }
  struct QAGPointsPerInterval {
    let points: Int
    static let fifteen: Quadrature.QAGPointsPerInterval
    static let twentyOne: Quadrature.QAGPointsPerInterval
    static let thirtyOne: Quadrature.QAGPointsPerInterval
    static let fortyOne: Quadrature.QAGPointsPerInterval
    static let fiftyOne: Quadrature.QAGPointsPerInterval
    static let sixtyOne: Quadrature.QAGPointsPerInterval
  }
  enum Error : Error {
    case generic
    case invalidArgument
    case `internal`
    case integrateMaxEval
    case badIntegrandBehaviour
    init(quadratureStatus: quadrature_status)
    var errorDescription: String { get }
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Quadrature.Error : Equatable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Quadrature.Error : Hashable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
enum vDSP {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vDSP {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  struct VectorizableFloat {
  }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  struct VectorizableDouble {
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vDSP {
  @inlinable static func convolve<T, U>(_ vector: T, withKernel kernel: U) -> [Float] where T : AccelerateBuffer, U : AccelerateBuffer, T.Element == Float, U.Element == Float
  @inlinable static func convolve<T, U, V>(_ vector: T, withKernel kernel: U, result: inout V) where T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, T.Element == Float, U.Element == Float, V.Element == Float
  @inlinable static func convolve<T, U>(_ vector: T, withKernel kernel: U) -> [Double] where T : AccelerateBuffer, U : AccelerateBuffer, T.Element == Double, U.Element == Double
  @inlinable static func convolve<T, U, V>(_ vector: T, withKernel kernel: U, result: inout V) where T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, T.Element == Double, U.Element == Double, V.Element == Double
  @inlinable static func correlate<T, U>(_ vector: T, withKernel kernel: U) -> [Float] where T : AccelerateBuffer, U : AccelerateBuffer, T.Element == Float, U.Element == Float
  @inlinable static func correlate<T, U, V>(_ vector: T, withKernel kernel: U, result: inout V) where T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, T.Element == Float, U.Element == Float, V.Element == Float
  @inlinable static func correlate<T, U>(_ vector: T, withKernel kernel: U) -> [Double] where T : AccelerateBuffer, U : AccelerateBuffer, T.Element == Double, U.Element == Double
  @inlinable static func correlate<T, U, V>(_ vector: T, withKernel kernel: U, result: inout V) where T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, T.Element == Double, U.Element == Double, V.Element == Double
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vDSP {
  @inlinable static func convolve<T, U>(_ vector: T, rowCount: Int, columnCount: Int, with3x3Kernel kernel: U) -> [Float] where T : AccelerateBuffer, U : AccelerateBuffer, T.Element == Float, U.Element == Float
  @inlinable static func convolve<T, U, V>(_ vector: T, rowCount: Int, columnCount: Int, with3x3Kernel kernel: U, result: inout V) where T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, T.Element == Float, U.Element == Float, V.Element == Float
  @inlinable static func convolve<T, U>(_ vector: T, rowCount: Int, columnCount: Int, with3x3Kernel kernel: U) -> [Double] where T : AccelerateBuffer, U : AccelerateBuffer, T.Element == Double, U.Element == Double
  @inlinable static func convolve<T, U, V>(_ vector: T, rowCount: Int, columnCount: Int, with3x3Kernel kernel: U, result: inout V) where T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, T.Element == Double, U.Element == Double, V.Element == Double
  @inlinable static func convolve<T, U>(_ vector: T, rowCount: Int, columnCount: Int, with5x5Kernel kernel: U) -> [Float] where T : AccelerateBuffer, U : AccelerateBuffer, T.Element == Float, U.Element == Float
  @inlinable static func convolve<T, U, V>(_ vector: T, rowCount: Int, columnCount: Int, with5x5Kernel kernel: U, result: inout V) where T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, T.Element == Float, U.Element == Float, V.Element == Float
  @inlinable static func convolve<T, U>(_ vector: T, rowCount: Int, columnCount: Int, with5x5Kernel kernel: U) -> [Double] where T : AccelerateBuffer, U : AccelerateBuffer, T.Element == Double, U.Element == Double
  @inlinable static func convolve<T, U, V>(_ vector: T, rowCount: Int, columnCount: Int, with5x5Kernel kernel: U, result: inout V) where T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, T.Element == Double, U.Element == Double, V.Element == Double
  @inlinable static func convolve<T, U>(_ vector: T, rowCount: Int, columnCount: Int, withKernel kernel: U, kernelRowCount: Int, kernelColumnCount: Int) -> [Float] where T : AccelerateBuffer, U : AccelerateBuffer, T.Element == Float, U.Element == Float
  @inlinable static func convolve<T, U, V>(_ vector: T, rowCount: Int, columnCount: Int, withKernel kernel: U, kernelRowCount: Int, kernelColumnCount: Int, result: inout V) where T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, T.Element == Float, U.Element == Float, V.Element == Float
  @inlinable static func convolve<T, U>(_ vector: T, rowCount: Int, columnCount: Int, withKernel kernel: U, kernelRowCount: Int, kernelColumnCount: Int) -> [Double] where T : AccelerateBuffer, U : AccelerateBuffer, T.Element == Double, U.Element == Double
  @inlinable static func convolve<T, U, V>(_ vector: T, rowCount: Int, columnCount: Int, withKernel kernel: U, kernelRowCount: Int, kernelColumnCount: Int, result: inout V) where T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, T.Element == Double, U.Element == Double, V.Element == Double
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vDSP {
  @inlinable static func downsample<T, U>(_ source: U, decimationFactor: Int, filter: T) -> [Float] where T : AccelerateBuffer, U : AccelerateBuffer, T.Element == Float, U.Element == Float
  @inlinable static func downsample<T, U, V>(_ source: U, decimationFactor: Int, filter: T, result: inout V) where T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, T.Element == Float, U.Element == Float, V.Element == Float
  @inlinable static func downsample<T, U>(_ source: U, decimationFactor: Int, filter: T) -> [Double] where T : AccelerateBuffer, U : AccelerateBuffer, T.Element == Double, U.Element == Double
  @inlinable static func downsample<T, U, V>(_ source: U, decimationFactor: Int, filter: T, result: inout V) where T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, T.Element == Double, U.Element == Double, V.Element == Double
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vDSP {
  @inlinable static func convert(splitComplexVector: DSPSplitComplex, toInterleavedComplexVector interleavedComplexVector: inout [DSPComplex])
  @inlinable static func convert(interleavedComplexVector: [DSPComplex], toSplitComplexVector splitComplexVector: inout DSPSplitComplex)
  @inlinable static func convert(splitComplexVector: DSPDoubleSplitComplex, toInterleavedComplexVector interleavedComplexVector: inout [DSPDoubleComplex])
  @inlinable static func convert(interleavedComplexVector: [DSPDoubleComplex], toSplitComplexVector splitComplexVector: inout DSPDoubleSplitComplex)
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vDSP {
  @inlinable static func maximum<U>(_ vector: U) -> Float where U : AccelerateBuffer, U.Element == Float
  @inlinable static func maximum<U>(_ vector: U) -> Double where U : AccelerateBuffer, U.Element == Double
  @inlinable static func maximumMagnitude<U>(_ vector: U) -> Float where U : AccelerateBuffer, U.Element == Float
  @inlinable static func maximumMagnitude<U>(_ vector: U) -> Double where U : AccelerateBuffer, U.Element == Double
  @inlinable static func minimum<U>(_ vector: U) -> Float where U : AccelerateBuffer, U.Element == Float
  @inlinable static func minimum<U>(_ vector: U) -> Double where U : AccelerateBuffer, U.Element == Double
  @inlinable static func sum<U>(_ vector: U) -> Float where U : AccelerateBuffer, U.Element == Float
  @inlinable static func sum<U>(_ vector: U) -> Double where U : AccelerateBuffer, U.Element == Double
  @inlinable static func sumOfSquares<U>(_ vector: U) -> Float where U : AccelerateBuffer, U.Element == Float
  @inlinable static func sumOfSquares<U>(_ vector: U) -> Double where U : AccelerateBuffer, U.Element == Double
  @inlinable static func sumAndSumOfSquares<U>(_ vector: U) -> (elementsSum: Float, squaresSum: Float) where U : AccelerateBuffer, U.Element == Float
  @inlinable static func sumAndSumOfSquares<U>(_ vector: U) -> (elementsSum: Double, squaresSum: Double) where U : AccelerateBuffer, U.Element == Double
  @inlinable static func sumOfMagnitudes<U>(_ vector: U) -> Float where U : AccelerateBuffer, U.Element == Float
  @inlinable static func sumOfMagnitudes<U>(_ vector: U) -> Double where U : AccelerateBuffer, U.Element == Double
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vDSP {
  @inlinable static func indexOfMaximum<U>(_ vector: U) -> (UInt, Float) where U : AccelerateBuffer, U.Element == Float
  @inlinable static func indexOfMaximum<U>(_ vector: U) -> (UInt, Double) where U : AccelerateBuffer, U.Element == Double
  @inlinable static func indexOfMaximumMagnitude<U>(_ vector: U) -> (UInt, Float) where U : AccelerateBuffer, U.Element == Float
  @inlinable static func indexOfMaximumMagnitude<U>(_ vector: U) -> (UInt, Double) where U : AccelerateBuffer, U.Element == Double
  @inlinable static func indexOfMinimum<U>(_ vector: U) -> (UInt, Float) where U : AccelerateBuffer, U.Element == Float
  @inlinable static func indexOfMinimum<U>(_ vector: U) -> (UInt, Double) where U : AccelerateBuffer, U.Element == Double
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vDSP {
  @inlinable static func meanSquare<U>(_ vector: U) -> Float where U : AccelerateBuffer, U.Element == Float
  @inlinable static func meanSquare<U>(_ vector: U) -> Double where U : AccelerateBuffer, U.Element == Double
  @inlinable static func meanMagnitude<U>(_ vector: U) -> Float where U : AccelerateBuffer, U.Element == Float
  @inlinable static func meanMagnitude<U>(_ vector: U) -> Double where U : AccelerateBuffer, U.Element == Double
  @inlinable static func mean<U>(_ vector: U) -> Float where U : AccelerateBuffer, U.Element == Float
  @inlinable static func mean<U>(_ vector: U) -> Double where U : AccelerateBuffer, U.Element == Double
  @inlinable static func rootMeanSquare<U>(_ vector: U) -> Float where U : AccelerateBuffer, U.Element == Float
  @inlinable static func rootMeanSquare<U>(_ vector: U) -> Double where U : AccelerateBuffer, U.Element == Double
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vDSP {
  @inlinable static func convertElements<U, V>(of source: U, to destination: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == UInt8, V.Element == Float
  @inlinable static func convertElements<U, V>(of source: U, to destination: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == UInt8, V.Element == Double
  @inlinable static func convertElements<U, V>(of source: U, to destination: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == UInt16, V.Element == Float
  @inlinable static func convertElements<U, V>(of source: U, to destination: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == UInt16, V.Element == Double
  @inlinable static func convertElements<U, V>(of source: U, to destination: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == UInt32, V.Element == Float
  @inlinable static func convertElements<U, V>(of source: U, to destination: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == UInt32, V.Element == Double
  @inlinable static func convertElements<U, V>(of source: U, to destination: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Int8, V.Element == Float
  @inlinable static func convertElements<U, V>(of source: U, to destination: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Int8, V.Element == Double
  @inlinable static func convertElements<U, V>(of source: U, to destination: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Int16, V.Element == Float
  @inlinable static func convertElements<U, V>(of source: U, to destination: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Int16, V.Element == Double
  @inlinable static func convertElements<U, V>(of source: U, to destination: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Int32, V.Element == Float
  @inlinable static func convertElements<U, V>(of source: U, to destination: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Int32, V.Element == Double
  enum RoundingMode {
    case towardZero
    case towardNearestInteger
  }
  static func convertElements<U, V>(of source: U, to destination: inout V, rounding: vDSP.RoundingMode) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == Int32
  static func convertElements<U, V>(of source: U, to destination: inout V, rounding: vDSP.RoundingMode) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Double, V.Element == Int32
  static func convertElements<U, V>(of source: U, to destination: inout V, rounding: vDSP.RoundingMode) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == UInt16
  static func convertElements<U, V>(of source: U, to destination: inout V, rounding: vDSP.RoundingMode) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Double, V.Element == UInt16
  static func convertElements<U, V>(of source: U, to destination: inout V, rounding: vDSP.RoundingMode) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == UInt32
  static func convertElements<U, V>(of source: U, to destination: inout V, rounding: vDSP.RoundingMode) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Double, V.Element == UInt32
  static func convertElements<U, V>(of source: U, to destination: inout V, rounding: vDSP.RoundingMode) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == Int16
  static func convertElements<U, V>(of source: U, to destination: inout V, rounding: vDSP.RoundingMode) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Double, V.Element == Int16
  static func convertElements<U, V>(of source: U, to destination: inout V, rounding: vDSP.RoundingMode) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == Int8
  static func convertElements<U, V>(of source: U, to destination: inout V, rounding: vDSP.RoundingMode) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Double, V.Element == Int8
  static func convertElements<U, V>(of source: U, to destination: inout V, rounding: vDSP.RoundingMode) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == UInt8
  static func convertElements<U, V>(of source: U, to destination: inout V, rounding: vDSP.RoundingMode) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Double, V.Element == UInt8
  @inlinable static func convertElements<U, V>(of source: U, to destination: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == Double
  @inlinable static func convertElements<U, V>(of source: U, to destination: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Double, V.Element == Float
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vDSP {
  @inlinable static func integerToFloatingPoint<T, U>(_ vector: T, floatingPointType: U.Type) -> [U] where T : AccelerateBuffer, U : vDSP_FloatingPointConvertable, T.Element == UInt8
  @inlinable static func integerToFloatingPoint<T, U>(_ vector: T, floatingPointType: U.Type) -> [U] where T : AccelerateBuffer, U : vDSP_FloatingPointConvertable, T.Element == UInt16
  @inlinable static func integerToFloatingPoint<T, U>(_ vector: T, floatingPointType: U.Type) -> [U] where T : AccelerateBuffer, U : vDSP_FloatingPointConvertable, T.Element == UInt32
  @inlinable static func integerToFloatingPoint<T, U>(_ vector: T, floatingPointType: U.Type) -> [U] where T : AccelerateBuffer, U : vDSP_FloatingPointConvertable, T.Element == Int8
  @inlinable static func integerToFloatingPoint<T, U>(_ vector: T, floatingPointType: U.Type) -> [U] where T : AccelerateBuffer, U : vDSP_FloatingPointConvertable, T.Element == Int16
  @inlinable static func integerToFloatingPoint<T, U>(_ vector: T, floatingPointType: U.Type) -> [U] where T : AccelerateBuffer, U : vDSP_FloatingPointConvertable, T.Element == Int32
  @inlinable static func floatingPointToInteger<T, U>(_ vector: T, integerType: U.Type, rounding: vDSP.RoundingMode) -> [U] where T : AccelerateBuffer, U : vDSP_IntegerConvertable, T.Element == Float
  @inlinable static func floatingPointToInteger<T, U>(_ vector: T, integerType: U.Type, rounding: vDSP.RoundingMode) -> [U] where T : AccelerateBuffer, U : vDSP_IntegerConvertable, T.Element == Double
  @inlinable static func floatToDouble<U>(_ source: U) -> [Double] where U : AccelerateBuffer, U.Element == Float
  @inlinable static func doubleToFloat<U>(_ source: U) -> [Float] where U : AccelerateBuffer, U.Element == Double
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension vDSP {
  @inlinable static func taperedMerge<T, U, V>(_ vectorA: T, _ vectorB: U, result: inout V) where T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, T.Element == Float, U.Element == Float, V.Element == Float
  @inlinable static func taperedMerge<T, U, V>(_ vectorA: T, _ vectorB: U, result: inout V) where T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, T.Element == Double, U.Element == Double, V.Element == Double
  @inlinable static func taperedMerge<T, U>(_ vectorA: T, _ vectorB: U) -> [Float] where T : AccelerateBuffer, U : AccelerateBuffer, T.Element == Float, U.Element == Float
  @inlinable static func taperedMerge<T, U>(_ vectorA: T, _ vectorB: U) -> [Double] where T : AccelerateBuffer, U : AccelerateBuffer, T.Element == Double, U.Element == Double
  @inlinable static func swapElements<T, U>(_ vectorA: inout T, _ vectorB: inout U) where T : AccelerateMutableBuffer, U : AccelerateMutableBuffer, T.Element == Float, U.Element == Float
  @inlinable static func swapElements<T, U>(_ vectorA: inout T, _ vectorB: inout U) where T : AccelerateMutableBuffer, U : AccelerateMutableBuffer, T.Element == Double, U.Element == Double
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension vDSP {
  @inlinable static func gather<T, U, V>(_ vector: T, indices: U, result: inout V) where T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, T.Element == Float, U.Element == UInt, V.Element == Float
  @inlinable static func gather<T, U, V>(_ vector: T, indices: U, result: inout V) where T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, T.Element == Double, U.Element == UInt, V.Element == Double
  @inlinable static func gather<T, U>(_ vector: T, indices: U) -> [Float] where T : AccelerateBuffer, U : AccelerateBuffer, T.Element == Float, U.Element == UInt
  @inlinable static func gather<T, U>(_ vector: T, indices: U) -> [Double] where T : AccelerateBuffer, U : AccelerateBuffer, T.Element == Double, U.Element == UInt
  @inlinable static func compress<T, U, V>(_ vector: T, gatingVector: U, result: inout V) where T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, T.Element == Float, U.Element == Float, V.Element == Float
  @inlinable static func compress<T, U, V>(_ vector: T, gatingVector: U, result: inout V) where T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, T.Element == Double, U.Element == Double, V.Element == Double
  @inlinable static func compress<T, U>(_ vector: T, gatingVector: U, nonZeroGatingCount: Int?) -> [Float] where T : AccelerateBuffer, U : AccelerateBuffer, T.Element == Float, U.Element == Float
  @inlinable static func compress<T, U>(_ vector: T, gatingVector: U, nonZeroGatingCount: Int?) -> [Double] where T : AccelerateBuffer, U : AccelerateBuffer, T.Element == Double, U.Element == Double
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vDSP {
  @inlinable static func powerToDecibels<U>(_ power: U, zeroReference: Float) -> [Float] where U : AccelerateBuffer, U.Element == Float
  @inlinable static func convert<U, V>(power: U, toDecibels decibels: inout V, zeroReference: Float) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == Float
  @inlinable static func powerToDecibels<U>(_ power: U, zeroReference: Double) -> [Double] where U : AccelerateBuffer, U.Element == Double
  @inlinable static func convert<U, V>(power: U, toDecibels decibels: inout V, zeroReference: Double) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Double, V.Element == Double
  @inlinable static func amplitudeToDecibels<U>(_ amplitude: U, zeroReference: Float) -> [Float] where U : AccelerateBuffer, U.Element == Float
  @inlinable static func convert<U, V>(amplitude: U, toDecibels decibels: inout V, zeroReference: Float) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == Float
  @inlinable static func amplitudeToDecibels<U>(_ amplitude: U, zeroReference: Double) -> [Double] where U : AccelerateBuffer, U.Element == Double
  @inlinable static func convert<U, V>(amplitude: U, toDecibels decibels: inout V, zeroReference: Double) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Double, V.Element == Double
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vDSP {
  @inlinable static func rectangularToPolar<U>(_ rectangularCoordinates: U) -> [Float] where U : AccelerateBuffer, U.Element == Float
  @inlinable static func convert<U, V>(rectangularCoordinates: U, toPolarCoordinates polarCoordinates: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == Float
  @inlinable static func rectangularToPolar<U>(_ rectangularCoordinates: U) -> [Double] where U : AccelerateBuffer, U.Element == Double
  @inlinable static func convert<U, V>(rectangularCoordinates: U, toPolarCoordinates polarCoordinates: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Double, V.Element == Double
  @inlinable static func polarToRectangular<U>(_ polarCoordinates: U) -> [Float] where U : AccelerateBuffer, U.Element == Float
  @inlinable static func convert<U, V>(polarCoordinates: U, toRectangularCoordinates rectangularCoordinates: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == Float
  @inlinable static func polarToRectangular<U>(_ polarCoordinates: U) -> [Double] where U : AccelerateBuffer, U.Element == Double
  @inlinable static func convert<U, V>(polarCoordinates: U, toRectangularCoordinates rectangularCoordinates: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Double, V.Element == Double
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vDSP {
  enum DFTTransformType {
    case complexComplex
    case complexReal
  }
  class DFT<T> where T : vDSP_FloatingPointDiscreteFourierTransformable {
    init?(previous: vDSP.DFT<T>? = nil, count: Int, direction: vDSP.FourierTransformDirection, transformType: vDSP.DFTTransformType, ofType: T.Type)
    func transform<U>(inputReal: U, inputImaginary: U) -> (real: [T], imaginary: [T]) where T == U.Element, U : AccelerateBuffer
    func transform<U, V>(inputReal: U, inputImaginary: U, outputReal: inout V, outputImaginary: inout V) where T == U.Element, U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == V.Element
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vDSP {
  enum IntegrationRule {
    case runningSum
    case simpson
    case trapezoidal
  }
  @inlinable static func integrate<U>(_ vector: U, using rule: vDSP.IntegrationRule, stepSize: Float = 1) -> [Float] where U : AccelerateBuffer, U.Element == Float
  static func integrate<U, V>(_ vector: U, using rule: vDSP.IntegrationRule, stepSize: Float = 1, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == Float
  @inlinable static func integrate<U>(_ vector: U, using rule: vDSP.IntegrationRule, stepSize: Double = 1) -> [Double] where U : AccelerateBuffer, U.Element == Double
  static func integrate<U, V>(_ vector: U, using rule: vDSP.IntegrationRule, stepSize: Double = 1, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Double, V.Element == Double
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vDSP {
  @inlinable static func clip<U>(_ vector: U, to bounds: ClosedRange<Float>) -> [Float] where U : AccelerateBuffer, U.Element == Float
  @inlinable static func clip<U, V>(_ vector: U, to bounds: ClosedRange<Float>, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == Float
  @inlinable static func clip<U>(_ vector: U, to bounds: ClosedRange<Double>) -> [Double] where U : AccelerateBuffer, U.Element == Double
  @inlinable static func clip<U, V>(_ vector: U, to bounds: ClosedRange<Double>, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Double, V.Element == Double
  @inlinable static func invertedClip<U>(_ vector: U, to bounds: ClosedRange<Float>) -> [Float] where U : AccelerateBuffer, U.Element == Float
  @inlinable static func invertedClip<U, V>(_ vector: U, to bounds: ClosedRange<Float>, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == Float
  @inlinable static func invertedClip<U>(_ vector: U, to bounds: ClosedRange<Double>) -> [Double] where U : AccelerateBuffer, U.Element == Double
  @inlinable static func invertedClip<U, V>(_ vector: U, to bounds: ClosedRange<Double>, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Double, V.Element == Double
  enum ThresholdRule<T> where T : BinaryFloatingPoint {
    case clampToThreshold
    case zeroFill
    case signedConstant(T)
  }
  @inlinable static func threshold<U>(_ vector: U, to lowerBound: Float, with rule: vDSP.ThresholdRule<Float>) -> [Float] where U : AccelerateBuffer, U.Element == Float
  static func threshold<U, V>(_ vector: U, to lowerBound: Float, with rule: vDSP.ThresholdRule<Float>, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == Float
  @inlinable static func threshold<U>(_ vector: U, to lowerBound: Double, with rule: vDSP.ThresholdRule<Double>) -> [Double] where U : AccelerateBuffer, U.Element == Double
  static func threshold<U, V>(_ vector: U, to lowerBound: Double, with rule: vDSP.ThresholdRule<Double>, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Double, V.Element == Double
  @inlinable static func limit<U>(_ vector: U, limit: Float, withOutputConstant outputConstant: Float) -> [Float] where U : AccelerateBuffer, U.Element == Float
  @inlinable static func limit<U, V>(_ vector: U, limit: Float, withOutputConstant outputConstant: Float, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == Float
  @inlinable static func limit<U>(_ vector: U, limit: Double, withOutputConstant outputConstant: Double) -> [Double] where U : AccelerateBuffer, U.Element == Double
  @inlinable static func limit<U, V>(_ vector: U, limit: Double, withOutputConstant outputConstant: Double, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Double, V.Element == Double
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vDSP {
  @inlinable static func dot<U>(_ vectorA: U, _ vectorB: U) -> Float where U : AccelerateBuffer, U.Element == Float
  @inlinable static func dot<U>(_ vectorA: U, _ vectorB: U) -> Double where U : AccelerateBuffer, U.Element == Double
  @inlinable static func hypot<U, V>(_ x: U, _ y: V) -> [Float] where U : AccelerateBuffer, V : AccelerateBuffer, U.Element == Float, V.Element == Float
  @inlinable static func hypot<T, U, V>(_ x: T, _ y: U, result: inout V) where T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, T.Element == Float, U.Element == Float, V.Element == Float
  @inlinable static func hypot<U, V>(_ x: U, _ y: V) -> [Double] where U : AccelerateBuffer, V : AccelerateBuffer, U.Element == Double, V.Element == Double
  @inlinable static func hypot<T, U, V>(_ x: T, _ y: U, result: inout V) where T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, T.Element == Double, U.Element == Double, V.Element == Double
  @inlinable static func hypot<R, S, T, U>(x0: R, x1: S, y0: T, y1: U) -> [Float] where R : AccelerateBuffer, S : AccelerateBuffer, T : AccelerateBuffer, U : AccelerateBuffer, R.Element == Float, S.Element == Float, T.Element == Float, U.Element == Float
  @inlinable static func hypot<R, S, T, U, V>(x0: R, x1: S, y0: T, y1: U, result: inout V) where R : AccelerateBuffer, S : AccelerateBuffer, T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, R.Element == Float, S.Element == Float, T.Element == Float, U.Element == Float, V.Element == Float
  @inlinable static func hypot<R, S, T, U>(x0: R, x1: S, y0: T, y1: U) -> [Double] where R : AccelerateBuffer, S : AccelerateBuffer, T : AccelerateBuffer, U : AccelerateBuffer, R.Element == Double, S.Element == Double, T.Element == Double, U.Element == Double
  @inlinable static func hypot<R, S, T, U, V>(x0: R, x1: S, y0: T, y1: U, result: inout V) where R : AccelerateBuffer, S : AccelerateBuffer, T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, R.Element == Double, S.Element == Double, T.Element == Double, U.Element == Double, V.Element == Double
  @inlinable static func distanceSquared<U, V>(_ pointA: U, _ pointB: V) -> Float where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == Float
  @inlinable static func distanceSquared<U, V>(_ pointA: U, _ pointB: V) -> Double where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Double, V.Element == Double
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vDSP {
  @inlinable static func add<U>(_ scalar: Float, _ vector: U) -> [Float] where U : AccelerateBuffer, U.Element == Float
  @inlinable static func add<U, V>(_ scalar: Float, _ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == Float
  @inlinable static func add<U>(_ scalar: Double, _ vector: U) -> [Double] where U : AccelerateBuffer, U.Element == Double
  @inlinable static func add<U, V>(_ scalar: Double, _ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Double, V.Element == Double
  @inlinable static func add<T, U>(_ vectorA: T, _ vectorB: U) -> [Float] where T : AccelerateBuffer, U : AccelerateBuffer, T.Element == Float, U.Element == Float
  @inlinable static func add<T, U, V>(_ vectorA: T, _ vectorB: U, result: inout V) where T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, T.Element == Float, U.Element == Float, V.Element == Float
  @inlinable static func add<T, U>(_ vectorA: T, _ vectorB: U) -> [Double] where T : AccelerateBuffer, U : AccelerateBuffer, T.Element == Double, U.Element == Double
  @inlinable static func add<T, U, V>(_ vectorA: T, _ vectorB: U, result: inout V) where T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, T.Element == Double, U.Element == Double, V.Element == Double
  @inlinable static func subtract<T, U>(_ vectorA: U, _ vectorB: T) -> [Float] where T : AccelerateBuffer, U : AccelerateBuffer, T.Element == Float, U.Element == Float
  @inlinable static func subtract<T, U, V>(_ vectorA: U, _ vectorB: T, result: inout V) where T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, T.Element == Float, U.Element == Float, V.Element == Float
  @inlinable static func subtract<T, U>(_ vectorA: U, _ vectorB: T) -> [Double] where T : AccelerateBuffer, U : AccelerateBuffer, T.Element == Double, U.Element == Double
  @inlinable static func subtract<T, U, V>(_ vectorA: U, _ vectorB: T, result: inout V) where T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, T.Element == Double, U.Element == Double, V.Element == Double
  @inlinable static func multiply<U>(_ scalar: Float, _ vector: U) -> [Float] where U : AccelerateBuffer, U.Element == Float
  @inlinable static func multiply<U, V>(_ scalar: Float, _ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == Float
  @inlinable static func multiply<U>(_ scalar: Double, _ vector: U) -> [Double] where U : AccelerateBuffer, U.Element == Double
  @inlinable static func multiply<U, V>(_ scalar: Double, _ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Double, V.Element == Double
  @inlinable static func multiply<T, U>(_ vectorA: T, _ vectorB: U) -> [Float] where T : AccelerateBuffer, U : AccelerateBuffer, T.Element == Float, U.Element == Float
  @inlinable static func multiply<T, U, V>(_ vectorA: T, _ vectorB: U, result: inout V) where T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, T.Element == Float, U.Element == Float, V.Element == Float
  @inlinable static func multiply<T, U>(_ vectorA: T, _ vectorB: U) -> [Double] where T : AccelerateBuffer, U : AccelerateBuffer, T.Element == Double, U.Element == Double
  @inlinable static func multiply<T, U, V>(_ vectorA: T, _ vectorB: U, result: inout V) where T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, T.Element == Double, U.Element == Double, V.Element == Double
  @inlinable static func divide<U>(_ vector: U, _ scalar: Float) -> [Float] where U : AccelerateBuffer, U.Element == Float
  @inlinable static func divide<U, V>(_ vector: U, _ scalar: Float, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == Float
  @inlinable static func divide<U>(_ vector: U, _ scalar: Double) -> [Double] where U : AccelerateBuffer, U.Element == Double
  @inlinable static func divide<U, V>(_ vector: U, _ scalar: Double, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Double, V.Element == Double
  @inlinable static func divide<U>(_ scalar: Float, _ vector: U) -> [Float] where U : AccelerateBuffer, U.Element == Float
  @inlinable static func divide<U, V>(_ scalar: Float, _ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == Float
  @inlinable static func divide<U>(_ scalar: Double, _ vector: U) -> [Double] where U : AccelerateBuffer, U.Element == Double
  @inlinable static func divide<U, V>(_ scalar: Double, _ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Double, V.Element == Double
  @inlinable static func divide<T, U>(_ vectorA: T, _ vectorB: U) -> [Float] where T : AccelerateBuffer, U : AccelerateBuffer, T.Element == Float, U.Element == Float
  @inlinable static func divide<T, U, V>(_ vectorA: T, _ vectorB: U, result: inout V) where T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, T.Element == Float, U.Element == Float, V.Element == Float
  @inlinable static func divide<T, U>(_ vectorA: T, _ vectorB: U) -> [Double] where T : AccelerateBuffer, U : AccelerateBuffer, T.Element == Double, U.Element == Double
  @inlinable static func divide<T, U, V>(_ vectorA: T, _ vectorB: U, result: inout V) where T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, T.Element == Double, U.Element == Double, V.Element == Double
  @inlinable static func addSubtract<S, T, U, V>(_ vectorA: S, _ vectorB: T, addResult: inout U, subtractResult: inout V) where S : AccelerateBuffer, T : AccelerateBuffer, U : AccelerateMutableBuffer, V : AccelerateMutableBuffer, S.Element == Float, T.Element == Float, U.Element == Float, V.Element == Float
  @inlinable static func addSubtract<S, T, U, V>(_ vectorA: S, _ vectorB: T, addResult: inout U, subtractResult: inout V) where S : AccelerateBuffer, T : AccelerateBuffer, U : AccelerateMutableBuffer, V : AccelerateMutableBuffer, S.Element == Double, T.Element == Double, U.Element == Double, V.Element == Double
  @inlinable static func multiply<T, U>(addition: (a: T, b: U), _ scalar: Float) -> [Float] where T : AccelerateBuffer, U : AccelerateBuffer, T.Element == Float, U.Element == Float
  @inlinable static func multiply<T, U, V>(addition: (a: T, b: U), _ scalar: Float, result: inout V) where T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, T.Element == Float, U.Element == Float, V.Element == Float
  @inlinable static func multiply<T, U>(addition: (a: T, b: U), _ scalar: Double) -> [Double] where T : AccelerateBuffer, U : AccelerateBuffer, T.Element == Double, U.Element == Double
  @inlinable static func multiply<T, U, V>(addition: (a: T, b: U), _ scalar: Double, result: inout V) where T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, T.Element == Double, U.Element == Double, V.Element == Double
  @inlinable static func multiply<S, T, U>(addition: (a: S, b: T), _ vector: U) -> [Float] where S : AccelerateBuffer, T : AccelerateBuffer, U : AccelerateBuffer, S.Element == Float, T.Element == Float, U.Element == Float
  @inlinable static func multiply<S, T, U, V>(addition: (a: S, b: T), _ vector: U, result: inout V) where S : AccelerateBuffer, T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, S.Element == Float, T.Element == Float, U.Element == Float, V.Element == Float
  @inlinable static func multiply<S, T, U>(addition: (a: S, b: T), _ vector: U) -> [Double] where S : AccelerateBuffer, T : AccelerateBuffer, U : AccelerateBuffer, S.Element == Double, T.Element == Double, U.Element == Double
  @inlinable static func multiply<S, T, U, V>(addition: (a: S, b: T), _ vector: U, result: inout V) where S : AccelerateBuffer, T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, S.Element == Double, T.Element == Double, U.Element == Double, V.Element == Double
  @inlinable static func multiply<T, U>(subtraction: (a: T, b: U), _ scalar: Float) -> [Float] where T : AccelerateBuffer, U : AccelerateBuffer, T.Element == Float, U.Element == Float
  @inlinable static func multiply<T, U, V>(subtraction: (a: T, b: U), _ scalar: Float, result: inout V) where T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, T.Element == Float, U.Element == Float, V.Element == Float
  @inlinable static func multiply<T, U>(subtraction: (a: T, b: U), _ scalar: Double) -> [Double] where T : AccelerateBuffer, U : AccelerateBuffer, T.Element == Double, U.Element == Double
  @inlinable static func multiply<T, U, V>(subtraction: (a: T, b: U), _ scalar: Double, result: inout V) where T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, T.Element == Double, U.Element == Double, V.Element == Double
  @inlinable static func multiply<S, T, U>(subtraction: (a: S, b: T), _ vector: U) -> [Float] where S : AccelerateBuffer, T : AccelerateBuffer, U : AccelerateBuffer, S.Element == Float, T.Element == Float, U.Element == Float
  @inlinable static func multiply<S, T, U, V>(subtraction: (a: S, b: T), _ vector: U, result: inout V) where S : AccelerateBuffer, T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, S.Element == Float, T.Element == Float, U.Element == Float, V.Element == Float
  @inlinable static func multiply<S, T, U>(subtraction: (a: S, b: T), _ vector: U) -> [Double] where S : AccelerateBuffer, T : AccelerateBuffer, U : AccelerateBuffer, S.Element == Double, T.Element == Double, U.Element == Double
  @inlinable static func multiply<S, T, U, V>(subtraction: (a: S, b: T), _ vector: U, result: inout V) where S : AccelerateBuffer, T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, S.Element == Double, T.Element == Double, U.Element == Double, V.Element == Double
  @inlinable static func add<T, U>(multiplication: (a: T, b: U), _ scalar: Float) -> [Float] where T : AccelerateBuffer, U : AccelerateBuffer, T.Element == Float, U.Element == Float
  @inlinable static func add<T, U, V>(multiplication: (a: T, b: U), _ scalar: Float, result: inout V) where T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, T.Element == Float, U.Element == Float, V.Element == Float
  @inlinable static func add<T, U>(multiplication: (a: T, b: U), _ scalar: Double) -> [Double] where T : AccelerateBuffer, U : AccelerateBuffer, T.Element == Double, U.Element == Double
  @inlinable static func add<T, U, V>(multiplication: (a: T, b: U), _ scalar: Double, result: inout V) where T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, T.Element == Double, U.Element == Double, V.Element == Double
  @inlinable static func add<T, U>(multiplication: (a: T, b: Float), _ vector: U) -> [Float] where T : AccelerateBuffer, U : AccelerateBuffer, T.Element == Float, U.Element == Float
  @inlinable static func add<T, U, V>(multiplication: (a: T, b: Float), _ vector: U, result: inout V) where T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, T.Element == Float, U.Element == Float, V.Element == Float
  @inlinable static func add<T, U>(multiplication: (a: T, b: Double), _ vector: U) -> [Double] where T : AccelerateBuffer, U : AccelerateBuffer, T.Element == Double, U.Element == Double
  @inlinable static func add<T, U, V>(multiplication: (a: T, b: Double), _ vector: U, result: inout V) where T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, T.Element == Double, U.Element == Double, V.Element == Double
  @inlinable static func add<S, T, U>(multiplication: (a: S, b: T), _ vector: U) -> [Float] where S : AccelerateBuffer, T : AccelerateBuffer, U : AccelerateBuffer, S.Element == Float, T.Element == Float, U.Element == Float
  @inlinable static func add<S, T, U, V>(multiplication: (a: S, b: T), _ vector: U, result: inout V) where S : AccelerateBuffer, T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, S.Element == Float, T.Element == Float, U.Element == Float, V.Element == Float
  @inlinable static func add<S, T, U>(multiplication: (a: S, b: T), _ vector: U) -> [Double] where S : AccelerateBuffer, T : AccelerateBuffer, U : AccelerateBuffer, S.Element == Double, T.Element == Double, U.Element == Double
  @inlinable static func add<S, T, U, V>(multiplication: (a: S, b: T), _ vector: U, result: inout V) where S : AccelerateBuffer, T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, S.Element == Double, T.Element == Double, U.Element == Double, V.Element == Double
  @inlinable static func subtract<S, T, U>(multiplication: (a: T, b: U), _ vector: S) -> [Float] where S : AccelerateBuffer, T : AccelerateBuffer, U : AccelerateBuffer, S.Element == Float, T.Element == Float, U.Element == Float
  @inlinable static func subtract<S, T, U, V>(multiplication: (a: T, b: U), _ vector: S, result: inout V) where S : AccelerateBuffer, T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, S.Element == Float, T.Element == Float, U.Element == Float, V.Element == Float
  @inlinable static func subtract<S, T, U>(multiplication: (a: T, b: U), _ vector: S) -> [Double] where S : AccelerateBuffer, T : AccelerateBuffer, U : AccelerateBuffer, S.Element == Double, T.Element == Double, U.Element == Double
  @inlinable static func subtract<S, T, U, V>(multiplication: (a: T, b: U), _ vector: S, result: inout V) where S : AccelerateBuffer, T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, S.Element == Double, T.Element == Double, U.Element == Double, V.Element == Double
  @inlinable static func add<T, U>(multiplication multiplicationAB: (a: T, b: Float), multiplication multiplicationCD: (c: U, d: Float)) -> [Float] where T : AccelerateBuffer, U : AccelerateBuffer, T.Element == Float, U.Element == Float
  @inlinable static func add<T, U, V>(multiplication multiplicationAB: (a: T, b: Float), multiplication multiplicationCD: (c: U, d: Float), result: inout V) where T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, T.Element == Float, U.Element == Float, V.Element == Float
  @inlinable static func add<T, U>(multiplication multiplicationAB: (a: T, b: Double), multiplication multiplicationCD: (c: U, d: Double)) -> [Double] where T : AccelerateBuffer, U : AccelerateBuffer, T.Element == Double, U.Element == Double
  @inlinable static func add<T, U, V>(multiplication multiplicationAB: (a: T, b: Double), multiplication multiplicationCD: (c: U, d: Double), result: inout V) where T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, T.Element == Double, U.Element == Double, V.Element == Double
  @inlinable static func add<R, S, T, U>(multiplication multiplicationAB: (a: R, b: S), multiplication multiplicationCD: (c: T, d: U)) -> [Float] where R : AccelerateBuffer, S : AccelerateBuffer, T : AccelerateBuffer, U : AccelerateBuffer, R.Element == Float, S.Element == Float, T.Element == Float, U.Element == Float
  @inlinable static func add<R, S, T, U, V>(multiplication multiplicationAB: (a: R, b: S), multiplication multiplicationCD: (c: T, d: U), result: inout V) where R : AccelerateBuffer, S : AccelerateBuffer, T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, R.Element == Float, S.Element == Float, T.Element == Float, U.Element == Float, V.Element == Float
  @inlinable static func add<R, S, T, U>(multiplication multiplicationAB: (a: R, b: S), multiplication multiplicationCD: (c: T, d: U)) -> [Double] where R : AccelerateBuffer, S : AccelerateBuffer, T : AccelerateBuffer, U : AccelerateBuffer, R.Element == Double, S.Element == Double, T.Element == Double, U.Element == Double
  @inlinable static func add<R, S, T, U, V>(multiplication multiplicationAB: (a: R, b: S), multiplication multiplicationCD: (c: T, d: U), result: inout V) where R : AccelerateBuffer, S : AccelerateBuffer, T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, R.Element == Double, S.Element == Double, T.Element == Double, U.Element == Double, V.Element == Double
  @inlinable static func multiply<S, T, U>(addition additionAB: (a: S, b: T), addition additionCD: (c: U, d: U)) -> [Float] where S : AccelerateBuffer, T : AccelerateBuffer, U : AccelerateBuffer, S.Element == Float, T.Element == Float, U.Element == Float
  @inlinable static func multiply<S, T, U, V>(addition additionAB: (a: S, b: T), addition additionCD: (c: U, d: U), result: inout V) where S : AccelerateBuffer, T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, S.Element == Float, T.Element == Float, U.Element == Float, V.Element == Float
  @inlinable static func multiply<S, T, U>(addition additionAB: (a: S, b: T), addition additionCD: (c: U, d: U)) -> [Double] where S : AccelerateBuffer, T : AccelerateBuffer, U : AccelerateBuffer, S.Element == Double, T.Element == Double, U.Element == Double
  @inlinable static func multiply<S, T, U, V>(addition additionAB: (a: S, b: T), addition additionCD: (c: U, d: U), result: inout V) where S : AccelerateBuffer, T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, S.Element == Double, T.Element == Double, U.Element == Double, V.Element == Double
  @inlinable static func subtract<R, S, T, U>(multiplication multiplicationAB: (a: T, b: U), multiplication multiplicationCD: (c: R, d: S)) -> [Float] where R : AccelerateBuffer, S : AccelerateBuffer, T : AccelerateBuffer, U : AccelerateBuffer, R.Element == Float, S.Element == Float, T.Element == Float, U.Element == Float
  @inlinable static func subtract<R, S, T, U, V>(multiplication multiplicationAB: (a: T, b: U), multiplication multiplicationCD: (c: R, d: S), result: inout V) where R : AccelerateBuffer, S : AccelerateBuffer, T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, R.Element == Float, S.Element == Float, T.Element == Float, U.Element == Float, V.Element == Float
  @inlinable static func subtract<R, S, T, U>(multiplication multiplicationAB: (a: T, b: U), multiplication multiplicationCD: (c: R, d: S)) -> [Double] where R : AccelerateBuffer, S : AccelerateBuffer, T : AccelerateBuffer, U : AccelerateBuffer, R.Element == Double, S.Element == Double, T.Element == Double, U.Element == Double
  @inlinable static func subtract<R, S, T, U, V>(multiplication multiplicationAB: (a: T, b: U), multiplication multiplicationCD: (c: R, d: S), result: inout V) where R : AccelerateBuffer, S : AccelerateBuffer, T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, R.Element == Double, S.Element == Double, T.Element == Double, U.Element == Double, V.Element == Double
  @inlinable static func multiply<R, S, T, U>(subtraction subtractionAB: (a: R, b: S), subtraction subtractionCD: (c: T, d: U)) -> [Float] where R : AccelerateBuffer, S : AccelerateBuffer, T : AccelerateBuffer, U : AccelerateBuffer, R.Element == Float, S.Element == Float, T.Element == Float, U.Element == Float
  @inlinable static func multiply<R, S, T, U, V>(subtraction subtractionAB: (a: R, b: S), subtraction subtractionCD: (c: T, d: U), result: inout V) where R : AccelerateBuffer, S : AccelerateBuffer, T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, R.Element == Float, S.Element == Float, T.Element == Float, U.Element == Float, V.Element == Float
  @inlinable static func multiply<R, S, T, U>(subtraction subtractionAB: (a: R, b: S), subtraction subtractionCD: (c: T, d: U)) -> [Double] where R : AccelerateBuffer, S : AccelerateBuffer, T : AccelerateBuffer, U : AccelerateBuffer, R.Element == Double, S.Element == Double, T.Element == Double, U.Element == Double
  @inlinable static func multiply<R, S, T, U, V>(subtraction subtractionAB: (a: R, b: S), subtraction subtractionCD: (c: T, d: U), result: inout V) where R : AccelerateBuffer, S : AccelerateBuffer, T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, R.Element == Double, S.Element == Double, T.Element == Double, U.Element == Double, V.Element == Double
  @inlinable static func multiply<R, S, T, U>(addition: (a: R, b: S), subtraction: (c: T, d: U)) -> [Float] where R : AccelerateBuffer, S : AccelerateBuffer, T : AccelerateBuffer, U : AccelerateBuffer, R.Element == Float, S.Element == Float, T.Element == Float, U.Element == Float
  @inlinable static func multiply<R, S, T, U, V>(addition: (a: R, b: S), subtraction: (c: T, d: U), result: inout V) where R : AccelerateBuffer, S : AccelerateBuffer, T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, R.Element == Float, S.Element == Float, T.Element == Float, U.Element == Float, V.Element == Float
  @inlinable static func multiply<R, S, T, U>(addition: (a: R, b: S), subtraction: (c: T, d: U)) -> [Double] where R : AccelerateBuffer, S : AccelerateBuffer, T : AccelerateBuffer, U : AccelerateBuffer, R.Element == Double, S.Element == Double, T.Element == Double, U.Element == Double
  @inlinable static func multiply<R, S, T, U, V>(addition: (a: R, b: S), subtraction: (c: T, d: U), result: inout V) where R : AccelerateBuffer, S : AccelerateBuffer, T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, R.Element == Double, S.Element == Double, T.Element == Double, U.Element == Double, V.Element == Double
  @inlinable static func add<U>(multiplication: (a: U, b: Float), _ scalar: Float) -> [Float] where U : AccelerateBuffer, U.Element == Float
  @inlinable static func add<U, V>(multiplication: (a: U, b: Float), _ scalar: Float, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == Float
  @inlinable static func add<U>(multiplication: (a: U, b: Double), _ scalar: Double) -> [Double] where U : AccelerateBuffer, U.Element == Double
  @inlinable static func add<U, V>(multiplication: (a: U, b: Double), _ scalar: Double, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Double, V.Element == Double
  @inlinable static func subtract<T, U>(multiplication: (a: U, b: Float), _ vector: T) -> [Float] where T : AccelerateBuffer, U : AccelerateBuffer, T.Element == Float, U.Element == Float
  @inlinable static func subtract<T, U, V>(multiplication: (a: U, b: Float), _ vector: T, result: inout V) where T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, T.Element == Float, U.Element == Float, V.Element == Float
  @inlinable static func subtract<T, U>(multiplication: (a: U, b: Double), _ vector: T) -> [Double] where T : AccelerateBuffer, U : AccelerateBuffer, T.Element == Double, U.Element == Double
  @inlinable static func subtract<T, U, V>(multiplication: (a: U, b: Double), _ vector: T, result: inout V) where T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, T.Element == Double, U.Element == Double, V.Element == Double
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vDSP {
  @inlinable static func evaluatePolynomial<U>(usingCoefficients coefficients: [Float], withVariables variables: U) -> [Float] where U : AccelerateBuffer, U.Element == Float
  @inlinable static func evaluatePolynomial<U, V>(usingCoefficients coefficients: [Float], withVariables variables: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == Float
  @inlinable static func evaluatePolynomial<U>(usingCoefficients coefficients: [Double], withVariables variables: U) -> [Double] where U : AccelerateBuffer, U.Element == Double
  @inlinable static func evaluatePolynomial<U, V>(usingCoefficients coefficients: [Double], withVariables variables: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Double, V.Element == Double
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vDSP {
  enum Radix {
    case radix2
    case radix3
    case radix5
    var fftRadix: FFTRadix { get }
  }
  class FFT<T> where T : vDSP_FourierTransformable {
    init?(log2n: vDSP_Length, radix: vDSP.Radix, ofType: T.Type)
    func transform<T>(input: T, output: inout T, direction: vDSP.FourierTransformDirection) where T : vDSP_FourierTransformable
    func forward(input: DSPSplitComplex, output: inout DSPSplitComplex)
    func inverse(input: DSPSplitComplex, output: inout DSPSplitComplex)
  }
  class FFT2D<T> : vDSP.FFT<T> where T : vDSP_FourierTransformable {
    required init?(width: Int, height: Int, ofType: T.Type)
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vDSP {
  struct Biquad<T> where T : vDSP_FloatingPointBiquadFilterable {
    init?(coefficients: [Double], channelCount: vDSP_Length, sectionCount: vDSP_Length, ofType: T.Type)
    mutating func apply<U>(input: U) -> [T] where T == U.Element, U : AccelerateBuffer
    mutating func apply<U, V>(input: U, output: inout V) where T == U.Element, U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == V.Element
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vDSP {
  @inlinable static func linearInterpolate<T, U>(_ vectorA: T, _ vectorB: U, using interpolationConstant: Float) -> [Float] where T : AccelerateBuffer, U : AccelerateBuffer, T.Element == Float, U.Element == Float
  @inlinable static func linearInterpolate<T, U, V>(_ vectorA: T, _ vectorB: U, using interpolationConstant: Float, result: inout V) where T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, T.Element == Float, U.Element == Float, V.Element == Float
  @inlinable static func linearInterpolate<T, U>(_ vectorA: T, _ vectorB: U, using interpolationConstant: Double) -> [Double] where T : AccelerateBuffer, U : AccelerateBuffer, T.Element == Double, U.Element == Double
  @inlinable static func linearInterpolate<T, U, V>(_ vectorA: T, _ vectorB: U, using interpolationConstant: Double, result: inout V) where T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, T.Element == Double, U.Element == Double, V.Element == Double
  @inlinable static func linearInterpolate<T, U>(elementsOf vector: T, using controlVector: U) -> [Float] where T : AccelerateBuffer, U : AccelerateBuffer, T.Element == Float, U.Element == Float
  @inlinable static func linearInterpolate<T, U, V>(elementsOf vector: T, using controlVector: U, result: inout V) where T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, T.Element == Float, U.Element == Float, V.Element == Float
  @inlinable static func linearInterpolate<T, U>(elementsOf vector: T, using controlVector: U) -> [Double] where T : AccelerateBuffer, U : AccelerateBuffer, T.Element == Double, U.Element == Double
  @inlinable static func linearInterpolate<T, U, V>(elementsOf vector: T, using controlVector: U, result: inout V) where T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, T.Element == Double, U.Element == Double, V.Element == Double
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vDSP {
  @inlinable static func slidingWindowSum<U>(_ vector: U, usingWindowLength windowLength: Int) -> [Float] where U : AccelerateBuffer, U.Element == Float
  @inlinable static func slidingWindowSum<U, V>(_ vector: U, usingWindowLength windowLength: Int, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == Float
  @inlinable static func slidingWindowSum<U>(_ vector: U, usingWindowLength windowLength: Int) -> [Double] where U : AccelerateBuffer, U.Element == Double
  @inlinable static func slidingWindowSum<U, V>(_ vector: U, usingWindowLength windowLength: Int, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Double, V.Element == Double
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vDSP {
  enum FourierTransformDirection {
    case forward
    case inverse
    var dftDirection: vDSP_DFT_Direction { get }
    var fftDirection: FFTDirection { get }
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vDSP {
  @inlinable static func twoPoleTwoZeroFilter<U>(_ source: U, coefficients: (Float, Float, Float, Float, Float)) -> [Float] where U : AccelerateBuffer, U.Element == Float
  @inlinable static func twoPoleTwoZeroFilter<U, V>(_ source: U, coefficients: (Float, Float, Float, Float, Float), result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == Float
  @inlinable static func twoPoleTwoZeroFilter<U>(_ source: U, coefficients: (Double, Double, Double, Double, Double)) -> [Double] where U : AccelerateBuffer, U.Element == Double
  @inlinable static func twoPoleTwoZeroFilter<U, V>(_ source: U, coefficients: (Double, Double, Double, Double, Double), result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Double, V.Element == Double
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vDSP {
  @inlinable static func minimum<U>(_ vectorA: U, _ vectorB: U) -> [Float] where U : AccelerateBuffer, U.Element == Float
  @inlinable static func minimum<U, V>(_ vectorA: U, _ vectorB: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == Float
  @inlinable static func minimum<U>(_ vectorA: U, _ vectorB: U) -> [Double] where U : AccelerateBuffer, U.Element == Double
  @inlinable static func minimum<U, V>(_ vectorA: U, _ vectorB: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Double, V.Element == Double
  @inlinable static func maximum<U>(_ vectorA: U, _ vectorB: U) -> [Float] where U : AccelerateBuffer, U.Element == Float
  @inlinable static func maximum<U, V>(_ vectorA: U, _ vectorB: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == Float
  @inlinable static func maximum<U>(_ vectorA: U, _ vectorB: U) -> [Double] where U : AccelerateBuffer, U.Element == Double
  @inlinable static func maximum<U, V>(_ vectorA: U, _ vectorB: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Double, V.Element == Double
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vDSP {
  @inlinable static func absolute<U>(_ vector: U) -> [Float] where U : AccelerateBuffer, U.Element == Float
  @inlinable static func absolute<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == Float
  @inlinable static func absolute<U>(_ vector: U) -> [Double] where U : AccelerateBuffer, U.Element == Double
  @inlinable static func absolute<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Double, V.Element == Double
  @inlinable static func negativeAbsolute<U>(_ vector: U) -> [Float] where U : AccelerateBuffer, U.Element == Float
  @inlinable static func negativeAbsolute<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == Float
  @inlinable static func negativeAbsolute<U>(_ vector: U) -> [Double] where U : AccelerateBuffer, U.Element == Double
  @inlinable static func negativeAbsolute<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Double, V.Element == Double
  @inlinable static func negative<U>(_ vector: U) -> [Float] where U : AccelerateBuffer, U.Element == Float
  @inlinable static func negative<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == Float
  @inlinable static func negative<U>(_ vector: U) -> [Double] where U : AccelerateBuffer, U.Element == Double
  @inlinable static func negative<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Double, V.Element == Double
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vDSP {
  @inlinable static func reverse<V>(_ vector: inout V) where V : AccelerateMutableBuffer, V.Element == Float
  @inlinable static func reverse<V>(_ vector: inout V) where V : AccelerateMutableBuffer, V.Element == Double
  enum SortOrder : Int32 {
    case ascending
    case descending
  }
  @inlinable static func sort<V>(_ vector: inout V, sortOrder: vDSP.SortOrder) where V : AccelerateMutableBuffer, V.Element == Float
  @inlinable static func sort<V>(_ vector: inout V, sortOrder: vDSP.SortOrder) where V : AccelerateMutableBuffer, V.Element == Double
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vDSP {
  @inlinable static func square<U>(_ vector: U) -> [Float] where U : AccelerateBuffer, U.Element == Float
  @inlinable static func square<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == Float
  @inlinable static func square<U>(_ vector: U) -> [Double] where U : AccelerateBuffer, U.Element == Double
  @inlinable static func square<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Double, V.Element == Double
  @inlinable static func signedSquare<U>(_ vector: U) -> [Float] where U : AccelerateBuffer, U.Element == Float
  @inlinable static func signedSquare<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == Float
  @inlinable static func signedSquare<U>(_ vector: U) -> [Double] where U : AccelerateBuffer, U.Element == Double
  @inlinable static func signedSquare<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Double, V.Element == Double
  @inlinable static func trunc<U>(_ vector: U) -> [Float] where U : AccelerateBuffer, U.Element == Float
  @inlinable static func trunc<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == Float
  @inlinable static func trunc<U>(_ vector: U) -> [Double] where U : AccelerateBuffer, U.Element == Double
  @inlinable static func trunc<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Double, V.Element == Double
  @inlinable static func countZeroCrossings<U>(_ vector: U) -> UInt where U : AccelerateBuffer, U.Element == Float
  @inlinable static func countZeroCrossings<U>(_ vector: U) -> UInt where U : AccelerateBuffer, U.Element == Double
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vDSP {
  @inlinable static func phase<V>(_ splitComplex: DSPSplitComplex, result: inout V) where V : AccelerateMutableBuffer, V.Element == Float
  @inlinable static func phase<V>(_ splitComplex: DSPDoubleSplitComplex, result: inout V) where V : AccelerateMutableBuffer, V.Element == Double
  @inlinable static func copy(_ source: DSPSplitComplex, to destination: inout DSPSplitComplex, count: Int)
  @inlinable static func copy(_ source: DSPDoubleSplitComplex, to destination: inout DSPDoubleSplitComplex, count: Int)
  @inlinable static func conjugate(_ splitComplex: DSPSplitComplex, count: Int, result: inout DSPSplitComplex)
  @inlinable static func conjugate(_ splitComplex: DSPDoubleSplitComplex, count: Int, result: inout DSPDoubleSplitComplex)
  @inlinable static func divide<U>(_ splitComplex: DSPSplitComplex, by vector: U, result: inout DSPSplitComplex) where U : AccelerateBuffer, U.Element == Float
  @inlinable static func divide<U>(_ splitComplex: DSPDoubleSplitComplex, by vector: U, result: inout DSPDoubleSplitComplex) where U : AccelerateBuffer, U.Element == Double
  @inlinable static func multiply<U>(_ splitComplex: DSPSplitComplex, by vector: U, result: inout DSPSplitComplex) where U : AccelerateBuffer, U.Element == Float
  @inlinable static func multiply<U>(_ splitComplex: DSPDoubleSplitComplex, by vector: U, result: inout DSPDoubleSplitComplex) where U : AccelerateBuffer, U.Element == Double
  @inlinable static func multiply(_ splitComplexA: DSPSplitComplex, by splitComplexB: DSPSplitComplex, count: Int, useConjugate: Bool, result: inout DSPSplitComplex)
  @inlinable static func multiply(_ splitComplexA: DSPDoubleSplitComplex, by splitComplexB: DSPDoubleSplitComplex, count: Int, useConjugate: Bool, result: inout DSPDoubleSplitComplex)
  @inlinable static func add(_ splitComplexA: DSPSplitComplex, to splitComplexB: DSPSplitComplex, count: Int, result: inout DSPSplitComplex)
  @inlinable static func add(_ splitComplexA: DSPDoubleSplitComplex, to splitComplexB: DSPDoubleSplitComplex, count: Int, result: inout DSPDoubleSplitComplex)
  @inlinable static func divide(_ splitComplexA: DSPSplitComplex, by splitComplexB: DSPSplitComplex, count: Int, result: inout DSPSplitComplex)
  @inlinable static func divide(_ splitComplexA: DSPDoubleSplitComplex, by splitComplexB: DSPDoubleSplitComplex, count: Int, result: inout DSPDoubleSplitComplex)
  @inlinable static func subtract(_ splitComplexB: DSPSplitComplex, from splitComplexA: DSPSplitComplex, count: Int, result: inout DSPSplitComplex)
  @inlinable static func subtract(_ splitComplexB: DSPDoubleSplitComplex, from splitComplexA: DSPDoubleSplitComplex, count: Int, result: inout DSPDoubleSplitComplex)
  @inlinable static func absolute<V>(_ vector: DSPSplitComplex, result: inout V) where V : AccelerateMutableBuffer, V.Element == Float
  @inlinable static func absolute<V>(_ vector: DSPDoubleSplitComplex, result: inout V) where V : AccelerateMutableBuffer, V.Element == Double
  @inlinable static func squareMagnitudes<V>(_ splitComplex: DSPSplitComplex, result: inout V) where V : AccelerateMutableBuffer, V.Element == Float
  @inlinable static func squareMagnitudes<V>(_ splitComplex: DSPDoubleSplitComplex, result: inout V) where V : AccelerateMutableBuffer, V.Element == Double
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vDSP {
  enum DCTTransformType : CaseIterable {
    case II
    case III
    case IV
    var dctType: vDSP_DCT_Type { get }
  }
  class DCT {
    init?(previous: vDSP.DCT? = nil, count: Int, transformType: vDSP.DCTTransformType)
    func transform<U>(_ vector: U) -> [Float] where U : AccelerateBuffer, U.Element == Float
    func transform<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == Float
  }
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension vDSP {
  @available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
  @inlinable static func linearInterpolate<T, U, V>(values: T, atIndices indices: U, result: inout V) where T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, T.Element == Float, U.Element == Float, V.Element == Float
  @available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
  @inlinable static func linearInterpolate<T, U>(values: T, atIndices indices: U) -> [Float] where T : AccelerateBuffer, U : AccelerateBuffer, T.Element == Float, U.Element == Float
  @available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
  @inlinable static func linearInterpolate<T, U, V>(values: T, atIndices indices: U, result: inout V) where T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, T.Element == Double, U.Element == Double, V.Element == Double
  @available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
  @inlinable static func linearInterpolate<T, U>(values: T, atIndices indices: U) -> [Double] where T : AccelerateBuffer, U : AccelerateBuffer, T.Element == Double, U.Element == Double
  @available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
  @inlinable static func linearInterpolate<T, U, V>(lookupTable: T, withOffsets offsets: U, scale: Float = 1, baseOffset: Float = 0, result: inout V) where T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, T.Element == Float, U.Element == Float, V.Element == Float
  @available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
  @inlinable static func linearInterpolate<T, U>(lookupTable: T, withOffsets offsets: U, scale: Float = 1, baseOffset: Float = 0) -> [Float] where T : AccelerateBuffer, U : AccelerateBuffer, T.Element == Float, U.Element == Float
  @available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
  @inlinable static func linearInterpolate<T, U, V>(lookupTable: T, withOffsets offsets: U, scale: Double = 1, baseOffset: Double = 0, result: inout V) where T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, T.Element == Double, U.Element == Double, V.Element == Double
  @available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
  @inlinable static func linearInterpolate<T, U>(lookupTable: T, withOffsets offsets: U, scale: Double = 1, baseOffset: Double = 0) -> [Double] where T : AccelerateBuffer, U : AccelerateBuffer, T.Element == Double, U.Element == Double
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vDSP {
  @inlinable static func fill<V>(_ vector: inout V, with value: Float) where V : AccelerateMutableBuffer, V.Element == Float
  @inlinable static func fill<V>(_ vector: inout V, with value: Double) where V : AccelerateMutableBuffer, V.Element == Double
  @inlinable static func clear<V>(_ vector: inout V) where V : AccelerateMutableBuffer, V.Element == Float
  @inlinable static func clear<V>(_ vector: inout V) where V : AccelerateMutableBuffer, V.Element == Double
  enum WindowSequence {
    case hanningNormalized
    case hanningDenormalized
    case hamming
    case blackman
  }
  @inlinable static func window<T>(ofType: T.Type, usingSequence sequence: vDSP.WindowSequence, count: Int, isHalfWindow: Bool) -> [T] where T : vDSP_FloatingPointGeneratable
  static func formWindow<V>(usingSequence sequence: vDSP.WindowSequence, result: inout V, isHalfWindow: Bool) where V : AccelerateMutableBuffer, V.Element == Float
  static func formWindow<V>(usingSequence sequence: vDSP.WindowSequence, result: inout V, isHalfWindow: Bool) where V : AccelerateMutableBuffer, V.Element == Double
  @inlinable static func ramp(withInitialValue initialValue: Float, increment: Float, count: Int) -> [Float]
  @inlinable static func formRamp<V>(withInitialValue initialValue: Float, increment: Float, result: inout V) where V : AccelerateMutableBuffer, V.Element == Float
  @inlinable static func ramp(withInitialValue initialValue: Double, increment: Double, count: Int) -> [Double]
  @inlinable static func formRamp<V>(withInitialValue initialValue: Double, increment: Double, result: inout V) where V : AccelerateMutableBuffer, V.Element == Double
  @inlinable static func ramp(in range: ClosedRange<Float>, count: Int) -> [Float]
  @inlinable static func formRamp<V>(in range: ClosedRange<Float>, result: inout V) where V : AccelerateMutableBuffer, V.Element == Float
  @inlinable static func ramp(in range: ClosedRange<Double>, count: Int) -> [Double]
  @inlinable static func formRamp<V>(in range: ClosedRange<Double>, result: inout V) where V : AccelerateMutableBuffer, V.Element == Double
  @inlinable static func ramp<U>(withInitialValue initialValue: inout Float, multiplyingBy vector: U, increment: Float) -> [Float] where U : AccelerateBuffer, U.Element == Float
  @inlinable static func formRamp<U, V>(withInitialValue initialValue: inout Float, multiplyingBy vector: U, increment: Float, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == Float
  @inlinable static func ramp<U>(withInitialValue initialValue: inout Double, multiplyingBy vector: U, increment: Double) -> [Double] where U : AccelerateBuffer, U.Element == Double
  @inlinable static func formRamp<U, V>(withInitialValue initialValue: inout Double, multiplyingBy vector: U, increment: Double, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Double, V.Element == Double
  @inlinable static func stereoRamp<U>(withInitialValue initialValue: inout Float, multiplyingBy multiplierOne: U, _ multiplierTwo: U, increment: Float) -> (firstOutput: [Float], secondOutput: [Float]) where U : AccelerateBuffer, U.Element == Float
  @inlinable static func formStereoRamp<U, V>(withInitialValue initialValue: inout Float, multiplyingBy multiplierOne: U, _ multiplierTwo: U, increment: Float, results resultOne: inout V, _ resultTwo: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == Float
  @inlinable static func stereoRamp<U>(withInitialValue initialValue: inout Double, multiplyingBy multiplierOne: U, _ multiplierTwo: U, increment: Double) -> (firstOutput: [Double], secondOutput: [Double]) where U : AccelerateBuffer, U.Element == Double
  @inlinable static func formStereoRamp<U, V>(withInitialValue initialValue: inout Double, multiplyingBy multiplierOne: U, _ multiplierTwo: U, increment: Double, results resultOne: inout V, _ resultTwo: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Double, V.Element == Double
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vDSP.VectorizableFloat : vDSP_DFTFunctions {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vDSP.VectorizableFloat : vDSP_BiquadFunctions {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vDSP.VectorizableDouble : vDSP_DFTFunctions {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vDSP.VectorizableDouble : vDSP_BiquadFunctions {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vDSP.RoundingMode : Equatable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vDSP.RoundingMode : Hashable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vDSP.DFTTransformType : Equatable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vDSP.DFTTransformType : Hashable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vDSP.IntegrationRule : Equatable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vDSP.IntegrationRule : Hashable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vDSP.Radix : Equatable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vDSP.Radix : Hashable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vDSP.FourierTransformDirection : Equatable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vDSP.FourierTransformDirection : Hashable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vDSP.SortOrder : Equatable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vDSP.SortOrder : Hashable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vDSP.SortOrder : RawRepresentable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vDSP.DCTTransformType : Equatable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vDSP.DCTTransformType : Hashable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vDSP.WindowSequence : Equatable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vDSP.WindowSequence : Hashable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
protocol vDSP_BiquadFunctions {
  associatedtype Scalar
  static func makeBiquadSetup(channelCount: vDSP_Length, coefficients: [Double], sectionCount: vDSP_Length) -> OpaquePointer?
  static func applySingle<U, V>(source: U, destination: inout V, delays: UnsafeMutablePointer<Self.Scalar>, setup: vDSP_biquad_Setup, sectionCount: vDSP_Length, count: vDSP_Length) where U : AccelerateBuffer, V : AccelerateMutableBuffer, Self.Scalar == U.Element, U.Element == V.Element
  static func applyMulti(setup: vDSP_biquadm_SetupD, pInputs: UnsafeMutablePointer<UnsafePointer<Self.Scalar>>, pOutputs: UnsafeMutablePointer<UnsafeMutablePointer<Self.Scalar>>, count: vDSP_Length)
  static func destroySetup(channelCount: UInt, biquadSetup: OpaquePointer)
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
protocol vDSP_DFTFunctions {
  associatedtype Scalar
  static func makeDFTSetup<T>(previous: vDSP.DFT<T>?, count: Int, direction: vDSP.FourierTransformDirection, transformType: vDSP.DFTTransformType) -> OpaquePointer? where T : vDSP_FloatingPointDiscreteFourierTransformable
  static func transform<U, V>(dftSetup: OpaquePointer, inputReal: U, inputImaginary: U, outputReal: inout V, outputImaginary: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, Self.Scalar == U.Element, U.Element == V.Element
  static func destroySetup(_ setup: OpaquePointer)
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
protocol vDSP_FloatingPointBiquadFilterable : BinaryFloatingPoint {
  associatedtype BiquadFunctions : vDSP_BiquadFunctions where Self == Self.BiquadFunctions.Scalar
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
protocol vDSP_FloatingPointConvertable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
protocol vDSP_FloatingPointDiscreteFourierTransformable : BinaryFloatingPoint {
  associatedtype DFTFunctions : vDSP_DFTFunctions where Self == Self.DFTFunctions.Scalar
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
protocol vDSP_FloatingPointGeneratable : BinaryFloatingPoint {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
protocol vDSP_FourierTransformFunctions {
  associatedtype SplitComplex
  static func makeFFTSetup(log2n: vDSP_Length, radix: vDSP.Radix) -> OpaquePointer?
  static func transform(fftSetup: OpaquePointer, log2n: vDSP_Length, source: UnsafePointer<Self.SplitComplex>, destination: UnsafeMutablePointer<Self.SplitComplex>, direction: vDSP.FourierTransformDirection)
  static func transform2D(fftSetup: OpaquePointer, width: Int, height: Int, source: UnsafePointer<Self.SplitComplex>, destination: UnsafeMutablePointer<Self.SplitComplex>, direction: vDSP.FourierTransformDirection)
  static func destroySetup(_ setup: OpaquePointer)
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
protocol vDSP_FourierTransformable {
  associatedtype FFTFunctions : vDSP_FourierTransformFunctions where Self == Self.FFTFunctions.SplitComplex
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
protocol vDSP_IntegerConvertable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
struct vDSP_SplitComplexDouble : vDSP_FourierTransformFunctions {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
struct vDSP_SplitComplexFloat : vDSP_FourierTransformFunctions {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
enum vForce {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vForce {
  @inlinable static func ceil<U>(_ vector: U) -> [Float] where U : AccelerateBuffer, U.Element == Float
  @inlinable static func ceil<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == Float
  @inlinable static func ceil<U>(_ vector: U) -> [Double] where U : AccelerateBuffer, U.Element == Double
  @inlinable static func ceil<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Double, V.Element == Double
  @inlinable static func floor<U>(_ vector: U) -> [Float] where U : AccelerateBuffer, U.Element == Float
  @inlinable static func floor<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == Float
  @inlinable static func floor<U>(_ vector: U) -> [Double] where U : AccelerateBuffer, U.Element == Double
  @inlinable static func floor<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Double, V.Element == Double
  @inlinable static func copysign<U, V>(magnitudes: U, signs: V) -> [Float] where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == Float
  @inlinable static func copysign<T, U, V>(magnitudes: T, signs: U, result: inout V) where T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, T.Element == Float, U.Element == Float, V.Element == Float
  @inlinable static func copysign<U, V>(magnitudes: U, signs: V) -> [Double] where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Double, V.Element == Double
  @inlinable static func copysign<T, U, V>(magnitudes: T, signs: U, result: inout V) where T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, T.Element == Double, U.Element == Double, V.Element == Double
  @inlinable static func truncatingRemainder<U, V>(dividends: U, divisors: V) -> [Float] where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == Float
  @inlinable static func truncatingRemainder<T, U, V>(dividends: T, divisors: U, result: inout V) where T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, T.Element == Float, U.Element == Float, V.Element == Float
  @inlinable static func truncatingRemainder<U, V>(dividends: U, divisors: V) -> [Double] where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Double, V.Element == Double
  @inlinable static func truncatingRemainder<T, U, V>(dividends: T, divisors: U, result: inout V) where T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, T.Element == Double, U.Element == Double, V.Element == Double
  @inlinable static func remainder<U, V>(dividends: U, divisors: V) -> [Float] where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == Float
  @inlinable static func remainder<T, U, V>(dividends: T, divisors: U, result: inout V) where T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, T.Element == Float, U.Element == Float, V.Element == Float
  @inlinable static func remainder<U, V>(dividends: U, divisors: V) -> [Double] where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Double, V.Element == Double
  @inlinable static func remainder<T, U, V>(dividends: T, divisors: U, result: inout V) where T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, T.Element == Double, U.Element == Double, V.Element == Double
  @inlinable static func trunc<U>(_ vector: U) -> [Float] where U : AccelerateBuffer, U.Element == Float
  @inlinable static func trunc<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == Float
  @inlinable static func trunc<U>(_ vector: U) -> [Double] where U : AccelerateBuffer, U.Element == Double
  @inlinable static func trunc<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Double, V.Element == Double
  @inlinable static func nearestInteger<U>(_ vector: U) -> [Float] where U : AccelerateBuffer, U.Element == Float
  @inlinable static func nearestInteger<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == Float
  @inlinable static func nearestInteger<U>(_ vector: U) -> [Double] where U : AccelerateBuffer, U.Element == Double
  @inlinable static func nearestInteger<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Double, V.Element == Double
  @inlinable static func rsqrt<U>(_ vector: U) -> [Float] where U : AccelerateBuffer, U.Element == Float
  @inlinable static func rsqrt<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == Float
  @inlinable static func rsqrt<U>(_ vector: U) -> [Double] where U : AccelerateBuffer, U.Element == Double
  @inlinable static func rsqrt<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Double, V.Element == Double
  @inlinable static func sqrt<U>(_ vector: U) -> [Float] where U : AccelerateBuffer, U.Element == Float
  @inlinable static func sqrt<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == Float
  @inlinable static func sqrt<U>(_ vector: U) -> [Double] where U : AccelerateBuffer, U.Element == Double
  @inlinable static func sqrt<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Double, V.Element == Double
  @inlinable static func reciprocal<U>(_ vector: U) -> [Float] where U : AccelerateBuffer, U.Element == Float
  @inlinable static func reciprocal<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == Float
  @inlinable static func reciprocal<U>(_ vector: U) -> [Double] where U : AccelerateBuffer, U.Element == Double
  @inlinable static func reciprocal<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Double, V.Element == Double
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vForce {
  @inlinable static func exp<U>(_ vector: U) -> [Float] where U : AccelerateBuffer, U.Element == Float
  @inlinable static func exp<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == Float
  @inlinable static func expm1<U>(_ vector: U) -> [Float] where U : AccelerateBuffer, U.Element == Float
  @inlinable static func expm1<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == Float
  @inlinable static func exp2<U>(_ vector: U) -> [Float] where U : AccelerateBuffer, U.Element == Float
  @inlinable static func exp2<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == Float
  @inlinable static func exp<U>(_ vector: U) -> [Double] where U : AccelerateBuffer, U.Element == Double
  @inlinable static func exp<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Double, V.Element == Double
  @inlinable static func expm1<U>(_ vector: U) -> [Double] where U : AccelerateBuffer, U.Element == Double
  @inlinable static func expm1<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Double, V.Element == Double
  @inlinable static func exp2<U>(_ vector: U) -> [Double] where U : AccelerateBuffer, U.Element == Double
  @inlinable static func exp2<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Double, V.Element == Double
  @inlinable static func log2<U>(_ vector: U) -> [Float] where U : AccelerateBuffer, U.Element == Float
  @inlinable static func log2<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == Float
  @inlinable static func log10<U>(_ vector: U) -> [Float] where U : AccelerateBuffer, U.Element == Float
  @inlinable static func log10<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == Float
  @inlinable static func log2<U>(_ vector: U) -> [Double] where U : AccelerateBuffer, U.Element == Double
  @inlinable static func log2<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Double, V.Element == Double
  @inlinable static func log10<U>(_ vector: U) -> [Double] where U : AccelerateBuffer, U.Element == Double
  @inlinable static func log10<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Double, V.Element == Double
  @inlinable static func logb<U>(_ vector: U) -> [Float] where U : AccelerateBuffer, U.Element == Float
  @inlinable static func logb<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == Float
  @inlinable static func logb<U>(_ vector: U) -> [Double] where U : AccelerateBuffer, U.Element == Double
  @inlinable static func logb<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Double, V.Element == Double
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vForce {
  @inlinable static func pow<U, V>(bases: U, exponents: V) -> [Float] where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == Float
  @inlinable static func pow<T, U, V>(bases: T, exponents: U, result: inout V) where T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, T.Element == Float, U.Element == Float, V.Element == Float
  @inlinable static func pow<U, V>(bases: U, exponents: V) -> [Double] where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Double, V.Element == Double
  @inlinable static func pow<T, U, V>(bases: T, exponents: U, result: inout V) where T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, T.Element == Double, U.Element == Double, V.Element == Double
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vForce {
  @inlinable static func sin<U>(_ vector: U) -> [Float] where U : AccelerateBuffer, U.Element == Float
  @inlinable static func sin<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == Float
  @inlinable static func sin<U>(_ vector: U) -> [Double] where U : AccelerateBuffer, U.Element == Double
  @inlinable static func sin<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Double, V.Element == Double
  @inlinable static func sinPi<U>(_ vector: U) -> [Float] where U : AccelerateBuffer, U.Element == Float
  @inlinable static func sinPi<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == Float
  @inlinable static func sinPi<U>(_ vector: U) -> [Double] where U : AccelerateBuffer, U.Element == Double
  @inlinable static func sinPi<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Double, V.Element == Double
  @inlinable static func cos<U>(_ vector: U) -> [Float] where U : AccelerateBuffer, U.Element == Float
  @inlinable static func cos<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == Float
  @inlinable static func cos<U>(_ vector: U) -> [Double] where U : AccelerateBuffer, U.Element == Double
  @inlinable static func cos<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Double, V.Element == Double
  @inlinable static func cosPi<U>(_ vector: U) -> [Float] where U : AccelerateBuffer, U.Element == Float
  @inlinable static func cosPi<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == Float
  @inlinable static func cosPi<U>(_ vector: U) -> [Double] where U : AccelerateBuffer, U.Element == Double
  @inlinable static func cosPi<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Double, V.Element == Double
  @inlinable static func sincos<T, U, V>(_ vector: T, sinResult: inout U, cosResult: inout V) where T : AccelerateBuffer, U : AccelerateMutableBuffer, V : AccelerateMutableBuffer, T.Element == Float, U.Element == Float, V.Element == Float
  @inlinable static func sincos<T, U, V>(_ vector: T, sinResult: inout U, cosResult: inout V) where T : AccelerateBuffer, U : AccelerateMutableBuffer, V : AccelerateMutableBuffer, T.Element == Double, U.Element == Double, V.Element == Double
  @inlinable static func tan<U>(_ vector: U) -> [Float] where U : AccelerateBuffer, U.Element == Float
  @inlinable static func tan<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == Float
  @inlinable static func tan<U>(_ vector: U) -> [Double] where U : AccelerateBuffer, U.Element == Double
  @inlinable static func tan<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Double, V.Element == Double
  @inlinable static func tanPi<U>(_ vector: U) -> [Float] where U : AccelerateBuffer, U.Element == Float
  @inlinable static func tanPi<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == Float
  @inlinable static func tanPi<U>(_ vector: U) -> [Double] where U : AccelerateBuffer, U.Element == Double
  @inlinable static func tanPi<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Double, V.Element == Double
  @inlinable static func asin<U>(_ vector: U) -> [Float] where U : AccelerateBuffer, U.Element == Float
  @inlinable static func asin<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == Float
  @inlinable static func asin<U>(_ vector: U) -> [Double] where U : AccelerateBuffer, U.Element == Double
  @inlinable static func asin<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Double, V.Element == Double
  @inlinable static func acos<U>(_ vector: U) -> [Float] where U : AccelerateBuffer, U.Element == Float
  @inlinable static func acos<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == Float
  @inlinable static func acos<U>(_ vector: U) -> [Double] where U : AccelerateBuffer, U.Element == Double
  @inlinable static func acos<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Double, V.Element == Double
  @inlinable static func atan<U>(_ vector: U) -> [Float] where U : AccelerateBuffer, U.Element == Float
  @inlinable static func atan<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == Float
  @inlinable static func atan<U>(_ vector: U) -> [Double] where U : AccelerateBuffer, U.Element == Double
  @inlinable static func atan<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Double, V.Element == Double
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vForce {
  @inlinable static func sinh<U>(_ vector: U) -> [Float] where U : AccelerateBuffer, U.Element == Float
  @inlinable static func sinh<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == Float
  @inlinable static func sinh<U>(_ vector: U) -> [Double] where U : AccelerateBuffer, U.Element == Double
  @inlinable static func sinh<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Double, V.Element == Double
  @inlinable static func cosh<U>(_ vector: U) -> [Float] where U : AccelerateBuffer, U.Element == Float
  @inlinable static func cosh<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == Float
  @inlinable static func cosh<U>(_ vector: U) -> [Double] where U : AccelerateBuffer, U.Element == Double
  @inlinable static func cosh<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Double, V.Element == Double
  @inlinable static func tanh<U>(_ vector: U) -> [Float] where U : AccelerateBuffer, U.Element == Float
  @inlinable static func tanh<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == Float
  @inlinable static func tanh<U>(_ vector: U) -> [Double] where U : AccelerateBuffer, U.Element == Double
  @inlinable static func tanh<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Double, V.Element == Double
  @inlinable static func asinh<U>(_ vector: U) -> [Float] where U : AccelerateBuffer, U.Element == Float
  @inlinable static func asinh<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == Float
  @inlinable static func asinh<U>(_ vector: U) -> [Double] where U : AccelerateBuffer, U.Element == Double
  @inlinable static func asinh<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Double, V.Element == Double
  @inlinable static func acosh<U>(_ vector: U) -> [Float] where U : AccelerateBuffer, U.Element == Float
  @inlinable static func acosh<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == Float
  @inlinable static func acosh<U>(_ vector: U) -> [Double] where U : AccelerateBuffer, U.Element == Double
  @inlinable static func acosh<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Double, V.Element == Double
  @inlinable static func atanh<U>(_ vector: U) -> [Float] where U : AccelerateBuffer, U.Element == Float
  @inlinable static func atanh<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == Float
  @inlinable static func atanh<U>(_ vector: U) -> [Double] where U : AccelerateBuffer, U.Element == Double
  @inlinable static func atanh<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Double, V.Element == Double
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension vForce {
  @inlinable static func log<U>(_ vector: U) -> [Float] where U : AccelerateBuffer, U.Element == Float
  @inlinable static func log<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == Float
  @inlinable static func log<U>(_ vector: U) -> [Double] where U : AccelerateBuffer, U.Element == Double
  @inlinable static func log<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Double, V.Element == Double
  @inlinable static func log1p<U>(_ vector: U) -> [Float] where U : AccelerateBuffer, U.Element == Float
  @inlinable static func log1p<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == Float
  @inlinable static func log1p<U>(_ vector: U) -> [Double] where U : AccelerateBuffer, U.Element == Double
  @inlinable static func log1p<U, V>(_ vector: U, result: inout V) where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Double, V.Element == Double
  @inlinable static func atan2<T, U, V>(x: T, y: U, result: inout V) where T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, T.Element == Float, U.Element == Float, V.Element == Float
  @inlinable static func atan2<U, V>(x: U, y: V) -> [Float] where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Float, V.Element == Float
  @inlinable static func atan2<T, U, V>(x: T, y: U, result: inout V) where T : AccelerateBuffer, U : AccelerateBuffer, V : AccelerateMutableBuffer, T.Element == Double, U.Element == Double, V.Element == Double
  @inlinable static func atan2<U, V>(x: U, y: V) -> [Double] where U : AccelerateBuffer, V : AccelerateMutableBuffer, U.Element == Double, V.Element == Double
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
enum vImage {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vImage {
  struct Options : OptionSet {
    static let noFlags: vImage.Options
    static let leaveAlphaUnchanged: vImage.Options
    static let copyInPlace: vImage.Options
    static let backgroundColorFill: vImage.Options
    static let imageExtend: vImage.Options
    static let doNotTile: vImage.Options
    static let highQualityResampling: vImage.Options
    static let truncateKernel: vImage.Options
    static let getTempBufferSize: vImage.Options
    static let printDiagnosticsToConsole: vImage.Options
    static let noAllocate: vImage.Options
    static let hdrContent: vImage.Options
    static let doNotClamp: vImage.Options
    var flags: vImage_Flags { get }
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vImage {
  enum Error : Int, Error {
    case noError
    case roiLargerThanInputBuffer
    case invalidKernelSize
    case invalidEdgeStyle
    case invalidOffset_X
    case invalidOffset_Y
    case memoryAllocationError
    case nullPointerArgument
    case invalidParameter
    case bufferSizeMismatch
    case unknownFlagsBit
    case internalError
    case invalidRowBytes
    case invalidImageFormat
    case colorSyncIsAbsent
    case outOfPlaceOperationRequired
    case invalidImageObject
    case invalidCVImageFormat
    case unsupportedConversion
    case coreVideoIsAbsent
    init(vImageError: vImage_Error)
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vImage {
  enum BufferType : Int {
    case alpha
    case coreGraphics
    case cmykBlack
    case cmykCyan
    case cmykMagenta
    case cmykYellow
    case YCbCr
    case Cb
    case Cr
    case chroma
    case chunky
    case indexed
    case labA
    case labB
    case labL
    case luminance
    case monochrome
    case rgbRed
    case rgbGreen
    case rgbBlue
    case xyzX
    case xyzY
    case xyzZ
    init?(bufferTypeCode: Int, model: CGColorSpaceModel?)
    var bufferTypeCode: vImageBufferTypeCode { get }
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vImage.Error : Equatable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vImage.Error : Hashable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vImage.Error : RawRepresentable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vImage.BufferType : Equatable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vImage.BufferType : Hashable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vImage.BufferType : RawRepresentable {
}

extension UInt8 : vDSP_IntegerConvertable {
}

extension UInt16 : vDSP_IntegerConvertable {
}

extension UInt32 : vDSP_IntegerConvertable {
}

extension Int8 : vDSP_IntegerConvertable {
}

extension Int16 : vDSP_IntegerConvertable {
}

extension Int32 : vDSP_IntegerConvertable {
}

extension Float : vDSP_FloatingPointConvertable {
}

extension Double : vDSP_FloatingPointConvertable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Float : vDSP_FloatingPointDiscreteFourierTransformable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Double : vDSP_FloatingPointDiscreteFourierTransformable {
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension vImage_Buffer {
  init(size: CGSize, bitsPerPixel: UInt32) throws
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vImage_Buffer {
  var size: CGSize { get }
  static func preferredAlignmentAndRowBytes(width: Int, height: Int, bitsPerPixel: UInt32) throws -> (alignment: Int, rowBytes: Int)
  init(width: Int, height: Int, bitsPerPixel: UInt32) throws
  func free()
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vImage_Buffer {
  init(cgImage: CGImage, flags options: vImage.Options = .noFlags) throws
  init(cgImage: CGImage, format: vImage_CGImageFormat, flags options: vImage.Options = .noFlags) throws
  func createCGImage(format: vImage_CGImageFormat, flags options: vImage.Options = .noFlags) throws -> CGImage
  func copy(destinationBuffer: inout vImage_Buffer, pixelSize: Int, flags options: vImage.Options = .noFlags) throws
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension DSPSplitComplex : vDSP_FourierTransformable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension DSPDoubleSplitComplex : vDSP_FourierTransformable {
}

@available(macOS, deprecated, introduced: 10.15, message: "Use the `withUnsafeMutableBufferPointer` method on the real and imaginary arrays to create `DSPSplitComplex` for a defined scope.")
@available(iOS, deprecated, introduced: 13.0, message: "Use the `withUnsafeMutableBufferPointer` method on the real and imaginary arrays to create `DSPSplitComplex` for a defined scope.")
@available(watchOS, deprecated, introduced: 6.0, message: "Use the `withUnsafeMutableBufferPointer` method on the real and imaginary arrays to create `DSPSplitComplex` for a defined scope.")
@available(tvOS, deprecated, introduced: 13.0, message: "Use the `withUnsafeMutableBufferPointer` method on the real and imaginary arrays to create `DSPSplitComplex` for a defined scope.")
@available(*, deprecated, message: "Use the `withUnsafeMutableBufferPointer` method on the real and imaginary arrays to create `DSPSplitComplex` for a defined scope.")
extension DSPSplitComplex {
  init(fromInputArray inputArray: [Float], realParts: inout [Float], imaginaryParts: inout [Float])
}

@available(macOS, deprecated, introduced: 10.15, message: "Use the `withUnsafeMutableBufferPointer` method on the real and imaginary arrays to create `DSPSplitComplex` for a defined scope.")
@available(iOS, deprecated, introduced: 13.0, message: "Use the `withUnsafeMutableBufferPointer` method on the real and imaginary arrays to create `DSPSplitComplex` for a defined scope.")
@available(watchOS, deprecated, introduced: 6.0, message: "Use the `withUnsafeMutableBufferPointer` method on the real and imaginary arrays to create `DSPSplitComplex` for a defined scope.")
@available(tvOS, deprecated, introduced: 13.0, message: "Use the `withUnsafeMutableBufferPointer` method on the real and imaginary arrays to create `DSPSplitComplex` for a defined scope.")
@available(*, deprecated, message: "Use the `withUnsafeMutableBufferPointer` method on the real and imaginary arrays to create `DSPSplitComplex` for a defined scope.")
extension DSPDoubleSplitComplex {
  init(fromInputArray inputArray: [Double], realParts: inout [Double], imaginaryParts: inout [Double])
}

extension Array where Element == Float {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  init(fromSplitComplex splitComplex: DSPSplitComplex, scale: Float, count: Int)
}

extension Array where Element == Double {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  init(fromSplitComplex splitComplex: DSPDoubleSplitComplex, scale: Double, count: Int)
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vImageConverter {
  func sourceBuffers(colorSpace: CGColorSpace) -> [vImage.BufferType?]
  func destinationBuffers(colorSpace: CGColorSpace) -> [vImage.BufferType?]
  var sourceBufferCount: Int { get }
  var destinationBufferCount: Int { get }
  func mustOperateOutOfPlace(source: vImage_Buffer, destination: vImage_Buffer, flags options: vImage.Options = .noFlags) throws -> Bool
  static func make(sourceFormat: vImage_CGImageFormat, destinationFormat: vImage_CGImageFormat, flags options: vImage.Options = .noFlags) throws -> vImageConverter
  static func make(sourceFormat: vImage_CGImageFormat, destinationFormat: vImageCVImageFormat, flags options: vImage.Options = .noFlags) throws -> vImageConverter
  static func make(sourceFormat: vImageCVImageFormat, destinationFormat: vImage_CGImageFormat, flags options: vImage.Options = .noFlags) throws -> vImageConverter
  func convert(source: vImage_Buffer, destination: inout vImage_Buffer, flags options: vImage.Options = .noFlags) throws
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Float : vDSP_FloatingPointBiquadFilterable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Double : vDSP_FloatingPointBiquadFilterable {
}

@available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 3.0, *)
extension BNNSDataType {
  static var float16: BNNSDataType { get }
  static var float: BNNSDataType { get }
  static var int8: BNNSDataType { get }
  static var int16: BNNSDataType { get }
  static var int32: BNNSDataType { get }
  static var indexed8: BNNSDataType { get }
}

@available(macOS 10.13, iOS 11.0, tvOS 11.0, watchOS 4.0, *)
extension BNNSDataType {
  static var uint8: BNNSDataType { get }
  static var uint16: BNNSDataType { get }
  static var uint32: BNNSDataType { get }
}

@available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 3.0, *)
extension BNNSPoolingFunction {
  static var max: BNNSPoolingFunction { get }
  static var average: BNNSPoolingFunction { get }
}

@available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 3.0, *)
extension BNNSActivationFunction {
  static var identity: BNNSActivationFunction { get }
  static var rectifiedLinear: BNNSActivationFunction { get }
  static var leakyRectifiedLinear: BNNSActivationFunction { get }
  static var sigmoid: BNNSActivationFunction { get }
  static var tanh: BNNSActivationFunction { get }
  static var scaledTanh: BNNSActivationFunction { get }
  static var abs: BNNSActivationFunction { get }
}

@available(macOS 10.13, iOS 11.0, tvOS 11.0, watchOS 4.0, *)
extension BNNSActivationFunction {
  static var linear: BNNSActivationFunction { get }
  static var clamp: BNNSActivationFunction { get }
  static var integerLinearSaturate: BNNSActivationFunction { get }
  static var integerLinearSaturatePerChannel: BNNSActivationFunction { get }
  static var softmax: BNNSActivationFunction { get }
}

@available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 3.0, *)
extension BNNSFlags {
  static var useClientPointer: BNNSFlags { get }
}

@available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 3.0, *)
extension BNNSImageStackDescriptor {
  init(width: Int, height: Int, channels: Int, row_stride: Int, image_stride: Int, data_type: BNNSDataType)
}

@available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 3.0, *)
extension BNNSVectorDescriptor {
  init(size: Int, data_type: BNNSDataType)
}

@available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 3.0, *)
extension BNNSLayerData {
  init(data: UnsafeRawPointer?, data_type: BNNSDataType, data_scale: Float = 1, data_bias: Float = 0)
  static var zero: BNNSLayerData { get }
  static func indexed8(data: UnsafePointer<Int8>?, data_table: UnsafePointer<Float>) -> BNNSLayerData
}

@available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 3.0, *)
extension BNNSActivation {
  init(function: BNNSActivationFunction, alpha: Float = .nan, beta: Float = .nan)
  static var identity: BNNSActivation { get }
}

@available(macOS 10.13, iOS 11.0, tvOS 11.0, watchOS 4.0, *)
extension BNNSActivation {
  static func integerLinearSaturate(scale: Int32 = 1, offset: Int32 = 0, shift: Int32 = 0) -> BNNSActivation
  static func integerLinearSaturatePerChannel(scale: UnsafePointer<Int32>, offset: UnsafePointer<Int32>, shift: UnsafePointer<Int32>) -> BNNSActivation
}

@available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 3.0, *)
extension BNNSConvolutionLayerParameters {
  init(x_stride: Int, y_stride: Int, x_padding: Int, y_padding: Int, k_width: Int, k_height: Int, in_channels: Int, out_channels: Int, weights: BNNSLayerData)
}

@available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 3.0, *)
extension BNNSPoolingLayerParameters {
  init(x_stride: Int, y_stride: Int, x_padding: Int, y_padding: Int, k_width: Int, k_height: Int, in_channels: Int, out_channels: Int, pooling_function: BNNSPoolingFunction)
}

@available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 3.0, *)
extension BNNSFullyConnectedLayerParameters {
  init(in_size: Int, out_size: Int, weights: BNNSLayerData)
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Array : AccelerateMutableBuffer {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension ContiguousArray : AccelerateMutableBuffer {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension ArraySlice : AccelerateMutableBuffer {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension UnsafeBufferPointer : AccelerateBuffer {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension UnsafeMutableBufferPointer : AccelerateMutableBuffer {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Slice : AccelerateBuffer where Base : AccelerateBuffer {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Slice : AccelerateMutableBuffer where Base : AccelerateMutableBuffer, Base : MutableCollection {
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension Float : BNNSScalar {
}

@available(iOS 14, tvOS 14, watchOS 7, *)
@available(macOS, unavailable)
@available(macCatalyst, unavailable)
extension Float16 : BNNSScalar {
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension Int8 : BNNSScalar {
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension Int16 : BNNSScalar {
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension Int32 : BNNSScalar {
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension UInt8 : BNNSScalar {
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension UInt16 : BNNSScalar {
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension UInt32 : BNNSScalar {
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension Bool : BNNSScalar {
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, watchOS 7.0, *)
extension BNNSNDArrayDescriptor {
  init(dataType: BNNSDataType, shape: BNNS.Shape)
  init?(data: UnsafeMutableRawBufferPointer, scalarType: BNNSScalar.Type, shape: BNNS.Shape)
  init?<T>(data: UnsafeMutableBufferPointer<T>, shape: BNNS.Shape) where T : BNNSScalar
  static func allocateUninitialized(scalarType: BNNSScalar.Type, shape: BNNS.Shape, batchSize: Int = 1) -> BNNSNDArrayDescriptor
  static func allocate<C>(initializingFrom source: C, shape: BNNS.Shape, batchSize: Int = 1) -> BNNSNDArrayDescriptor where C : Collection, C.Element : BNNSScalar
  static func allocate<Scalar>(randomIn range: ClosedRange<Scalar>, shape: BNNS.Shape, batchSize: Int = 1) -> BNNSNDArrayDescriptor where Scalar : BNNSScalar, Scalar : FixedWidthInteger
  static func allocate<Scalar>(randomIn range: ClosedRange<Scalar>, shape: BNNS.Shape, batchSize: Int = 1) -> BNNSNDArrayDescriptor where Scalar : BNNSScalar, Scalar : BinaryFloatingPoint, Scalar.RawSignificand : FixedWidthInteger
  static func allocate<Scalar, Generator>(randomIn range: ClosedRange<Scalar>, using generator: inout Generator, shape: BNNS.Shape, batchSize: Int = 1) -> BNNSNDArrayDescriptor where Scalar : BNNSScalar, Scalar : FixedWidthInteger, Generator : RandomNumberGenerator
  static func allocate<Scalar, Generator>(randomIn range: ClosedRange<Scalar>, using generator: inout Generator, shape: BNNS.Shape, batchSize: Int = 1) -> BNNSNDArrayDescriptor where Scalar : BNNSScalar, Scalar : BinaryFloatingPoint, Generator : RandomNumberGenerator, Scalar.RawSignificand : FixedWidthInteger
  static func allocate<T>(repeating repeatedValue: T, shape: BNNS.Shape, batchSize: Int = 1) -> BNNSNDArrayDescriptor where T : BNNSScalar
  func makeArray<T>(of scalarType: T.Type, batchSize: Int = 1) -> [T]?
  var shape: BNNS.Shape { get }
  func deallocate()
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vImage_CGImageFormat {
  init?(cgImage: CGImage)
  init?(bitsPerComponent: Int, bitsPerPixel: Int, colorSpace: CGColorSpace, bitmapInfo: CGBitmapInfo, renderingIntent: CGColorRenderingIntent = .defaultIntent)
  var componentCount: Int { get }
}

extension Float : vDSP_FloatingPointGeneratable {
}

extension Double : vDSP_FloatingPointGeneratable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vImageCVImageFormat {
  static func make(format: vImageCVImageFormat.Format, matrix: vImage_ARGBToYpCbCrMatrix, chromaSiting: vImageCVImageFormat.ChromaSiting, colorSpace: CGColorSpace, alphaIsOpaqueHint: Bool) -> vImageCVImageFormat?
  static func make(buffer: CVPixelBuffer) -> vImageCVImageFormat?
  var alphaIsOpaqueHint: Bool
  var channelCount: UInt32 { get }
  var channels: [vImage.BufferType] { get }
  func channelDescription(bufferType: vImage.BufferType) -> vImageChannelDescription?
  var chromaSiting: vImageCVImageFormat.ChromaSiting?
  var colorSpace: CGColorSpace?
  var formatCode: UInt32 { get }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension vImageCVImageFormat {
  enum Format {
    case format1Monochrome
    case format2Indexed
    case format4Indexed
    case format8Indexed
    case format1IndexedGray_WhiteIsZero
    case format2IndexedGray_WhiteIsZero
    case format4IndexedGray_WhiteIsZero
    case format8IndexedGray_WhiteIsZero
    case format16BE555
    case format16LE555
    case format16LE5551
    case format16BE565
    case format16LE565
    case format24RGB
    case format24BGR
    case format32ARGB
    case format32BGRA
    case format32ABGR
    case format32RGBA
    case format64ARGB
    case format48RGB
    case format32AlphaGray
    case format16Gray
    case format30RGB
    case format422YpCbCr8
    case format4444YpCbCrA8
    case format4444YpCbCrA8R
    case format4444AYpCbCr8
    case format4444AYpCbCr16
    case format444YpCbCr8
    case format422YpCbCr16
    case format422YpCbCr10
    case format444YpCbCr10
    case format420YpCbCr8Planar
    case format420YpCbCr8PlanarFullRange
    case format422YpCbCr_4A_8BiPlanar
    case format420YpCbCr8BiPlanarVideoRange
    case format420YpCbCr8BiPlanarFullRange
    case format422YpCbCr8_yuvs
    case format422YpCbCr8FullRange
    case formatOneComponent8
    case formatTwoComponent8
    case format30RGBLEPackedWideGamut
    case formatARGB2101010LEPacked
    case formatOneComponent16Half
    case formatOneComponent32Float
    case formatTwoComponent16Half
    case formatTwoComponent32Float
    case format64RGBAHalf
    case format128RGBAFloat
    case format14Bayer_GRBG
    case format14Bayer_RGGB
    case format14Bayer_BGGR
    case format14Bayer_GBRG
    case formatDisparityFloat16
    case formatDisparityFloat32
    case formatDepthFloat16
    case formatDepthFloat32
    case format420YpCbCr10BiPlanarVideoRange
    case format422YpCbCr10BiPlanarVideoRange
    case format444YpCbCr10BiPlanarVideoRange
    case format420YpCbCr10BiPlanarFullRange
    case format422YpCbCr10BiPlanarFullRange
    case format444YpCbCr10BiPlanarFullRange
  }
  enum ChromaSiting {
    case left
    case center
    case topLeft
    case top
    case bottomLeft
    case bottom
    case dv420
  }
}

@available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 3.0, *)
@available(*, deprecated, renamed: "BNNSDataType.float16")
var BNNSDataTypeFloat16: BNNSDataType

@available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 3.0, *)
@available(*, deprecated, renamed: "BNNSDataType.float")
var BNNSDataTypeFloat32: BNNSDataType

@available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 3.0, *)
@available(*, deprecated, renamed: "BNNSDataType.int8")
var BNNSDataTypeInt8: BNNSDataType

@available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 3.0, *)
@available(*, deprecated, renamed: "BNNSDataType.int16")
var BNNSDataTypeInt16: BNNSDataType

@available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 3.0, *)
@available(*, deprecated, renamed: "BNNSDataType.int32")
var BNNSDataTypeInt32: BNNSDataType

@available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 3.0, *)
@available(*, deprecated, renamed: "BNNSDataType.indexed8")
var BNNSDataTypeIndexed8: BNNSDataType

@available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 3.0, *)
@available(*, deprecated, renamed: "BNNSPoolingFunction.max")
var BNNSPoolingFunctionMax: BNNSPoolingFunction

@available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 3.0, *)
@available(*, deprecated, renamed: "BNNSPoolingFunction.average")
var BNNSPoolingFunctionAverage: BNNSPoolingFunction

@available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 3.0, *)
@available(*, deprecated, renamed: "BNNSActivationFunction.identity")
var BNNSActivationFunctionIdentity: BNNSActivationFunction

@available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 3.0, *)
@available(*, deprecated, renamed: "BNNSActivationFunction.rectifiedLinear")
var BNNSActivationFunctionRectifiedLinear: BNNSActivationFunction

@available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 3.0, *)
@available(*, deprecated, renamed: "BNNSActivationFunction.leakyRectifiedLinear")
var BNNSActivationFunctionLeakyRectifiedLinear: BNNSActivationFunction

@available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 3.0, *)
@available(*, deprecated, renamed: "BNNSActivationFunction.sigmoid")
var BNNSActivationFunctionSigmoid: BNNSActivationFunction

@available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 3.0, *)
@available(*, deprecated, renamed: "BNNSActivationFunction.tanh")
var BNNSActivationFunctionTanh: BNNSActivationFunction

@available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 3.0, *)
@available(*, deprecated, renamed: "BNNSActivationFunction.scaledTanh")
var BNNSActivationFunctionScaledTanh: BNNSActivationFunction

@available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 3.0, *)
@available(*, deprecated, renamed: "BNNSActivationFunction.abs")
var BNNSActivationFunctionAbs: BNNSActivationFunction

@available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 3.0, *)
@available(*, deprecated, renamed: "BNNSFlags.useClientPointer")
var BNNSFlagsUseClientPtr: BNNSFlags

