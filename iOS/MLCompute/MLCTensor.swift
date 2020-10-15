
@available(iOS 14.0, *)
class MLCTensor : NSObject, NSCopying {
  var tensorID: Int { get }
  @NSCopying var descriptor: MLCTensorDescriptor { get }
  var data: Data? { get }
  var label: String
  var device: MLCDevice? { get }
  var optimizerData: [MLCTensorData] { get }
  convenience init(descriptor tensorDescriptor: MLCTensorDescriptor)
  convenience init(descriptor tensorDescriptor: MLCTensorDescriptor, randomInitializerType: MLCRandomInitializerType)
  convenience init(descriptor tensorDescriptor: MLCTensorDescriptor, fillWithData fillData: NSNumber)
  convenience init(descriptor tensorDescriptor: MLCTensorDescriptor, data: MLCTensorData)
  convenience init(__shape shape: [NSNumber])
  convenience init(__shape shape: [NSNumber], randomInitializerType: MLCRandomInitializerType)
  convenience init(__shape shape: [NSNumber], dataType: MLCDataType)
  convenience init(__shape shape: [NSNumber], data: MLCTensorData, dataType: MLCDataType)
  convenience init(__shape shape: [NSNumber], fillWithData fillData: NSNumber, dataType: MLCDataType)
  convenience init(width: Int, height: Int, featureChannelCount: Int, batchSize: Int)
  convenience init(width: Int, height: Int, featureChannelCount: Int, batchSize: Int, fillWithData fillData: Float, dataType: MLCDataType)
  convenience init(width: Int, height: Int, featureChannelCount: Int, batchSize: Int, randomInitializerType: MLCRandomInitializerType)
  convenience init(width: Int, height: Int, featureChannelCount: Int, batchSize: Int, data: MLCTensorData)
  convenience init(width: Int, height: Int, featureChannelCount: Int, batchSize: Int, data: MLCTensorData, dataType: MLCDataType)
  convenience init(sequenceLength: Int, featureChannelCount: Int, batchSize: Int)
  convenience init(sequenceLength: Int, featureChannelCount: Int, batchSize: Int, randomInitializerType: MLCRandomInitializerType)
  convenience init(sequenceLength: Int, featureChannelCount: Int, batchSize: Int, data: MLCTensorData?)
  convenience init?(__sequenceLengths sequenceLengths: [NSNumber], sortedSequences: Bool, featureChannelCount: Int, batchSize: Int, randomInitializerType: MLCRandomInitializerType)
  convenience init?(__sequenceLengths sequenceLengths: [NSNumber], sortedSequences: Bool, featureChannelCount: Int, batchSize: Int, data: MLCTensorData?)
  var hasValidNumerics: Bool { get }
  func synchronizeData() -> Bool
  func synchronizeOptimizerData() -> Bool
  func copyDataFromDeviceMemory(toBytes bytes: UnsafeMutableRawPointer, length: Int, synchronizeWithDevice: Bool) -> Bool
  func bindAndWriteData(_ data: MLCTensorData, to device: MLCDevice) -> Bool
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
