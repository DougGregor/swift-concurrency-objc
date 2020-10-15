
class VTCompressionSession : _CFObject {
}
typealias VTCompressionOutputCallback = @convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, OSStatus, VTEncodeInfoFlags, CMSampleBuffer?) -> Void
@available(iOS 8.0, *)
let kVTVideoEncoderSpecification_EncoderID: CFString
@available(iOS 8.0, *)
func VTCompressionSessionCreate(allocator: CFAllocator?, width: Int32, height: Int32, codecType: CMVideoCodecType, encoderSpecification: CFDictionary?, imageBufferAttributes sourceImageBufferAttributes: CFDictionary?, compressedDataAllocator: CFAllocator?, outputCallback: VTCompressionOutputCallback?, refcon outputCallbackRefCon: UnsafeMutableRawPointer?, compressionSessionOut: UnsafeMutablePointer<VTCompressionSession?>) -> OSStatus
@available(iOS 8.0, *)
func VTCompressionSessionInvalidate(_ session: VTCompressionSession)
@available(iOS 8.0, *)
func VTCompressionSessionGetTypeID() -> CFTypeID
@available(iOS 8.0, *)
func VTCompressionSessionGetPixelBufferPool(_ session: VTCompressionSession) -> CVPixelBufferPool?
@available(iOS 8.0, *)
func VTCompressionSessionPrepareToEncodeFrames(_ session: VTCompressionSession) -> OSStatus
@available(iOS 8.0, *)
func VTCompressionSessionEncodeFrame(_ session: VTCompressionSession, imageBuffer: CVImageBuffer, presentationTimeStamp: CMTime, duration: CMTime, frameProperties: CFDictionary?, sourceFrameRefcon: UnsafeMutableRawPointer?, infoFlagsOut: UnsafeMutablePointer<VTEncodeInfoFlags>?) -> OSStatus
typealias VTCompressionOutputHandler = (OSStatus, VTEncodeInfoFlags, CMSampleBuffer?) -> Void
@available(iOS 9.0, *)
func VTCompressionSessionEncodeFrame(_ session: VTCompressionSession, imageBuffer: CVImageBuffer, presentationTimeStamp: CMTime, duration: CMTime, frameProperties: CFDictionary?, infoFlagsOut: UnsafeMutablePointer<VTEncodeInfoFlags>?, outputHandler: @escaping VTCompressionOutputHandler) -> OSStatus
@available(iOS 8.0, *)
func VTCompressionSessionCompleteFrames(_ session: VTCompressionSession, untilPresentationTimeStamp completeUntilPresentationTimeStamp: CMTime) -> OSStatus
struct VTCompressionSessionOptionFlags : OptionSet {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var beginFinalPass: VTCompressionSessionOptionFlags { get }
}
@available(iOS 8.0, *)
func VTCompressionSessionBeginPass(_ session: VTCompressionSession, flags beginPassFlags: VTCompressionSessionOptionFlags, _ reserved: UnsafeMutablePointer<UInt32>?) -> OSStatus
@available(iOS 8.0, *)
func VTCompressionSessionEndPass(_ session: VTCompressionSession, furtherPassesRequestedOut: UnsafeMutablePointer<DarwinBoolean>?, _ reserved: UnsafeMutablePointer<UInt32>?) -> OSStatus
@available(iOS 8.0, *)
func VTCompressionSessionGetTimeRangesForNextPass(_ session: VTCompressionSession, timeRangeCountOut: UnsafeMutablePointer<CMItemCount>, timeRangeArrayOut: UnsafeMutablePointer<UnsafePointer<CMTimeRange>?>) -> OSStatus
