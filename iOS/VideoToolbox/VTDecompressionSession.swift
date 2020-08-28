
class VTDecompressionSession : _CFObject {
}
typealias VTDecompressionOutputCallback = @convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, OSStatus, VTDecodeInfoFlags, CVImageBuffer?, CMTime, CMTime) -> Void
struct VTDecompressionOutputCallbackRecord {
  var decompressionOutputCallback: VTDecompressionOutputCallback?
  var decompressionOutputRefCon: UnsafeMutableRawPointer?
  init()
  init(decompressionOutputCallback: VTDecompressionOutputCallback?, decompressionOutputRefCon: UnsafeMutableRawPointer?)
}
@available(iOS 8.0, *)
func VTDecompressionSessionCreate(allocator: CFAllocator?, formatDescription videoFormatDescription: CMVideoFormatDescription, decoderSpecification videoDecoderSpecification: CFDictionary?, imageBufferAttributes destinationImageBufferAttributes: CFDictionary?, outputCallback: UnsafePointer<VTDecompressionOutputCallbackRecord>?, decompressionSessionOut: UnsafeMutablePointer<VTDecompressionSession?>) -> OSStatus
@available(iOS 8.0, *)
func VTDecompressionSessionInvalidate(_ session: VTDecompressionSession)
@available(iOS 8.0, *)
func VTDecompressionSessionGetTypeID() -> CFTypeID
@available(iOS 8.0, *)
func VTDecompressionSessionDecodeFrame(_ session: VTDecompressionSession, sampleBuffer: CMSampleBuffer, flags decodeFlags: VTDecodeFrameFlags, frameRefcon sourceFrameRefCon: UnsafeMutableRawPointer?, infoFlagsOut: UnsafeMutablePointer<VTDecodeInfoFlags>?) -> OSStatus
typealias VTDecompressionOutputHandler = (OSStatus, VTDecodeInfoFlags, CVImageBuffer?, CMTime, CMTime) -> Void
@available(iOS 9.0, *)
func VTDecompressionSessionDecodeFrame(_ session: VTDecompressionSession, sampleBuffer: CMSampleBuffer, flags decodeFlags: VTDecodeFrameFlags, infoFlagsOut: UnsafeMutablePointer<VTDecodeInfoFlags>?, outputHandler: @escaping VTDecompressionOutputHandler) -> OSStatus
@available(iOS 8.0, *)
func VTDecompressionSessionFinishDelayedFrames(_ session: VTDecompressionSession) -> OSStatus
@available(iOS 8.0, *)
func VTDecompressionSessionCanAcceptFormatDescription(_ session: VTDecompressionSession, formatDescription newFormatDesc: CMFormatDescription) -> Bool
@available(iOS 8.0, *)
func VTDecompressionSessionWaitForAsynchronousFrames(_ session: VTDecompressionSession) -> OSStatus
@available(iOS 8.0, *)
func VTDecompressionSessionCopyBlackPixelBuffer(_ session: VTDecompressionSession, pixelBufferOut: UnsafeMutablePointer<CVPixelBuffer?>) -> OSStatus
@available(iOS 11.0, *)
func VTIsHardwareDecodeSupported(_ codecType: CMVideoCodecType) -> Bool
