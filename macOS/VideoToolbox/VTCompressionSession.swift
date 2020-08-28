
class VTCompressionSession : _CFObject {
}
typealias VTCompressionOutputCallback = @convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, OSStatus, VTEncodeInfoFlags, CMSampleBuffer?) -> Void
@available(macOS 10.8, *)
let kVTVideoEncoderSpecification_EncoderID: CFString
@available(macOS 10.8, *)
func VTCompressionSessionCreate(allocator: CFAllocator?, width: Int32, height: Int32, codecType: CMVideoCodecType, encoderSpecification: CFDictionary?, imageBufferAttributes sourceImageBufferAttributes: CFDictionary?, compressedDataAllocator: CFAllocator?, outputCallback: VTCompressionOutputCallback?, refcon outputCallbackRefCon: UnsafeMutableRawPointer?, compressionSessionOut: UnsafeMutablePointer<VTCompressionSession?>) -> OSStatus
@available(macOS 10.8, *)
func VTCompressionSessionInvalidate(_ session: VTCompressionSession)
@available(macOS 10.8, *)
func VTCompressionSessionGetTypeID() -> CFTypeID
@available(macOS 10.8, *)
func VTCompressionSessionGetPixelBufferPool(_ session: VTCompressionSession) -> CVPixelBufferPool?
@available(macOS 10.9, *)
func VTCompressionSessionPrepareToEncodeFrames(_ session: VTCompressionSession) -> OSStatus
@available(macOS 10.8, *)
func VTCompressionSessionEncodeFrame(_ session: VTCompressionSession, imageBuffer: CVImageBuffer, presentationTimeStamp: CMTime, duration: CMTime, frameProperties: CFDictionary?, sourceFrameRefcon: UnsafeMutableRawPointer?, infoFlagsOut: UnsafeMutablePointer<VTEncodeInfoFlags>?) -> OSStatus
typealias VTCompressionOutputHandler = (OSStatus, VTEncodeInfoFlags, CMSampleBuffer?) -> Void
@available(macOS 10.11, *)
func VTCompressionSessionEncodeFrame(_ session: VTCompressionSession, imageBuffer: CVImageBuffer, presentationTimeStamp: CMTime, duration: CMTime, frameProperties: CFDictionary?, infoFlagsOut: UnsafeMutablePointer<VTEncodeInfoFlags>?, outputHandler: @escaping VTCompressionOutputHandler) -> OSStatus
@available(macOS 10.8, *)
func VTCompressionSessionCompleteFrames(_ session: VTCompressionSession, untilPresentationTimeStamp completeUntilPresentationTimeStamp: CMTime) -> OSStatus
struct VTCompressionSessionOptionFlags : OptionSet {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var beginFinalPass: VTCompressionSessionOptionFlags { get }
}
@available(macOS 10.10, *)
func VTCompressionSessionBeginPass(_ session: VTCompressionSession, flags beginPassFlags: VTCompressionSessionOptionFlags, _ reserved: UnsafeMutablePointer<UInt32>?) -> OSStatus
@available(macOS 10.10, *)
func VTCompressionSessionEndPass(_ session: VTCompressionSession, furtherPassesRequestedOut: UnsafeMutablePointer<DarwinBoolean>?, _ reserved: UnsafeMutablePointer<UInt32>?) -> OSStatus
@available(macOS 10.10, *)
func VTCompressionSessionGetTimeRangesForNextPass(_ session: VTCompressionSession, timeRangeCountOut: UnsafeMutablePointer<CMItemCount>, timeRangeArrayOut: UnsafeMutablePointer<UnsafePointer<CMTimeRange>?>) -> OSStatus
