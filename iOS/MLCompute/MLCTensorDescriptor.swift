
@available(iOS 14.0, *)
class MLCTensorDescriptor : NSObject, NSCopying {
  var dataType: MLCDataType { get }
  var dimensionCount: Int { get }
  var __shape: [NSNumber] { get }
  var __stride: [NSNumber] { get }
  var tensorAllocationSizeInBytes: Int { get }
  var __sequenceLengths: [NSNumber]? { get }
  var sortedSequences: Bool { get }
  var __batchSizePerSequenceStep: [NSNumber]? { get }
  class var maxTensorDimensions: Int { get }
  convenience init?(__shape shape: [NSNumber], dataType: MLCDataType)
  convenience init?(__shape shape: [NSNumber], sequenceLengths: [NSNumber], sortedSequences: Bool, dataType: MLCDataType)
  convenience init?(width: Int, height: Int, featureChannelCount featureChannels: Int, batchSize: Int)
  convenience init?(width: Int, height: Int, featureChannelCount: Int, batchSize: Int, dataType: MLCDataType)
  convenience init?(convolutionWeightsWithWidth width: Int, height: Int, inputFeatureChannelCount: Int, outputFeatureChannelCount: Int, dataType: MLCDataType)
  convenience init?(convolutionWeightsWithInputFeatureChannelCount inputFeatureChannelCount: Int, outputFeatureChannelCount: Int, dataType: MLCDataType)
  convenience init?(convolutionBiasesWithFeatureChannelCount featureChannelCount: Int, dataType: MLCDataType)
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
