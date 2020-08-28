
class VTDecompressionSession : _CFObject {
}
typealias VTDecompressionOutputCallback = @convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, OSStatus, VTDecodeInfoFlags, CVImageBuffer?, CMTime, CMTime) -> Void
struct VTDecompressionOutputCallbackRecord {
  var decompressionOutputCallback: VTDecompressionOutputCallback?
  var decompressionOutputRefCon: UnsafeMutableRawPointer?
  init()
  init(decompressionOutputCallback: VTDecompressionOutputCallback?, decompressionOutputRefCon: UnsafeMutableRawPointer?)
}
@available(tvOS 10.2, *)
func VTDecompressionSessionCreate(allocator: CFAllocator?, formatDescription videoFormatDescription: CMVideoFormatDescription, decoderSpecification videoDecoderSpecification: CFDictionary?, imageBufferAttributes destinationImageBufferAttributes: CFDictionary?, outputCallback: UnsafePointer<VTDecompressionOutputCallbackRecord>?, decompressionSessionOut: UnsafeMutablePointer<VTDecompressionSession?>) -> OSStatus
@available(tvOS 10.2, *)
func VTDecompressionSessionInvalidate(_ session: VTDecompressionSession)
@available(tvOS 10.2, *)
func VTDecompressionSessionGetTypeID() -> CFTypeID
@available(tvOS 10.2, *)
func VTDecompressionSessionDecodeFrame(_ session: VTDecompressionSession, sampleBuffer: CMSampleBuffer, flags decodeFlags: VTDecodeFrameFlags, frameRefcon sourceFrameRefCon: UnsafeMutableRawPointer?, infoFlagsOut: UnsafeMutablePointer<VTDecodeInfoFlags>?) -> OSStatus
typealias VTDecompressionOutputHandler = (OSStatus, VTDecodeInfoFlags, CVImageBuffer?, CMTime, CMTime) -> Void
@available(tvOS 10.2, *)
func VTDecompressionSessionDecodeFrame(_ session: VTDecompressionSession, sampleBuffer: CMSampleBuffer, flags decodeFlags: VTDecodeFrameFlags, infoFlagsOut: UnsafeMutablePointer<VTDecodeInfoFlags>?, outputHandler: @escaping VTDecompressionOutputHandler) -> OSStatus
@available(tvOS 10.2, *)
func VTDecompressionSessionFinishDelayedFrames(_ session: VTDecompressionSession) -> OSStatus
@available(tvOS 10.2, *)
func VTDecompressionSessionCanAcceptFormatDescription(_ session: VTDecompressionSession, formatDescription newFormatDesc: CMFormatDescription) -> Bool
@available(tvOS 10.2, *)
func VTDecompressionSessionWaitForAsynchronousFrames(_ session: VTDecompressionSession) -> OSStatus
@available(tvOS 10.2, *)
func VTDecompressionSessionCopyBlackPixelBuffer(_ session: VTDecompressionSession, pixelBufferOut: UnsafeMutablePointer<CVPixelBuffer?>) -> OSStatus
@available(tvOS 11.0, *)
func VTIsHardwareDecodeSupported(_ codecType: CMVideoCodecType) -> Bool
