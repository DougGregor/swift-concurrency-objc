
@available(macOS 11.0, iOS 14, tvOS 14, *)
enum MLCPaddingPolicy {
  case same
  case valid
  case sized(y: Int, x: Int)
  @inlinable var objcPolicy: __MLCPaddingPolicy { get }
  @inlinable var objcSizes: [NSNumber]? { get }
  @inlinable var debugDescription: String { get }
}

@available(macOS 11.0, iOS 14, tvOS 14, *)
enum MLCPoolingType {
  case max
  case average(countIncludesPadding: Bool = false)
  case l2Norm
  @inlinable var objcPoolingType: __MLCPoolingType { get }
  @inlinable var debugDescription: String { get }
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, *)
extension MLCEmbeddingDescriptor {
  @inlinable var embeddingCount: Int { get }
  @inlinable var embeddingDimension: Int { get }
  @inlinable var paddingIndex: Int? { get }
  @inlinable var maximumNorm: Float? { get }
  @inlinable var pNorm: Float? { get }
  @inlinable convenience init?(embeddingCount: Int, embeddingDimension: Int)
  @inlinable convenience init?(embeddingCount: Int, embeddingDimension: Int, paddingIndex: Int?, maximumNorm: Float?, pNorm: Float?, scalesGradientByFrequency: Bool)
}

@available(macOS 11.0, iOS 14, tvOS 14, *)
extension MLCPaddingLayer {
  @inlinable convenience init(reflectionPadding: [Int])
  @inlinable convenience init(symmetricPadding: [Int])
  @inlinable convenience init(zeroPadding: [Int])
  @inlinable convenience init(constantPadding: [Int], constantValue: Float)
}

@available(macOS 11.0, iOS 14, tvOS 14, *)
extension MLCLayerNormalizationLayer {
  @inlinable var normalizedShape: [Int] { get }
  @inlinable convenience init?(normalizedShape: [Int], beta: MLCTensor, gamma: MLCTensor, varianceEpsilon: Float)
}

@available(macOS 11.0, iOS 14, tvOS 14, *)
extension MLCSplitLayer {
  @inlinable var splitSectionLengths: [Int]? { get }
  @inlinable convenience init(splitSectionLengths: [Int], dimension: Int)
}

@available(macOS 11.0, iOS 14, tvOS 14, *)
extension MLCUpsampleLayer {
  @inlinable var shape: [Int] { get }
  @inlinable convenience init?(shape: [Int])
  @inlinable convenience init?(shape: [Int], sampleMode: MLCSampleMode, alignsCorners: Bool)
}

@available(macOS 11.0, iOS 14, tvOS 14, *)
extension MLCSliceLayer {
  @inlinable var start: [Int] { get }
  @inlinable var end: [Int] { get }
  @inlinable var stride: [Int]? { get }
  @inlinable convenience init?(start: [Int], end: [Int], stride: [Int]?)
}

@available(macOS 11.0, iOS 14, tvOS 14, *)
extension MLCConvolutionDescriptor {
  @inlinable var kernelSizes: (height: Int, width: Int) { get }
  @inlinable var strides: (y: Int, x: Int) { get }
  @inlinable var dilationRates: (y: Int, x: Int) { get }
  @inlinable var paddingPolicy: MLCPaddingPolicy { get }
  @inlinable convenience init(type: MLCConvolutionType = .standard, kernelSizes: (height: Int, width: Int), inputFeatureChannelCount: Int, outputFeatureChannelCount: Int, groupCount: Int = 1, strides: (y: Int, x: Int) = (1, 1), dilationRates: (y: Int, x: Int) = (1, 1), paddingPolicy: MLCPaddingPolicy = .same)
}

@available(macOS 11.0, iOS 14, tvOS 14, *)
extension MLCTransposeLayer {
  @inlinable var dimensions: [Int] { get }
  @inlinable convenience init?(dimensions: [Int])
}

@available(macOS 11.0, iOS 14.0, tvOS 14.0, *)
extension MLCTensor {
  @inlinable convenience init(shape: [Int])
  @inlinable convenience init(shape: [Int], randomInitializerType: MLCRandomInitializerType)
  @inlinable convenience init(shape: [Int], dataType: MLCDataType)
  @inlinable convenience init(shape: [Int], data: MLCTensorData, dataType: MLCDataType)
  @inlinable convenience init(shape: [Int], fillWithData fillData: NSNumber, dataType: MLCDataType)
  @inlinable convenience init?(sequenceLengths: [Int], sortedSequences: Bool, featureChannelCount: Int, batchSize: Int, randomInitializerType: MLCRandomInitializerType)
  @inlinable convenience init?(sequenceLengths: [Int], sortedSequences: Bool, featureChannelCount: Int, batchSize: Int, data: MLCTensorData? = nil)
}

@available(macOS 11.0, iOS 14, tvOS 14, *)
extension MLCGraph {
  @inlinable func split(source: MLCTensor, splitSectionLengths: [Int], dimension: Int) -> [MLCTensor]?
  @inlinable func reshape(shape: [Int], source: MLCTensor) -> MLCTensor?
  @inlinable func transpose(dimensions: [Int], source: MLCTensor) -> MLCTensor?
}

@available(macOS 11.0, iOS 14, tvOS 14, *)
extension MLCReshapeLayer {
  @inlinable convenience init?(shape: [Int])
}

@available(macOS 11.0, iOS 14, tvOS 14, *)
extension MLCTensorDescriptor {
  @inlinable var shape: [Int] { get }
  @inlinable var stride: [Int] { get }
  @inlinable var sequenceLengths: [Int]? { get }
  @inlinable var batchSizePerSequenceStep: [Int]? { get }
  @inlinable convenience init?(shape: [Int], dataType: MLCDataType)
  @inlinable convenience init?(shape: [Int], sequenceLengths: [Int], sortedSequences: Bool, dataType: MLCDataType)
}

@available(macOS 11.0, iOS 14, tvOS 14, *)
extension MLCPoolingDescriptor {
  @inlinable var poolingType: MLCPoolingType { get }
  @inlinable var kernelSizes: (height: Int, width: Int) { get }
  @inlinable var strides: (y: Int, x: Int) { get }
  @inlinable var dilationRates: (y: Int, x: Int) { get }
  @inlinable var paddingPolicy: MLCPaddingPolicy { get }
  @inlinable convenience init(type: MLCPoolingType, kernelSizes: (height: Int, width: Int), strides: (y: Int, x: Int) = (y: 1, x: 1), dilationRates: (y: Int, x: Int) = (y: 1, x: 1), paddingPolicy: MLCPaddingPolicy = .same)
}

