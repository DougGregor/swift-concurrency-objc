
@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
struct CMAttachmentBearerAttachments {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  enum Value {
    case shouldNotPropagate(Any)
    case shouldPropagate(Any)
    var value: Any { get }
    var mode: CMAttachmentBearerAttachments.Mode { get }
  }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  enum Mode : CMAttachmentMode {
    case shouldNotPropagate
    case shouldPropagate
  }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  subscript(key: String) -> CMAttachmentBearerAttachments.Value?
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func removeAll()
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var nonPropagated: [String : Any] { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var propagated: [String : Any] { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func merge(_ attachments: [String : Any], mode: CMAttachmentBearerAttachments.Mode)
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension CMAttachmentBearerAttachments {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  subscript(key: CMSampleBuffer.AttachmentKey) -> CMAttachmentBearerAttachments.Value?
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension CMAttachmentBearerAttachments.Mode : Equatable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension CMAttachmentBearerAttachments.Mode : Hashable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension CMAttachmentBearerAttachments.Mode : RawRepresentable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
protocol CMAttachmentBearerProtocol {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var attachments: CMAttachmentBearerAttachments { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func propagateAttachments<T>(to destination: T) where T : CMAttachmentBearerProtocol
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
protocol CMBlockBufferProtocol {
  var owner: CMBlockBuffer { get }
  var startIndex: Int { get }
  var endIndex: Int { get }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension CMBlockBufferProtocol {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  subscript(bounds: ClosedRange<Int>) -> CMBlockBuffer.Slice { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  subscript(bounds: Range<Int>) -> CMBlockBuffer.Slice { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  subscript(bounds: PartialRangeUpTo<Int>) -> CMBlockBuffer.Slice { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  subscript(bounds: PartialRangeThrough<Int>) -> CMBlockBuffer.Slice { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  subscript(bounds: PartialRangeFrom<Int>) -> CMBlockBuffer.Slice { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  subscript(bounds: (UnboundedRange_) -> ()) -> CMBlockBuffer.Slice { get }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension CMBlockBufferProtocol {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func makeContiguous(allocator: CFAllocator? = kCFAllocatorDefault, flags: CMBlockBuffer.Flags = []) throws -> CMBlockBuffer
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func makeContiguous(allocator: @escaping CMBlockBuffer.CustomBlockAllocator, deallocator: @escaping CMBlockBuffer.CustomBlockDeallocator, flags: CMBlockBuffer.Flags = []) throws -> CMBlockBuffer
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension CMBlockBufferProtocol {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func withContiguousStorage<R>(_ body: (UnsafeRawBufferPointer) throws -> R) throws -> R
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func dataBytes() throws -> Data
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func copyDataBytes(to destination: UnsafeMutableRawBufferPointer) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func replaceDataBytes(with sourceBytes: UnsafeRawBufferPointer) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func fillDataBytes(with fillByte: UInt8) throws
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension CMBlockBufferProtocol {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var dataLength: Int { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var isContiguous: Bool { get }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
struct CMSync {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension CMSync {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  struct Error {
    static let missingRequiredParameter: NSError
    static let invalidParameter: NSError
    static let allocationFailed: NSError
    static let rateMustBeNonZero: NSError
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
protocol CMSyncProtocol {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func rate<T>(relativeTo clockOrTimebase: T) -> Double where T : CMSyncProtocol
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func rateAndAnchorTime<T>(relativeTo clockOrTimebase: T) throws -> (rate: Double, anchorTime: CMTime, referenceTime: CMTime) where T : CMSyncProtocol
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func convertTime<T>(_ time: CMTime, to clockOrTimebase: T) -> CMTime where T : CMSyncProtocol
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func mightDrift<T>(relativeTo clockOrTimebase: T) -> Bool where T : CMSyncProtocol
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var time: CMTime { get }
}

@available(watchOS 6.0, *)
func CMTIMERANGE_IS_EMPTY(_ range: CMTimeRange) -> Bool

@available(watchOS 6.0, *)
func CMTIMERANGE_IS_INDEFINITE(_ range: CMTimeRange) -> Bool

@available(watchOS 6.0, *)
func CMTIMERANGE_IS_INVALID(_ range: CMTimeRange) -> Bool

@available(watchOS 6.0, *)
func CMTIMERANGE_IS_VALID(_ range: CMTimeRange) -> Bool

@available(watchOS 6.0, *)
func CMTIME_HAS_BEEN_ROUNDED(_ time: CMTime) -> Bool

@available(watchOS 6.0, *)
func CMTIME_IS_INDEFINITE(_ time: CMTime) -> Bool

@available(watchOS 6.0, *)
func CMTIME_IS_INVALID(_ time: CMTime) -> Bool

@available(watchOS 6.0, *)
func CMTIME_IS_NEGATIVEINFINITY(_ time: CMTime) -> Bool

@available(watchOS 6.0, *)
func CMTIME_IS_NUMERIC(_ time: CMTime) -> Bool

@available(watchOS 6.0, *)
func CMTIME_IS_POSITIVEINFINITY(_ time: CMTime) -> Bool

@available(watchOS 6.0, *)
func CMTIME_IS_VALID(_ time: CMTime) -> Bool

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
protocol _CMBlockBufferInitTrampoline {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  init(referencing: CMBlockBuffer)
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension _CMBlockBufferInitTrampoline {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  init(capacity: Int = 0, flags: CMBlockBuffer.Flags = []) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  init(buffer: UnsafeMutableRawBufferPointer, allocator: CFAllocator? = kCFAllocatorDefault, flags: CMBlockBuffer.Flags = []) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  init(buffer: Slice<UnsafeMutableRawBufferPointer>, allocator: CFAllocator? = kCFAllocatorDefault, flags: CMBlockBuffer.Flags = []) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  init(length: Int, allocator: CFAllocator? = kCFAllocatorDefault, range: Range<Int>? = nil, flags: CMBlockBuffer.Flags = []) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  init(buffer: UnsafeMutableRawBufferPointer, deallocator: @escaping CMBlockBuffer.CustomBlockDeallocator, flags: CMBlockBuffer.Flags = []) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  init(buffer: Slice<UnsafeMutableRawBufferPointer>, deallocator: @escaping CMBlockBuffer.CustomBlockDeallocator, flags: CMBlockBuffer.Flags = []) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  init(length: Int, allocator: @escaping CMBlockBuffer.CustomBlockAllocator, deallocator: @escaping CMBlockBuffer.CustomBlockDeallocator, range: Range<Int>? = nil, flags: CMBlockBuffer.Flags = []) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  init<T>(bufferReference: T, flags: CMBlockBuffer.Flags = []) throws where T : CMBlockBufferProtocol
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
protocol _CMBufferQueueInitTrampoline {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  init(referencing: CMBufferQueue)
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension _CMBufferQueueInitTrampoline {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  init(capacity: CMItemCount, handlers: CMBufferQueue.Handlers) throws
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
protocol _CMFormatDescriptionFourCCConvertible : _CMObjectiveCBridgeableWithRawValue, CustomStringConvertible where Self.RawValue == FourCharCode, Self._ObjectiveCType == NSNumber {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension _CMFormatDescriptionFourCCConvertible {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var description: String { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  init(string: String)
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
protocol _CMFormatDescriptionInitTrampoline {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  init(referencing: CMFormatDescription)
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension _CMFormatDescriptionInitTrampoline {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  init(mediaType: CMFormatDescription.MediaType, mediaSubType: CMFormatDescription.MediaSubType, extensions: CMFormatDescription.Extensions? = nil) throws
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension _CMFormatDescriptionInitTrampoline {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  init(audioStreamBasicDescription: AudioStreamBasicDescription, layoutSize: Int, layout: UnsafePointer<AudioChannelLayout>?, magicCookie: Data?, extensions: CMFormatDescription.Extensions? = nil) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  init(audioStreamBasicDescription: AudioStreamBasicDescription, layout: ManagedAudioChannelLayout? = nil, magicCookie: Data? = nil, extensions: CMFormatDescription.Extensions? = nil) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  init(audioFormatDescriptionArray: [CMAudioFormatDescription]) throws
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension _CMFormatDescriptionInitTrampoline {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  init(videoCodecType: CMFormatDescription.MediaSubType, width: Int, height: Int, extensions: CMFormatDescription.Extensions? = nil) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  init(imageBuffer: CVImageBuffer) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  init(h264ParameterSets: [Data], nalUnitHeaderLength: Int = 4) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  init(hevcParameterSets: [Data], nalUnitHeaderLength: Int = 4, extensions: CMFormatDescription.Extensions? = nil) throws
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension _CMFormatDescriptionInitTrampoline {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  init(muxedStreamType: CMFormatDescription.MediaSubType, extensions: CMFormatDescription.Extensions? = nil) throws
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension _CMFormatDescriptionInitTrampoline {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  init(timeCodeFormatType: CMFormatDescription.MediaSubType, frameDuration: CMTime, frameQuanta: Int, flags: CMTimeCodeFormatDescription.TimeCode.Flag, extensions: CMFormatDescription.Extensions? = nil) throws
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension _CMFormatDescriptionInitTrampoline {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  init(metadataFormatType: CMFormatDescription.MediaSubType) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  init(boxedMetadataKeys: [[String : CFPropertyList]]) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  init(boxedMetadataSpecifications: [[String : CFPropertyList]]) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  init(sourceMetadata: CMMetadataFormatDescription, specifications: [[String : CFPropertyList]]) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  init(sourceMetadata: CMMetadataFormatDescription, otherSourceDescription: CMMetadataFormatDescription) throws
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
protocol _CMObjectiveCBridgeableWithRawValue : Hashable, RawRepresentable, _ObjectiveCBridgeable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension _CMObjectiveCBridgeableWithRawValue where Self.RawValue : Hashable {
  func hash(into hasher: inout Hasher)
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension _CMObjectiveCBridgeableWithRawValue where Self.RawValue == CFString, Self._ObjectiveCType == CFString {
  func _bridgeToObjectiveC() -> Self._ObjectiveCType
  static func _forceBridgeFromObjectiveC(_ source: Self._ObjectiveCType, result: inout Self?)
  static func _conditionallyBridgeFromObjectiveC(_ source: Self._ObjectiveCType, result: inout Self?) -> Bool
  static func _unconditionallyBridgeFromObjectiveC(_ source: Self._ObjectiveCType?) -> Self
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension _CMObjectiveCBridgeableWithRawValue where Self.RawValue : _ObjectiveCBridgeable, Self._ObjectiveCType == Self.RawValue._ObjectiveCType {
  func _bridgeToObjectiveC() -> Self._ObjectiveCType
  static func _forceBridgeFromObjectiveC(_ source: Self._ObjectiveCType, result: inout Self?)
  static func _conditionallyBridgeFromObjectiveC(_ source: Self._ObjectiveCType, result: inout Self?) -> Bool
  static func _unconditionallyBridgeFromObjectiveC(_ source: Self._ObjectiveCType?) -> Self
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
protocol _CMSampleBufferInitTrampoline {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  init(referencing: CMSampleBuffer)
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension _CMSampleBufferInitTrampoline {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  init(dataBuffer: CMBlockBuffer?, formatDescription: CMFormatDescription?, numSamples: CMItemCount, sampleTimings: [CMSampleTimingInfo], sampleSizes: [Int]) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  init(dataBuffer: CMBlockBuffer?, dataReady: Bool = false, formatDescription: CMFormatDescription?, numSamples: CMItemCount, sampleTimings: [CMSampleTimingInfo], sampleSizes: [Int], makeDataReadyHandler: @escaping CMSampleBufferMakeDataReadyHandler) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  init(dataBuffer: CMBlockBuffer?, formatDescription: CMFormatDescription, numSamples: CMItemCount, presentationTimeStamp: CMTime, packetDescriptions: [AudioStreamPacketDescription]) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  init(dataBuffer: CMBlockBuffer?, dataReady: Bool = false, formatDescription: CMFormatDescription, numSamples: CMItemCount, presentationTimeStamp: CMTime, packetDescriptions: [AudioStreamPacketDescription], makeDataReadyHandler: @escaping CMSampleBufferMakeDataReadyHandler) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  init(imageBuffer: CVImageBuffer, formatDescription: CMVideoFormatDescription, sampleTiming: CMSampleTimingInfo) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  init(imageBuffer: CVImageBuffer, dataReady: Bool = false, formatDescription: CMVideoFormatDescription, sampleTiming: CMSampleTimingInfo, makeDataReadyHandler: @escaping CMSampleBufferMakeDataReadyHandler) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  init(copying sampleBuffer: CMSampleBuffer) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  init(copying sampleBuffer: CMSampleBuffer, withNewTiming sampleTimings: [CMSampleTimingInfo]) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  init(copying sampleBuffer: CMSampleBuffer, forRange range: Range<Int>) throws
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
protocol _CMSimpleQueueInitTrampoline {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  init(referencing: CMSimpleQueue)
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension _CMSimpleQueueInitTrampoline {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  init(capacity: Int) throws
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
protocol _CMTimebaseInitTrampoline {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  init(referencing: CMTimebase)
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension _CMTimebaseInitTrampoline {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  init(masterClock: CMClock) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  init(masterTimebase: CMTimebase) throws
}

@available(watchOS 6.0, *)
extension CMClock {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  struct Error {
    static let missingRequiredParameter: NSError
    static let invalidParameter: NSError
    static let allocationFailed: NSError
    static let unsupportedOperation: NSError
  }
}

@available(watchOS 6.0, *)
extension CMTimebase {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  struct Error {
    static let missingRequiredParameter: NSError
    static let invalidParameter: NSError
    static let allocationFailed: NSError
    static let timerIntervalTooShort: NSError
    static let readOnly: NSError
  }
}

@available(watchOS 6.0, *)
extension CMClock {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  static var typeID: CFTypeID { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  static var hostTimeClock: CMClock { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  static func convertHostTimeToSystemUnits(_ hostTime: CMTime) -> UInt64
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  static func convertSystemUnitsToHostTime(_ systemUnits: UInt64) -> CMTime
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func anchorTime() throws -> (anchorTime: CMTime, referenceTime: CMTime)
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func mightDrift(relativeTo otherClock: CMClock) -> Bool
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func invalidate()
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension CMTimebase : _CMTimebaseInitTrampoline {
}

@available(watchOS 6.0, *)
extension CMTimebase {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  static var typeID: CFTypeID { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var masterTimebase: CMTimebase? { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var masterClock: CMClock? { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var master: CMSyncProtocol
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var ultimateMasterClock: CMClock { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func time(withTimescale timescale: CMTimeScale, rounding: CMTimeRoundingMethod = .`default`) -> CMTime
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func setTime(_ time: CMTime) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func setAnchorTime(_ anchorTime: CMTime, referenceTime: CMTime) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var rate: Double { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var timeAndRate: (time: CMTime, rate: Double) { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func setRate(_ rate: Double) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func setRateAndAnchorTime(rate: Double, anchorTime: CMTime, referenceTime: CMTime) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var effectiveRate: Double { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func addTimer(_ timer: Timer, on runloop: RunLoop) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  static let veryLongTimeInterval: CFTimeInterval
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  static let farFuture: CFAbsoluteTime
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func removeTimer(_ timer: Timer) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func setTimerNextFireTime(_ timer: Timer, fireTime: CMTime) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func setTimerToFireImmediately(_ timer: Timer) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func addTimer<T>(_ timer: T) throws where T : DispatchSourceTimer
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func removeTimer<T>(_ timer: T) throws where T : DispatchSourceTimer
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func setTimerNextFireTime<T>(_ timer: T, fireTime: CMTime) throws where T : DispatchSourceTimer
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func setTimerToFireImmediately<T>(_ timer: T) throws where T : DispatchSourceTimer
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func notificationBarrier() throws
}

@available(watchOS 6.0, *)
extension CMTimebase {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  static let effectiveRateChanged: NSNotification.Name
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  static let timeJumped: NSNotification.Name
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  struct NotificationKey : _CMObjectiveCBridgeableWithRawValue {
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    static let eventTime: CMTimebase.NotificationKey
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension CMTimebase : CMSyncProtocol {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension CMClock : CMSyncProtocol {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension CMBlockBuffer : CMAttachmentBearerProtocol {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension CMSampleBuffer : CMAttachmentBearerProtocol {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension CVBuffer : CMAttachmentBearerProtocol {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension CMSimpleQueue : _CMSimpleQueueInitTrampoline {
}

@available(watchOS 6.0, *)
extension CMSimpleQueue {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  struct Error {
    static let allocationFailed: NSError
    static let requiredParameterMissing: NSError
    static let parameterOutOfRange: NSError
    static let queueIsFull: NSError
  }
}

@available(watchOS 6.0, *)
extension CMSimpleQueue {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  static var typeID: CFTypeID { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func enqueue(_ element: UnsafeRawPointer) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func dequeue() -> UnsafeRawPointer?
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var head: UnsafeRawPointer? { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func reset() throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var capacity: Int { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var count: Int { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var fullness: Float { get }
}

@available(watchOS 6.0, *)
extension CMTimeRange {
  @available(watchOS 6.0, *)
  init(start: CMTime, end: CMTime)
  @available(watchOS 6.0, *)
  var isValid: Bool { get }
  @available(watchOS 6.0, *)
  var isIndefinite: Bool { get }
  @available(watchOS 6.0, *)
  var isEmpty: Bool { get }
  @available(watchOS 6.0, *)
  var end: CMTime { get }
  @available(watchOS 6.0, *)
  func union(_ otherRange: CMTimeRange) -> CMTimeRange
  @available(watchOS 6.0, *)
  func intersection(_ otherRange: CMTimeRange) -> CMTimeRange
  @available(watchOS 6.0, *)
  func containsTime(_ time: CMTime) -> Bool
  @available(watchOS 6.0, *)
  func containsTimeRange(_ range: CMTimeRange) -> Bool
}

@available(watchOS 6.0, *)
extension CMTimeRange : Equatable {
  @available(watchOS 6.0, *)
  static func != (range1: CMTimeRange, range2: CMTimeRange) -> Bool
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension CMSampleBuffer : _CMSampleBufferInitTrampoline {
}

@available(watchOS 6.0, *)
extension CMSampleBuffer {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  struct Error {
    static let allocationFailed: NSError
    static let requiredParameterMissing: NSError
    static let alreadyHasDataBuffer: NSError
    static let bufferNotReady: NSError
    static let sampleIndexOutOfRange: NSError
    static let bufferHasNoSampleSizes: NSError
    static let bufferHasNoSampleTimingInfo: NSError
    static let arrayTooSmall: NSError
    static let invalidEntryCount: NSError
    static let cannotSubdivide: NSError
    static let sampleTimingInfoInvalid: NSError
    static let invalidMediaTypeForOperation: NSError
    static let invalidSampleData: NSError
    static let invalidMediaFormat: NSError
    static let invalidated: NSError
    static let dataFailed: NSError
    static let dataCanceled: NSError
  }
}

@available(watchOS 6.0, *)
extension CMSampleBuffer {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  struct Flags : OptionSet {
    static let audioBufferListAssure16ByteAlignment: CMSampleBuffer.Flags
  }
}

@available(watchOS 6.0, *)
extension CMSampleBuffer {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  static var typeID: CFTypeID { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func setDataBuffer(_ dataBuffer: CMBlockBuffer) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var dataBuffer: CMBlockBuffer? { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var imageBuffer: CVImageBuffer? { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func setDataBuffer(fromAudioBufferList bufferList: UnsafePointer<AudioBufferList>, blockBufferMemoryAllocator: CFAllocator? = kCFAllocatorDefault, flags: CMSampleBuffer.Flags = []) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func withAudioBufferList<R>(blockBufferMemoryAllocator: CFAllocator? = kCFAllocatorDefault, flags: CMSampleBuffer.Flags = [], body: (UnsafeMutableAudioBufferListPointer, CMBlockBuffer) throws -> R) throws -> R
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func audioStreamPacketDescriptions() throws -> [AudioStreamPacketDescription]
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func withUnsafeAudioStreamPacketDescriptions<R>(_ body: (UnsafeBufferPointer<AudioStreamPacketDescription>) throws -> R) throws -> R
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func copyPCMData(fromRange range: Range<Int>, into bufferList: UnsafeMutablePointer<AudioBufferList>) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  enum DataReadiness : Hashable {
    case notReady
    case ready
    case failed(OSStatus)
  }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var dataReadiness: CMSampleBuffer.DataReadiness { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func setDataReadiness(_ newValue: CMSampleBuffer.DataReadiness) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func makeDataReady() throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func trackDataReadiness(_ sampleBufferToTrack: CMSampleBuffer) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func invalidate() throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func setInvalidateHandler(_ body: @escaping (CMSampleBuffer) throws -> Void) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var isValid: Bool { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var numSamples: Int { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var duration: CMTime { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var presentationTimeStamp: CMTime { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var decodeTimeStamp: CMTime { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var outputDuration: CMTime { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var outputPresentationTimeStamp: CMTime { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func setOutputPresentationTimeStamp(_ pts: CMTime) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var outputDecodeTimeStamp: CMTime { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func sampleTimingInfos() throws -> [CMSampleTimingInfo]
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func outputSampleTimingInfos() throws -> [CMSampleTimingInfo]
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func sampleTimingInfo(at sampleIndex: CMItemIndex) throws -> CMSampleTimingInfo
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func sampleSizes() throws -> [Int]
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func sampleSize(at sampleIndex: Int) -> Int
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var totalSampleSize: Int { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var formatDescription: CMFormatDescription? { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  struct PerSampleAttachmentsDictionary : Sequence {
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    struct Key : _CMObjectiveCBridgeableWithRawValue {
      static let notSync: CMSampleBuffer.PerSampleAttachmentsDictionary.Key
      static let partialSync: CMSampleBuffer.PerSampleAttachmentsDictionary.Key
      static let hasRedundantCoding: CMSampleBuffer.PerSampleAttachmentsDictionary.Key
      static let isDependedOnByOthers: CMSampleBuffer.PerSampleAttachmentsDictionary.Key
      static let dependsOnOthers: CMSampleBuffer.PerSampleAttachmentsDictionary.Key
      static let earlierDisplayTimesAllowed: CMSampleBuffer.PerSampleAttachmentsDictionary.Key
      static let displayImmediately: CMSampleBuffer.PerSampleAttachmentsDictionary.Key
      static let doNotDisplay: CMSampleBuffer.PerSampleAttachmentsDictionary.Key
      static let hevcTemporalLevelInfo: CMSampleBuffer.PerSampleAttachmentsDictionary.Key
      static let hevcTemporalSubLayerAccess: CMSampleBuffer.PerSampleAttachmentsDictionary.Key
      static let hevcStepwiseTemporalSubLayerAccess: CMSampleBuffer.PerSampleAttachmentsDictionary.Key
      static let hevcSyncSampleNALUnitType: CMSampleBuffer.PerSampleAttachmentsDictionary.Key
      static let audioIndependentSampleDecoderRefreshCount: CMSampleBuffer.PerSampleAttachmentsDictionary.Key
    }
    subscript(key: CMSampleBuffer.PerSampleAttachmentsDictionary.Key) -> Any?
  }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  struct SampleAttachmentsArray : Collection {
  }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var sampleAttachments: CMSampleBuffer.SampleAttachmentsArray
}

@available(watchOS 6.0, *)
extension CMSampleBuffer {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  struct SingleSampleBuffers : Sequence {
  }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func singleSampleBuffers() throws -> CMSampleBuffer.SingleSampleBuffers
}

@available(watchOS 6.0, *)
extension CMSampleBuffer {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  struct AttachmentKey : _CMObjectiveCBridgeableWithRawValue {
    static let resetDecoderBeforeDecoding: CMSampleBuffer.AttachmentKey
    static let drainAfterDecoding: CMSampleBuffer.AttachmentKey
    static let postNotificationWhenConsumed: CMSampleBuffer.AttachmentKey
    static let resumeOutput: CMSampleBuffer.AttachmentKey
    static let transitionID: CMSampleBuffer.AttachmentKey
    static let trimDurationAtStart: CMSampleBuffer.AttachmentKey
    static let trimDurationAtEnd: CMSampleBuffer.AttachmentKey
    static let speedMultiplier: CMSampleBuffer.AttachmentKey
    static let reverse: CMSampleBuffer.AttachmentKey
    static let fillDiscontinuitiesWithSilence: CMSampleBuffer.AttachmentKey
    static let emptyMedia: CMSampleBuffer.AttachmentKey
    static let permanentEmptyMedia: CMSampleBuffer.AttachmentKey
    static let displayEmptyMediaImmediately: CMSampleBuffer.AttachmentKey
    static let endsPreviousSampleDuration: CMSampleBuffer.AttachmentKey
    static let sampleReferenceURL: CMSampleBuffer.AttachmentKey
    static let sampleReferenceByteOffset: CMSampleBuffer.AttachmentKey
    static let gradualDecoderRefresh: CMSampleBuffer.AttachmentKey
    static let droppedFrameReason: CMSampleBuffer.AttachmentKey
    static let droppedFrameReasonInfo: CMSampleBuffer.AttachmentKey
    static let stillImageLensStabilizationInfo: CMSampleBuffer.AttachmentKey
    static let cameraIntrinsicMatrix: CMSampleBuffer.AttachmentKey
    static let forceKeyFrame: CMSampleBuffer.AttachmentKey
  }
}

@available(watchOS 6.0, *)
extension CMSampleBuffer {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  static let dataBecameReady: NSNotification.Name
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  static let dataFailed: NSNotification.Name
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  struct NotificationKey : _CMObjectiveCBridgeableWithRawValue {
    static let status: CMSampleBuffer.NotificationKey
  }
}

@available(watchOS 6.0, *)
extension CMBufferQueue {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  struct Handlers {
    let getDecodeTimeStamp: CMBufferGetTimeHandler?
    let getPresentationTimeStamp: CMBufferGetTimeHandler?
    let getDuration: CMBufferGetTimeHandler
    let isDataReady: CMBufferGetBooleanHandler?
    let compare: CMBufferCompareHandler?
    let dataBecameReadyNotification: String?
    let getSize: CMBufferGetSizeHandler?
    struct Builder {
      var dataBecameReadyNotification: String?
      mutating func getDecodeTimeStamp(_ body: @escaping CMBufferGetTimeHandler)
      mutating func getPresentationTimeStamp(_ body: @escaping CMBufferGetTimeHandler)
      mutating func getDuration(_ body: @escaping CMBufferGetTimeHandler)
      mutating func isDataReady(_ body: @escaping CMBufferGetBooleanHandler)
      mutating func compare(_ body: @escaping CMBufferCompareHandler)
      mutating func getSize(_ body: @escaping CMBufferGetSizeHandler)
    }
    init(withHandlers body: (inout CMBufferQueue.Handlers.Builder) -> Void)
    func withHandlers(_ body: (inout CMBufferQueue.Handlers.Builder) -> Void) -> CMBufferQueue.Handlers
    static let unsortedSampleBuffers: CMBufferQueue.Handlers
    static let outputPTSSortedSampleBuffers: CMBufferQueue.Handlers
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension CMBufferQueue : _CMBufferQueueInitTrampoline {
}

@available(watchOS 6.0, *)
extension CMBufferQueue {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  struct Error {
    static let allocationFailed: NSError
    static let requiredParameterMissing: NSError
    static let invalidCMBufferCallbacksStruct: NSError
    static let enqueueAfterEndOfData: NSError
    static let queueIsFull: NSError
    static let badTriggerDuration: NSError
    static let cannotModifyQueueFromTriggerCallback: NSError
    static let invalidTriggerCondition: NSError
    static let invalidTriggerToken: NSError
    static let invalidBuffer: NSError
  }
}

@available(watchOS 6.0, *)
extension CMBufferQueue {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  typealias TriggerToken = CMBufferQueueTriggerToken
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  enum TriggerCondition {
    case whenDurationBecomesLessThan(CMTime)
    case whenDurationBecomesLessThanOrEqualTo(CMTime)
    case whenDurationBecomesGreaterThan(CMTime)
    case whenDurationBecomesGreaterThanOrEqualTo(CMTime)
    case whenMinPresentationTimeStampChanges
    case whenMaxPresentationTimeStampChanges
    case whenDataBecomesReady
    case whenEndOfDataReached
    case whenReset
    case whenBufferCountBecomesLessThan(CMItemCount)
    case whenBufferCountBecomesGreaterThan(CMItemCount)
  }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func enqueue(_ buffer: CMBuffer) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func dequeue() -> CMBuffer?
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func dequeueIfDataReady() -> CMBuffer?
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var head: CMBuffer? { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var isEmpty: Bool { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func markEndOfData() throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var containsEndOfData: Bool { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var isAtEndOfData: Bool { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func reset() throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func reset(_ body: (CMBuffer) throws -> ()) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var bufferCount: CMItemCount { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var duration: CMTime { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var minDecodeTimeStamp: CMTime { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var firstDecodeTimeStamp: CMTime { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var minPresentationTimeStamp: CMTime { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var firstPresentationTimeStamp: CMTime { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var maxPresentationTimeStamp: CMTime { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var endPresentationTimeStamp: CMTime { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var totalSize: Int { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func installTrigger(condition: CMBufferQueue.TriggerCondition, _ body: CMBufferQueueTriggerHandler? = nil) throws -> CMBufferQueue.TriggerToken
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func removeTrigger(_ triggerToken: CMBufferQueue.TriggerToken) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func testTrigger(_ triggerToken: CMBufferQueue.TriggerToken) -> Bool
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  struct Buffers : Sequence {
  }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var buffers: CMBufferQueue.Buffers { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func setValidationHandler(_ body: @escaping (CMBufferQueue, CMBuffer) throws -> Void)
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  class var typeID: CFTypeID { get }
}

@available(watchOS 6.0, *)
extension CMFormatDescription {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  struct Extensions {
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    struct Key : _CMObjectiveCBridgeableWithRawValue {
      static let originalCompressionSettings: CMFormatDescription.Extensions.Key
      static let sampleDescriptionExtensionAtoms: CMFormatDescription.Extensions.Key
      static let verbatimSampleDescription: CMFormatDescription.Extensions.Key
      static let verbatimISOSampleEntry: CMFormatDescription.Extensions.Key
      static let formatName: CMFormatDescription.Extensions.Key
      static let depth: CMFormatDescription.Extensions.Key
      static let cleanAperture: CMFormatDescription.Extensions.Key
      static let fieldCount: CMFormatDescription.Extensions.Key
      static let fieldDetail: CMFormatDescription.Extensions.Key
      static let pixelAspectRatio: CMFormatDescription.Extensions.Key
      static let colorPrimaries: CMFormatDescription.Extensions.Key
      static let transferFunction: CMFormatDescription.Extensions.Key
      static let gammaLevel: CMFormatDescription.Extensions.Key
      static let yCbCrMatrix: CMFormatDescription.Extensions.Key
      static let fullRangeVideo: CMFormatDescription.Extensions.Key
      static let iccProfile: CMFormatDescription.Extensions.Key
      static let bytesPerRow: CMFormatDescription.Extensions.Key
      static let chromaLocationTopField: CMFormatDescription.Extensions.Key
      static let chromaLocationBottomField: CMFormatDescription.Extensions.Key
      static let conformsToMPEG2VideoProfile: CMFormatDescription.Extensions.Key
      static let temporalQuality: CMFormatDescription.Extensions.Key
      static let spatialQuality: CMFormatDescription.Extensions.Key
      static let version: CMFormatDescription.Extensions.Key
      static let revisionLevel: CMFormatDescription.Extensions.Key
      static let vendor: CMFormatDescription.Extensions.Key
      static let masteringDisplayColorVolume: CMFormatDescription.Extensions.Key
      static let contentLightLevelInfo: CMFormatDescription.Extensions.Key
      static let alternativeTransferCharacteristics: CMFormatDescription.Extensions.Key
      static let auxiliaryTypeInfo: CMFormatDescription.Extensions.Key
      static let alphaChannelMode: CMFormatDescription.Extensions.Key
      static let containsAlphaChannel: CMFormatDescription.Extensions.Key
      static let displayFlags: CMFormatDescription.Extensions.Key
      static let backgroundColor: CMFormatDescription.Extensions.Key
      static let defaultTextBox: CMFormatDescription.Extensions.Key
      static let defaultStyle: CMFormatDescription.Extensions.Key
      static let horizontalJustification: CMFormatDescription.Extensions.Key
      static let verticalJustification: CMFormatDescription.Extensions.Key
      static let fontTable: CMFormatDescription.Extensions.Key
      static let textJustification: CMFormatDescription.Extensions.Key
      static let defaultFontName: CMFormatDescription.Extensions.Key
      static let sourceReferenceName: CMFormatDescription.Extensions.Key
      static let metadataKeyTable: CMFormatDescription.Extensions.Key
    }
    struct Value {
      var propertyListRepresentation: CFPropertyList
      init(_ plist: CFPropertyList)
      static func number<T>(_ value: T) -> CMFormatDescription.Extensions.Value where T : Numeric
      static func string(_ value: String) -> CMFormatDescription.Extensions.Value
      static func string(_ value: CFString) -> CMFormatDescription.Extensions.Value
      static func cleanAperture<Width, Height, Horizontal, Vertical>(width: Width, height: Height, horizontalOffet: Horizontal, verticalOffset: Vertical) -> CMFormatDescription.Extensions.Value where Width : Numeric, Height : Numeric, Horizontal : Numeric, Vertical : Numeric
      static func cleanAperture(width: (numerator: Int, denominator: Int), height: (numerator: Int, denominator: Int), horizontalOffet: (numerator: Int, denominator: Int), verticalOffset: (numerator: Int, denominator: Int)) -> CMFormatDescription.Extensions.Value
      struct FieldDetail : _CMObjectiveCBridgeableWithRawValue {
        static let temporalTopFirst: CMFormatDescription.Extensions.Value.FieldDetail
        static let temporalBottomFirst: CMFormatDescription.Extensions.Value.FieldDetail
        static let spatialFirstLineEarly: CMFormatDescription.Extensions.Value.FieldDetail
        static let spatialFirstLineLate: CMFormatDescription.Extensions.Value.FieldDetail
      }
      static func fieldDetail(_ fieldDetail: CMFormatDescription.Extensions.Value.FieldDetail) -> CMFormatDescription.Extensions.Value
      static func pixelAspectRatio<Horizontal, Vertical>(horizontalSpacing: Horizontal, verticalSpacing: Vertical) -> CMFormatDescription.Extensions.Value where Horizontal : Numeric, Vertical : Numeric
      struct ColorPrimaries : _CMObjectiveCBridgeableWithRawValue {
        static let itu_R_709_2: CMFormatDescription.Extensions.Value.ColorPrimaries
        static let ebu_3213: CMFormatDescription.Extensions.Value.ColorPrimaries
        static let smpte_C: CMFormatDescription.Extensions.Value.ColorPrimaries
        static let dci_P3: CMFormatDescription.Extensions.Value.ColorPrimaries
        static let p3_D65: CMFormatDescription.Extensions.Value.ColorPrimaries
        static let itu_R_2020: CMFormatDescription.Extensions.Value.ColorPrimaries
        static let p22: CMFormatDescription.Extensions.Value.ColorPrimaries
      }
      static func colorPrimaries(_ colorPrimaries: CMFormatDescription.Extensions.Value.ColorPrimaries) -> CMFormatDescription.Extensions.Value
      struct TransferFunction : _CMObjectiveCBridgeableWithRawValue {
        static let itu_R_709_2: CMFormatDescription.Extensions.Value.TransferFunction
        static let smpte_240M_1995: CMFormatDescription.Extensions.Value.TransferFunction
        static let useGamma: CMFormatDescription.Extensions.Value.TransferFunction
        static let itu_R_2020: CMFormatDescription.Extensions.Value.TransferFunction
        static let smpte_ST_428_1: CMFormatDescription.Extensions.Value.TransferFunction
        static let smpte_ST_2084_PQ: CMFormatDescription.Extensions.Value.TransferFunction
        static let itu_R_2100_HLG: CMFormatDescription.Extensions.Value.TransferFunction
        static let linear: CMFormatDescription.Extensions.Value.TransferFunction
        static let sRGB: CMFormatDescription.Extensions.Value.TransferFunction
      }
      static func transferFunction(_ transferFunction: CMFormatDescription.Extensions.Value.TransferFunction) -> CMFormatDescription.Extensions.Value
      struct YCbCrMatrix : _CMObjectiveCBridgeableWithRawValue {
        static let itu_R_709_2: CMFormatDescription.Extensions.Value.YCbCrMatrix
        static let itu_R_601_4: CMFormatDescription.Extensions.Value.YCbCrMatrix
        static let smpted_240M_1995: CMFormatDescription.Extensions.Value.YCbCrMatrix
        static let itu_R_2020: CMFormatDescription.Extensions.Value.YCbCrMatrix
      }
      static func yCbCrMatrix(_ yCbCrMatrix: CMFormatDescription.Extensions.Value.YCbCrMatrix) -> CMFormatDescription.Extensions.Value
      struct ChromaLocation : _CMObjectiveCBridgeableWithRawValue {
        static let left: CMFormatDescription.Extensions.Value.ChromaLocation
        static let center: CMFormatDescription.Extensions.Value.ChromaLocation
        static let topLeft: CMFormatDescription.Extensions.Value.ChromaLocation
        static let top: CMFormatDescription.Extensions.Value.ChromaLocation
        static let bottomLeft: CMFormatDescription.Extensions.Value.ChromaLocation
        static let bottom: CMFormatDescription.Extensions.Value.ChromaLocation
        static let dv420: CMFormatDescription.Extensions.Value.ChromaLocation
      }
      static func chromaLocation(_ chromaLocation: CMFormatDescription.Extensions.Value.ChromaLocation) -> CMFormatDescription.Extensions.Value
      struct MPEG2VideoProfile : _CMFormatDescriptionFourCCConvertible {
        @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
        init(rawValue: Int32)
        static let hdv_720p30: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let hdv_1080i60: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let hdv_1080i50: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let hdv_720p24: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let hdv_720p25: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let hdv_1080p24: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let hdv_1080p25: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let hdv_1080p30: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let hdv_720p60: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let hdv_720p50: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let xdcam_HD_1080i60_VBR35: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let xdcam_HD_1080i50_VBR35: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let xdcam_HD_1080p24_VBR35: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let xdcam_HD_1080p25_VBR35: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let xdcam_HD_1080p30_VBR35: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let xdcam_EX_720p24_VBR35: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let xdcam_EX_720p25_VBR35: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let xdcam_EX_720p30_VBR35: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let xdcam_EX_720p50_VBR35: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let xdcam_EX_720p60_VBR35: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let xdcam_EX_1080i60_VBR35: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let xdcam_EX_1080i50_VBR35: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let xdcam_EX_1080p24_VBR35: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let xdcam_EX_1080p25_VBR35: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let xdcam_EX_1080p30_VBR35: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let xdcam_HD422_720p50_CBR50: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let xdcam_HD422_720p60_CBR50: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let xdcam_HD422_1080i60_CBR50: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let xdcam_HD422_1080i50_CBR50: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let xdcam_HD422_1080p24_CBR50: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let xdcam_HD422_1080p25_CBR50: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let xdcam_HD422_1080p30_CBR50: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let xdcam_HD_540p: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let xdcam_HD422_540p: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let xdcam_HD422_720p24_CBR50: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let xdcam_HD422_720p25_CBR50: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let xdcam_HD422_720p30_CBR50: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
        static let xf: CMFormatDescription.Extensions.Value.MPEG2VideoProfile
      }
      static func mpeg2VideoProfile(_ mpeg2VideoProfile: CMFormatDescription.Extensions.Value.MPEG2VideoProfile) -> CMFormatDescription.Extensions.Value
      struct Vendor : _CMObjectiveCBridgeableWithRawValue {
        static let apple: CMFormatDescription.Extensions.Value.Vendor
      }
      static func vendor(_ vendor: CMFormatDescription.Extensions.Value.Vendor) -> CMFormatDescription.Extensions.Value
      static func vendor(_ fourCC: String) -> CMFormatDescription.Extensions.Value
      struct AlphaChannelMode : _CMObjectiveCBridgeableWithRawValue {
        static let straightAlpha: CMFormatDescription.Extensions.Value.AlphaChannelMode
        static let premultipliedAlpha: CMFormatDescription.Extensions.Value.AlphaChannelMode
      }
      static func alphaChannelMode(_ alphaChannelMode: CMFormatDescription.Extensions.Value.AlphaChannelMode) -> CMFormatDescription.Extensions.Value
      static func qtTextColor(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) -> CMFormatDescription.Extensions.Value
      static func mobile3GPPTextColor(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) -> CMFormatDescription.Extensions.Value
      static func fontTable(_ fontTable: [Int : String]) -> CMFormatDescription.Extensions.Value
      struct FontFace : OptionSet, _CMObjectiveCBridgeableWithRawValue {
        static let bold: CMFormatDescription.Extensions.Value.FontFace
        static let italic: CMFormatDescription.Extensions.Value.FontFace
        static let underline: CMFormatDescription.Extensions.Value.FontFace
        static let all: CMFormatDescription.Extensions.Value.FontFace
      }
      static func qtTextDefaultStyle(startChar: Int, height: Int, ascent: Int, localFontID: Int, fontFace: CMFormatDescription.Extensions.Value.FontFace, fontSize: Int, foregroundColor: CMFormatDescription.Extensions.Value, defaultFontName: String?) -> CMFormatDescription.Extensions.Value
      static func mobile3GPPTextDefaultStyle(startChar: Int, endChar: Int, localFontID: Int, fontFace: CMFormatDescription.Extensions.Value.FontFace, fontSize: Int, foregroundColor: CMFormatDescription.Extensions.Value) -> CMFormatDescription.Extensions.Value
      static func textRect(top: Int, left: Int, bottom: Int, right: Int) -> CMFormatDescription.Extensions.Value
      struct TextDisplayFlags : _CMObjectiveCBridgeableWithRawValue {
        static let scrollIn: CMFormatDescription.Extensions.Value.TextDisplayFlags
        static let scrollOut: CMFormatDescription.Extensions.Value.TextDisplayFlags
        static let scrollDirectionMask: CMFormatDescription.Extensions.Value.TextDisplayFlags
        static let scrollDirection_bottomToTop: CMFormatDescription.Extensions.Value.TextDisplayFlags
        static let scrollDirection_rightToLeft: CMFormatDescription.Extensions.Value.TextDisplayFlags
        static let scrollDirection_topToBottom: CMFormatDescription.Extensions.Value.TextDisplayFlags
        static let scrollDirection_leftToRight: CMFormatDescription.Extensions.Value.TextDisplayFlags
        static let continuousKaraoke: CMFormatDescription.Extensions.Value.TextDisplayFlags
        static let writeTextVertically: CMFormatDescription.Extensions.Value.TextDisplayFlags
        static let fillTextRegion: CMFormatDescription.Extensions.Value.TextDisplayFlags
        static let obeySubtitleFormatting: CMFormatDescription.Extensions.Value.TextDisplayFlags
        static let forcedSubtitlesPresent: CMFormatDescription.Extensions.Value.TextDisplayFlags
        static let allSubtitlesForced: CMFormatDescription.Extensions.Value.TextDisplayFlags
        var scrollDirection: CMFormatDescription.Extensions.Value.TextDisplayFlags { get }
      }
      static func textDisplayFlags(_ textDisplayFlags: Set<CMFormatDescription.Extensions.Value.TextDisplayFlags>) -> CMFormatDescription.Extensions.Value
      struct TextJustification : _CMObjectiveCBridgeableWithRawValue {
        static let left: CMFormatDescription.Extensions.Value.TextJustification
        static let top: CMFormatDescription.Extensions.Value.TextJustification
        static let centered: CMFormatDescription.Extensions.Value.TextJustification
        static let bottom: CMFormatDescription.Extensions.Value.TextJustification
        static let right: CMFormatDescription.Extensions.Value.TextJustification
      }
      static func textJustification(_ textJustification: CMFormatDescription.Extensions.Value.TextJustification) -> CMFormatDescription.Extensions.Value
      static func sourceReferenceName(value: String, langCode: Int) -> CMFormatDescription.Extensions.Value
    }
    init()
    init(base: [CFString : CFPropertyList]?)
    subscript(key: CMFormatDescription.Extensions.Key) -> CMFormatDescription.Extensions.Value?
    subscript(key: CFString) -> CFPropertyList?
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension CMFormatDescription : _CMFormatDescriptionInitTrampoline {
}

@available(watchOS 6.0, *)
extension CMFormatDescription {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  struct Error {
    static let invalidParameter: NSError
    static let allocationFailed: NSError
    static let valueNotAvailable: NSError
  }
}

@available(watchOS 6.0, *)
extension CMFormatDescription {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  struct MediaType : _CMFormatDescriptionFourCCConvertible {
    static let video: CMFormatDescription.MediaType
    static let audio: CMFormatDescription.MediaType
    static let muxed: CMFormatDescription.MediaType
    static let text: CMFormatDescription.MediaType
    static let closedCaption: CMFormatDescription.MediaType
    static let subtitle: CMFormatDescription.MediaType
    static let timeCode: CMFormatDescription.MediaType
    static let metadata: CMFormatDescription.MediaType
  }
}

@available(watchOS 6.0, *)
extension CMFormatDescription {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  struct MediaSubType : _CMFormatDescriptionFourCCConvertible {
    static let linearPCM: CMFormatDescription.MediaSubType
    static let ac3: CMFormatDescription.MediaSubType
    static let iec60958AC3: CMFormatDescription.MediaSubType
    static let appleIMA4: CMFormatDescription.MediaSubType
    static let mpeg4AAC: CMFormatDescription.MediaSubType
    static let mpeg4CELP: CMFormatDescription.MediaSubType
    static let mpeg4HVXC: CMFormatDescription.MediaSubType
    static let mpeg4TwinVQ: CMFormatDescription.MediaSubType
    static let mace3: CMFormatDescription.MediaSubType
    static let mace6: CMFormatDescription.MediaSubType
    static let uLaw: CMFormatDescription.MediaSubType
    static let aLaw: CMFormatDescription.MediaSubType
    static let qDesign: CMFormatDescription.MediaSubType
    static let qDesign2: CMFormatDescription.MediaSubType
    static let qualcomm: CMFormatDescription.MediaSubType
    static let mpegLayer1: CMFormatDescription.MediaSubType
    static let mpegLayer2: CMFormatDescription.MediaSubType
    static let mpegLayer3: CMFormatDescription.MediaSubType
    static let timeCode: CMFormatDescription.MediaSubType
    static let midiStream: CMFormatDescription.MediaSubType
    static let parameterValueStream: CMFormatDescription.MediaSubType
    static let appleLossless: CMFormatDescription.MediaSubType
    static let mpeg4AAC_HE: CMFormatDescription.MediaSubType
    static let mpeg4AAC_LD: CMFormatDescription.MediaSubType
    static let mpeg4AAC_ELD: CMFormatDescription.MediaSubType
    static let mpeg4AAC_ELD_SBR: CMFormatDescription.MediaSubType
    static let mpeg4AAC_ELD_V2: CMFormatDescription.MediaSubType
    static let mpeg4AAC_HE_V2: CMFormatDescription.MediaSubType
    static let mpeg4AAC_Spatial: CMFormatDescription.MediaSubType
    static let mpegD_USAC: CMFormatDescription.MediaSubType
    static let amr: CMFormatDescription.MediaSubType
    static let amr_WB: CMFormatDescription.MediaSubType
    static let audible: CMFormatDescription.MediaSubType
    static let iLBC: CMFormatDescription.MediaSubType
    static let dviIntelIMA: CMFormatDescription.MediaSubType
    static let microsoftGSM: CMFormatDescription.MediaSubType
    static let aes3: CMFormatDescription.MediaSubType
    static let enhancedAC3: CMFormatDescription.MediaSubType
    static let flac: CMFormatDescription.MediaSubType
    static let opus: CMFormatDescription.MediaSubType
    static let aacLCProtected: CMFormatDescription.MediaSubType
    static let aacAudibleProtected: CMFormatDescription.MediaSubType
    static let pixelFormat_32ARGB: CMFormatDescription.MediaSubType
    static let pixelFormat_32BGRA: CMFormatDescription.MediaSubType
    static let pixelFormat_24RGB: CMFormatDescription.MediaSubType
    static let pixelFormat_16BE555: CMFormatDescription.MediaSubType
    static let pixelFormat_16BE565: CMFormatDescription.MediaSubType
    static let pixelFormat_16LE555: CMFormatDescription.MediaSubType
    static let pixelFormat_16LE565: CMFormatDescription.MediaSubType
    static let pixelFormat_16LE5551: CMFormatDescription.MediaSubType
    static let pixelFormat_422YpCbCr8: CMFormatDescription.MediaSubType
    static let pixelFormat_422YpCbCr8_yuvs: CMFormatDescription.MediaSubType
    static let pixelFormat_444YpCbCr8: CMFormatDescription.MediaSubType
    static let pixelFormat_4444YpCbCrA8: CMFormatDescription.MediaSubType
    static let pixelFormat_422YpCbCr16: CMFormatDescription.MediaSubType
    static let pixelFormat_422YpCbCr10: CMFormatDescription.MediaSubType
    static let pixelFormat_444YpCbCr10: CMFormatDescription.MediaSubType
    static let pixelFormat_8IndexedGray_WhiteIsZero: CMFormatDescription.MediaSubType
    static let animation: CMFormatDescription.MediaSubType
    static let cinepak: CMFormatDescription.MediaSubType
    static let jpeg: CMFormatDescription.MediaSubType
    static let jpeg_OpenDML: CMFormatDescription.MediaSubType
    static let sorensonVideo: CMFormatDescription.MediaSubType
    static let sorensonVideo3: CMFormatDescription.MediaSubType
    static let h263: CMFormatDescription.MediaSubType
    static let h264: CMFormatDescription.MediaSubType
    static let hevc: CMFormatDescription.MediaSubType
    static let hevcWithAlpha: CMFormatDescription.MediaSubType
    static let mpeg4Video: CMFormatDescription.MediaSubType
    static let mpeg2Video: CMFormatDescription.MediaSubType
    static let mpeg1Video: CMFormatDescription.MediaSubType
    static let dvcNTSC: CMFormatDescription.MediaSubType
    static let dvcPAL: CMFormatDescription.MediaSubType
    static let dvcProPAL: CMFormatDescription.MediaSubType
    static let dvcPro50NTSC: CMFormatDescription.MediaSubType
    static let dvcPro50PAL: CMFormatDescription.MediaSubType
    static let dvcPROHD720p60: CMFormatDescription.MediaSubType
    static let dvcPROHD720p50: CMFormatDescription.MediaSubType
    static let dvcPROHD1080i60: CMFormatDescription.MediaSubType
    static let dvcPROHD1080i50: CMFormatDescription.MediaSubType
    static let dvcPROHD1080p30: CMFormatDescription.MediaSubType
    static let dvcPROHD1080p25: CMFormatDescription.MediaSubType
    static let proRes4444XQ: CMFormatDescription.MediaSubType
    static let proRes4444: CMFormatDescription.MediaSubType
    static let proRes422HQ: CMFormatDescription.MediaSubType
    static let proRes422: CMFormatDescription.MediaSubType
    static let proRes422LT: CMFormatDescription.MediaSubType
    static let proRes422Proxy: CMFormatDescription.MediaSubType
    static let proResRAW: CMFormatDescription.MediaSubType
    static let proResRAWHQ: CMFormatDescription.MediaSubType
    static let mpeg1System: CMFormatDescription.MediaSubType
    static let mpeg2Transport: CMFormatDescription.MediaSubType
    static let mpeg2Program: CMFormatDescription.MediaSubType
    static let dv: CMFormatDescription.MediaSubType
    static let cea608: CMFormatDescription.MediaSubType
    static let cea708: CMFormatDescription.MediaSubType
    static let atsc: CMFormatDescription.MediaSubType
    static let qt: CMFormatDescription.MediaSubType
    static let mobile3GPP: CMFormatDescription.MediaSubType
    static let webVTT: CMFormatDescription.MediaSubType
    static let timeCode32: CMFormatDescription.MediaSubType
    static let timeCode64: CMFormatDescription.MediaSubType
    static let counter32: CMFormatDescription.MediaSubType
    static let counter64: CMFormatDescription.MediaSubType
    static let icy: CMFormatDescription.MediaSubType
    static let id3: CMFormatDescription.MediaSubType
    static let boxed: CMFormatDescription.MediaSubType
    static let emsg: CMFormatDescription.MediaSubType
  }
}

@available(watchOS 6.0, *)
extension CMFormatDescription {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  static var typeID: CFTypeID { get }
}

@available(watchOS 6.0, *)
extension CMFormatDescription {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func equalTo(_ otherFormatDescription: CMFormatDescription, extensionKeysToIgnore: [CMFormatDescription.Extensions.Key] = [], sampleDescriptionExtensionAtomKeysToIgnore: [String] = []) -> Bool
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var mediaType: CMFormatDescription.MediaType { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var mediaSubType: CMFormatDescription.MediaSubType { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var extensions: CMFormatDescription.Extensions { get }
}

@available(watchOS 6.0, *)
extension CMFormatDescription {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  static func == (lhs: CMFormatDescription, rhs: CMFormatDescription) -> Bool
}

@available(watchOS 6.0, *)
extension CMFormatDescription {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var audioStreamBasicDescription: AudioStreamBasicDescription? { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func withMagicCookie<R>(_ body: (UnsafeRawBufferPointer?) throws -> R) rethrows -> R
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var magicCookie: Data? { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var audioChannelLayout: ManagedAudioChannelLayout? { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var audioFormatList: [AudioFormatListItem] { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var richestDecodableFormat: AudioFormatListItem? { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var mostCompatibleFormat: AudioFormatListItem? { get }
}

@available(watchOS 6.0, *)
extension CMFormatDescription {
  struct EqualityMask : OptionSet {
    static let streamBasicDescription: CMFormatDescription.EqualityMask
    static let magicCookie: CMFormatDescription.EqualityMask
    static let channelLayout: CMFormatDescription.EqualityMask
    static let extensions: CMFormatDescription.EqualityMask
    static let all: CMFormatDescription.EqualityMask
  }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func equalTo(_ otherFormatDescription: CMAudioFormatDescription, equalityMask: CMFormatDescription.EqualityMask = .all) -> (Bool, equalityMask: CMFormatDescription.EqualityMask)
}

@available(watchOS 6.0, *)
extension CMFormatDescription {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  struct ParameterSetCollection : RandomAccessCollection {
  }
}

@available(watchOS 6.0, *)
extension CMFormatDescription {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var nalUnitHeaderLength: Int? { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var parameterSets: CMFormatDescription.ParameterSetCollection { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var dimensions: CMVideoDimensions { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func presentationDimensions(usePixelAspectRatio: Bool = true, useCleanAperture: Bool = true) -> CGSize
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func cleanAperture(originIsAtTopLeft: Bool) -> CGRect
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  static var extensionKeysCommonWithImageBuffers: [CMFormatDescription.Extensions.Key] { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func matchesImageBuffer(_ imageBuffer: CVImageBuffer) -> Bool
}

@available(watchOS 6.0, *)
extension CMFormatDescription {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func displayFlags() throws -> CMFormatDescription.Extensions.Value.TextDisplayFlags
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func justification() throws -> (horizontal: CMFormatDescription.Extensions.Value.TextJustification, vertical: CMFormatDescription.Extensions.Value.TextJustification)
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func defaultTextBox(originIsAtTopLeft: Bool, heightOfTextTrack: CGFloat) throws -> CGRect
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func defaultStyle() throws -> (localFontID: Int, bold: Bool, italic: Bool, underline: Bool, fontSize: CGFloat, colorComponents: [CGFloat])
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func fontName(localFontID: Int) throws -> String
}

@available(watchOS 6.0, *)
extension CMFormatDescription {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  struct TimeCode {
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    struct Flag : OptionSet {
      static let dropFrame: CMFormatDescription.TimeCode.Flag
      static let twentyFourHourMax: CMFormatDescription.TimeCode.Flag
      static let negTimesOK: CMFormatDescription.TimeCode.Flag
    }
  }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var frameDuration: CMTime { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var frameQuanta: UInt32 { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var timeCodeFlags: CMFormatDescription.TimeCode.Flag { get }
}

@available(watchOS 6.0, *)
extension CMFormatDescription {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func keyWithLocalID(_ localKeyID: OSType) -> [String : CFPropertyList]?
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var identifiers: [String] { get }
}

@available(watchOS 6.0, *)
extension CMTime {
  @available(watchOS 6.0, *)
  init(seconds: Double, preferredTimescale: CMTimeScale)
  @available(watchOS 6.0, *)
  init(value: CMTimeValue, timescale: CMTimeScale)
}

@available(watchOS 6.0, *)
extension CMTime {
  @available(watchOS 6.0, *)
  var isValid: Bool { get }
  @available(watchOS 6.0, *)
  var isPositiveInfinity: Bool { get }
  @available(watchOS 6.0, *)
  var isNegativeInfinity: Bool { get }
  @available(watchOS 6.0, *)
  var isIndefinite: Bool { get }
  @available(watchOS 6.0, *)
  var isNumeric: Bool { get }
  @available(watchOS 6.0, *)
  var hasBeenRounded: Bool { get }
  @available(watchOS 6.0, *)
  var seconds: Double { get }
  @available(watchOS 6.0, *)
  func convertScale(_ newTimescale: Int32, method: CMTimeRoundingMethod) -> CMTime
}

@available(watchOS 6.0, *)
extension CMTime {
  @available(watchOS 6.0, *)
  static func + (addend1: CMTime, addend2: CMTime) -> CMTime
  @available(watchOS 6.0, *)
  static func - (minuend: CMTime, subtrahend: CMTime) -> CMTime
}

@available(watchOS 6.0, *)
extension CMTime : Equatable, Comparable {
  @available(watchOS 6.0, *)
  static func != (time1: CMTime, time2: CMTime) -> Bool
}

@available(watchOS 6.0, *)
extension CMBlockBuffer {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  struct Slice {
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension CMBlockBuffer : CMBlockBufferProtocol {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension CMBlockBuffer {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  typealias CustomBlockAllocator = (Int) -> UnsafeMutableRawPointer?
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  typealias CustomBlockDeallocator = (UnsafeMutableRawPointer, Int) -> Void
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension CMBlockBuffer : _CMBlockBufferInitTrampoline {
}

@available(watchOS 6.0, *)
extension CMBlockBuffer {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  struct Error {
    static let structureAllocationFailed: NSError
    static let blockAllocationFailed: NSError
    static let badCustomBlockSource: NSError
    static let badOffsetParameter: NSError
    static let badLengthParameter: NSError
    static let badPointerParameter: NSError
    static let emptyBlockBuffer: NSError
    static let unallocatedBlock: NSError
    static let insufficientSpace: NSError
  }
}

@available(watchOS 6.0, *)
extension CMBlockBuffer {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  struct Flags : OptionSet {
    static let assureMemoryNow: CMBlockBuffer.Flags
    static let alwaysCopyData: CMBlockBuffer.Flags
    static let dontOptimizeDepth: CMBlockBuffer.Flags
    static let permitEmptyReference: CMBlockBuffer.Flags
  }
}

@available(watchOS 6.0, *)
extension CMBlockBuffer {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func append(length: Int, allocator: CFAllocator? = kCFAllocatorDefault, range: Range<Int>? = nil, flags: CMBlockBuffer.Flags = []) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func append(buffer: UnsafeMutableRawBufferPointer, allocator: CFAllocator? = kCFAllocatorDefault, flags: CMBlockBuffer.Flags = []) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func append(buffer: Slice<UnsafeMutableRawBufferPointer>, allocator: CFAllocator? = kCFAllocatorDefault, flags: CMBlockBuffer.Flags = []) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func append(length: Int, allocator: @escaping CMBlockBuffer.CustomBlockAllocator, deallocator: @escaping CMBlockBuffer.CustomBlockDeallocator, range: Range<Int>? = nil, flags: CMBlockBuffer.Flags = []) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func append(buffer: UnsafeMutableRawBufferPointer, deallocator: @escaping CMBlockBuffer.CustomBlockDeallocator, flags: CMBlockBuffer.Flags = []) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func append(buffer: Slice<UnsafeMutableRawBufferPointer>, deallocator: @escaping CMBlockBuffer.CustomBlockDeallocator, flags: CMBlockBuffer.Flags = []) throws
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func append<T>(bufferReference: T, flags: CMBlockBuffer.Flags = []) throws where T : CMBlockBufferProtocol
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func assureBlockMemory() throws
}

@available(watchOS 6.0, *)
extension CMBlockBuffer {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func withUnsafeMutableBytes<R>(atOffset offset: Int = 0, _ body: (UnsafeMutableRawBufferPointer) throws -> R) throws -> R
}

@available(watchOS 6.0, *)
extension CMBlockBuffer {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  var isEmpty: Bool { get }
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  class var typeID: CFTypeID { get }
}

