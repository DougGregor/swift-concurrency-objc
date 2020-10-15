
var kCMIOSampleBufferNoDiscontinuities: Int { get }
var kCMIOSampleBufferDiscontinuityFlag_UnknownDiscontinuity: Int { get }
var kCMIOSampleBufferDiscontinuityFlag_TimecodeDiscontinuity: Int { get }
var kCMIOSampleBufferDiscontinuityFlag_PacketError: Int { get }
var kCMIOSampleBufferDiscontinuityFlag_StreamDiscontinuity: Int { get }
var kCMIOSampleBufferDiscontinuityFlag_MalformedData: Int { get }
var kCMIOSampleBufferDiscontinuityFlag_DataWasFlushed: Int { get }
var kCMIOSampleBufferDiscontinuityFlag_DataWasDropped: Int { get }
var kCMIOSampleBufferDiscontinuityFlag_BufferOverrun: Int { get }
var kCMIOSampleBufferDiscontinuityFlag_DiscontinuityInDTS: Int { get }
var kCMIOSampleBufferDiscontinuityFlag_RelatedToDiscontinuity: Int { get }
var kCMIOSampleBufferDiscontinuityFlag_ClientSyncDiscontinuity: Int { get }
var kCMIOSampleBufferDiscontinuityFlag_TrickPlay: Int { get }
var kCMIOSampleBufferDiscontinuityFlag_NoDataMarker: Int { get }
var kCMIOSampleBufferDiscontinuityFlag_DataFormatChanged: Int { get }
var kCMIOSampleBufferDiscontinuityFlag_TimingReferenceJumped: Int { get }
var kCMIOSampleBufferDiscontinuityFlag_DurationWasExtended: Int { get }
var kCMIOSampleBufferDiscontinuityFlag_SleepWakeCycle: Int { get }
var kCMIOSampleBufferDiscontinuityFlag_CodecSettingsChanged: Int { get }
var kCMIOSampleBufferNoDataEvent_Unknown: Int { get }
var kCMIOSampleBufferNoDataEvent_NoMedia: Int { get }
var kCMIOSampleBufferNoDataEvent_DeviceDidNotSync: Int { get }
var kCMIOSampleBufferNoDataEvent_DeviceInWrongMode: Int { get }
var kCMIOSampleBufferNoDataEvent_ProcessingError: Int { get }
var kCMIOSampleBufferNoDataEvent_SleepWakeCycle: Int { get }
@available(macOS 10.7, *)
var kCMIOSampleBufferAttachmentKey_DiscontinuityFlags: Unmanaged<CFString>!
@available(macOS 10.7, *)
var kCMIOSampleBufferAttachmentKey_SequenceNumber: Unmanaged<CFString>!
@available(macOS 10.7, *)
var kCMIOSampleBufferAttachmentKey_HDV1_PackData: Unmanaged<CFString>!
@available(macOS 10.7, *)
var kCMIOSampleBufferAttachmentKey_HDV2_VAUX: Unmanaged<CFString>!
@available(macOS 10.7, *)
var kCMIOSampleBufferAttachmentKey_CAAudioTimeStamp: Unmanaged<CFString>!
@available(macOS 10.7, *)
var kCMIOSampleBufferAttachmentKey_SMPTETime: Unmanaged<CFString>!
@available(macOS 10.7, *)
var kCMIOSampleBufferAttachmentKey_NativeSMPTEFrameCount: Unmanaged<CFString>!
@available(macOS 10.7, *)
var kCMIOSampleBufferAttachmentKey_NumberOfVideoFramesInBuffer: Unmanaged<CFString>!
@available(macOS 10.7, *)
var kCMIOSampleBufferAttachmentKey_NumberOfVideoFramesInGOP: Unmanaged<CFString>!
@available(macOS 10.7, *)
var kCMIOSampleBufferAttachmentKey_MuxedSourcePresentationTimeStamp: Unmanaged<CFString>!
@available(macOS 10.7, *)
var kCMIOSampleBufferAttachmentKey_HostTime: Unmanaged<CFString>!
@available(macOS 10.7, *)
var kCMIOSampleBufferAttachmentKey_RepeatedBufferContents: Unmanaged<CFString>!
@available(macOS 10.7, *)
var kCMIOSampleBufferAttachmentKey_SourceAudioFormatDescription: Unmanaged<CFString>!
@available(macOS 10.7, *)
var kCMIOSampleBufferAttachmentKey_PulldownCadenceInfo: Unmanaged<CFString>!
@available(macOS 10.7, *)
var kCMIOSampleBufferAttachmentKey_ClosedCaptionSampleBuffer: Unmanaged<CFString>!
@available(macOS 10.8, *)
var kCMIOSampleBufferAttachmentKey_ClientSequenceID: Unmanaged<CFString>!
@available(macOS 10.8, *)
var kCMIOSampleBufferAttachmentKey_MouseAndKeyboardModifiers: Unmanaged<CFString>!
@available(macOS 10.8, *)
var kCMIOSampleBufferAttachment_MouseAndKeyboardModifiersKey_CursorPositionX: Unmanaged<CFString>!
@available(macOS 10.8, *)
var kCMIOSampleBufferAttachment_MouseAndKeyboardModifiersKey_CursorPositionY: Unmanaged<CFString>!
@available(macOS 10.8, *)
var kCMIOSampleBufferAttachment_MouseAndKeyboardModifiersKey_MouseButtonState: Unmanaged<CFString>!
@available(macOS 10.13, *)
var kCMIOSampleBufferAttachment_MouseAndKeyboardModifiersKey_CursorIsVisible: Unmanaged<CFString>!
@available(macOS 10.13, *)
var kCMIOSampleBufferAttachment_MouseAndKeyboardModifiersKey_CursorFrameRect: Unmanaged<CFString>!
@available(macOS 10.13, *)
var kCMIOSampleBufferAttachment_MouseAndKeyboardModifiersKey_CursorReference: Unmanaged<CFString>!
@available(macOS 10.13, *)
var kCMIOSampleBufferAttachment_MouseAndKeyboardModifiersKey_CursorSeed: Unmanaged<CFString>!
@available(macOS 10.13, *)
var kCMIOSampleBufferAttachment_MouseAndKeyboardModifiersKey_CursorScale: Unmanaged<CFString>!
@available(macOS 10.14, *)
var kCMIOSampleBufferAttachment_MouseAndKeyboardModifiersKey_CursorIsDrawnInFramebuffer: Unmanaged<CFString>!
@available(macOS 10.8, *)
var kCMIOSampleBufferAttachment_MouseAndKeyboardModifiersKey_KeyboardModifiers: Unmanaged<CFString>!
@available(macOS 10.14, *)
var kCMIOSampleBufferAttachment_MouseAndKeyboardModifiersKey_KeyboardModifiersEvent: Unmanaged<CFString>!
@available(macOS 10.7, *)
var kCMIOSampleBufferAttachmentKey_NoDataMarker: Unmanaged<CFString>!
@available(macOS 10.7, *)
var kCMIOBlockBufferAttachmentKey_CVPixelBufferReference: Unmanaged<CFString>!
@available(macOS 10.7, *)
func CMIOSampleBufferCreate(_ allocator: CFAllocator!, _ dataBuffer: CMBlockBuffer!, _ formatDescription: CMFormatDescription!, _ numSamples: UInt32, _ numSampleTimingEntries: UInt32, _ sampleTimingArray: UnsafePointer<CMSampleTimingInfo>!, _ numSampleSizeEntries: UInt32, _ sampleSizeArray: UnsafePointer<Int>!, _ sequenceNumber: UInt64, _ discontinuityFlags: UInt32, _ sBufOut: UnsafeMutablePointer<Unmanaged<CMSampleBuffer>?>!) -> OSStatus
@available(macOS 10.7, *)
func CMIOSampleBufferCreateForImageBuffer(_ allocator: CFAllocator!, _ imageBuffer: CVImageBuffer!, _ formatDescription: CMVideoFormatDescription!, _ sampleTiming: UnsafePointer<CMSampleTimingInfo>!, _ sequenceNumber: UInt64, _ discontinuityFlags: UInt32, _ sBufOut: UnsafeMutablePointer<Unmanaged<CMSampleBuffer>?>!) -> OSStatus
@available(macOS 10.7, *)
func CMIOSampleBufferCreateNoDataMarker(_ allocator: CFAllocator!, _ noDataEvent: UInt32, _ formatDescription: CMFormatDescription!, _ sequenceNumber: UInt64, _ discontinuityFlags: UInt32, _ sBufOut: UnsafeMutablePointer<Unmanaged<CMSampleBuffer>?>!) -> OSStatus
@available(macOS 10.7, *)
func CMIOSampleBufferSetSequenceNumber(_ allocator: CFAllocator!, _ sbuf: CMSampleBuffer!, _ sequenceNumber: UInt64)
@available(macOS 10.7, *)
func CMIOSampleBufferGetSequenceNumber(_ sbuf: CMSampleBuffer!) -> UInt64
@available(macOS 10.7, *)
func CMIOSampleBufferSetDiscontinuityFlags(_ allocator: CFAllocator!, _ sbuf: CMSampleBuffer!, _ discontinuityFlags: UInt32)
@available(macOS 10.7, *)
func CMIOSampleBufferGetDiscontinuityFlags(_ sbuf: CMSampleBuffer!) -> UInt32
@available(macOS 10.7, *)
func CMIOSampleBufferCopyNonRequiredAttachments(_ sourceSBuf: CMSampleBuffer!, _ destSBuf: CMSampleBuffer!, _ attachmentMode: CMAttachmentMode) -> OSStatus
@available(macOS 10.7, *)
func CMIOSampleBufferCopySampleAttachments(_ sourceSBuf: CMSampleBuffer!, _ destSBuf: CMSampleBuffer!) -> OSStatus
