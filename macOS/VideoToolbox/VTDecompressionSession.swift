
class VTDecompressionSession : _CFObject {
}
typealias VTDecompressionOutputCallback = @convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, OSStatus, VTDecodeInfoFlags, CVImageBuffer?, CMTime, CMTime) -> Void
struct VTDecompressionOutputCallbackRecord {
  var decompressionOutputCallback: VTDecompressionOutputCallback?
  var decompressionOutputRefCon: UnsafeMutableRawPointer?
  init()
  init(decompressionOutputCallback: VTDecompressionOutputCallback?, decompressionOutputRefCon: UnsafeMutableRawPointer?)
}
@available(macOS 10.8, *)
func VTDecompressionSessionCreate(allocator: CFAllocator?, formatDescription videoFormatDescription: CMVideoFormatDescription, decoderSpecification videoDecoderSpecification: CFDictionary?, imageBufferAttributes destinationImageBufferAttributes: CFDictionary?, outputCallback: UnsafePointer<VTDecompressionOutputCallbackRecord>?, decompressionSessionOut: UnsafeMutablePointer<VTDecompressionSession?>) -> OSStatus
@available(macOS 10.8, *)
func VTDecompressionSessionInvalidate(_ session: VTDecompressionSession)
@available(macOS 10.8, *)
func VTDecompressionSessionGetTypeID() -> CFTypeID
@available(macOS 10.8, *)
func VTDecompressionSessionDecodeFrame(_ session: VTDecompressionSession, sampleBuffer: CMSampleBuffer, flags decodeFlags: VTDecodeFrameFlags, frameRefcon sourceFrameRefCon: UnsafeMutableRawPointer?, infoFlagsOut: UnsafeMutablePointer<VTDecodeInfoFlags>?) -> OSStatus
typealias VTDecompressionOutputHandler = (OSStatus, VTDecodeInfoFlags, CVImageBuffer?, CMTime, CMTime) -> Void
@available(macOS 10.11, *)
func VTDecompressionSessionDecodeFrame(_ session: VTDecompressionSession, sampleBuffer: CMSampleBuffer, flags decodeFlags: VTDecodeFrameFlags, infoFlagsOut: UnsafeMutablePointer<VTDecodeInfoFlags>?, outputHandler: @escaping VTDecompressionOutputHandler) -> OSStatus
@available(macOS 10.8, *)
func VTDecompressionSessionFinishDelayedFrames(_ session: VTDecompressionSession) -> OSStatus
@available(macOS 10.8, *)
func VTDecompressionSessionCanAcceptFormatDescription(_ session: VTDecompressionSession, formatDescription newFormatDesc: CMFormatDescription) -> Bool
@available(macOS 10.8, *)
func VTDecompressionSessionWaitForAsynchronousFrames(_ session: VTDecompressionSession) -> OSStatus
@available(macOS 10.8, *)
func VTDecompressionSessionCopyBlackPixelBuffer(_ session: VTDecompressionSession, pixelBufferOut: UnsafeMutablePointer<CVPixelBuffer?>) -> OSStatus
@available(macOS 10.13, *)
func VTIsHardwareDecodeSupported(_ codecType: CMVideoCodecType) -> Bool
