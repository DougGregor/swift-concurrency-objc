
typealias AudioQueuePropertyID = UInt32
typealias AudioQueueParameterID = UInt32
typealias AudioQueueParameterValue = Float32
typealias AudioQueueRef = OpaquePointer
typealias AudioQueueTimelineRef = OpaquePointer
var kAudioQueueErr_InvalidBuffer: OSStatus { get }
var kAudioQueueErr_BufferEmpty: OSStatus { get }
var kAudioQueueErr_DisposalPending: OSStatus { get }
var kAudioQueueErr_InvalidProperty: OSStatus { get }
var kAudioQueueErr_InvalidPropertySize: OSStatus { get }
var kAudioQueueErr_InvalidParameter: OSStatus { get }
var kAudioQueueErr_CannotStart: OSStatus { get }
var kAudioQueueErr_InvalidDevice: OSStatus { get }
var kAudioQueueErr_BufferInQueue: OSStatus { get }
var kAudioQueueErr_InvalidRunState: OSStatus { get }
var kAudioQueueErr_InvalidQueueType: OSStatus { get }
var kAudioQueueErr_Permissions: OSStatus { get }
var kAudioQueueErr_InvalidPropertyValue: OSStatus { get }
var kAudioQueueErr_PrimeTimedOut: OSStatus { get }
var kAudioQueueErr_CodecNotFound: OSStatus { get }
var kAudioQueueErr_InvalidCodecAccess: OSStatus { get }
var kAudioQueueErr_QueueInvalidated: OSStatus { get }
var kAudioQueueErr_TooManyTaps: OSStatus { get }
var kAudioQueueErr_InvalidTapContext: OSStatus { get }
var kAudioQueueErr_RecordUnderrun: OSStatus { get }
var kAudioQueueErr_InvalidTapType: OSStatus { get }
var kAudioQueueErr_BufferEnqueuedTwice: OSStatus { get }
var kAudioQueueErr_CannotStartYet: OSStatus { get }
var kAudioQueueErr_EnqueueDuringReset: OSStatus { get }
var kAudioQueueErr_InvalidOfflineMode: OSStatus { get }
var kAudioQueueProperty_IsRunning: AudioQueuePropertyID { get }
var kAudioQueueDeviceProperty_SampleRate: AudioQueuePropertyID { get }
var kAudioQueueDeviceProperty_NumberChannels: AudioQueuePropertyID { get }
var kAudioQueueProperty_CurrentDevice: AudioQueuePropertyID { get }
var kAudioQueueProperty_MagicCookie: AudioQueuePropertyID { get }
var kAudioQueueProperty_MaximumOutputPacketSize: AudioQueuePropertyID { get }
var kAudioQueueProperty_StreamDescription: AudioQueuePropertyID { get }
var kAudioQueueProperty_ChannelLayout: AudioQueuePropertyID { get }
var kAudioQueueProperty_EnableLevelMetering: AudioQueuePropertyID { get }
var kAudioQueueProperty_CurrentLevelMeter: AudioQueuePropertyID { get }
var kAudioQueueProperty_CurrentLevelMeterDB: AudioQueuePropertyID { get }
var kAudioQueueProperty_DecodeBufferSizeFrames: AudioQueuePropertyID { get }
var kAudioQueueProperty_ConverterError: AudioQueuePropertyID { get }
var kAudioQueueProperty_EnableTimePitch: AudioQueuePropertyID { get }
var kAudioQueueProperty_TimePitchAlgorithm: AudioQueuePropertyID { get }
var kAudioQueueProperty_TimePitchBypass: AudioQueuePropertyID { get }
var kAudioQueueTimePitchAlgorithm_Spectral: UInt32 { get }
var kAudioQueueTimePitchAlgorithm_TimeDomain: UInt32 { get }
var kAudioQueueTimePitchAlgorithm_Varispeed: UInt32 { get }
@available(iOS, introduced: 2.0, deprecated: 13.0, message: "Low Quality Zero Latency algorithm is now Deprecated. Please choose from other available options")
var kAudioQueueTimePitchAlgorithm_LowQualityZeroLatency: UInt32 { get }
var kAudioQueueProperty_HardwareCodecPolicy: AudioQueuePropertyID { get }
var kAudioQueueHardwareCodecPolicy_Default: UInt32 { get }
var kAudioQueueHardwareCodecPolicy_UseSoftwareOnly: UInt32 { get }
var kAudioQueueHardwareCodecPolicy_UseHardwareOnly: UInt32 { get }
var kAudioQueueHardwareCodecPolicy_PreferSoftware: UInt32 { get }
var kAudioQueueHardwareCodecPolicy_PreferHardware: UInt32 { get }
var kAudioQueueProperty_ChannelAssignments: AudioQueuePropertyID { get }
var kAudioQueueParam_Volume: AudioQueueParameterID { get }
var kAudioQueueParam_PlayRate: AudioQueueParameterID { get }
var kAudioQueueParam_Pitch: AudioQueueParameterID { get }
var kAudioQueueParam_VolumeRampTime: AudioQueueParameterID { get }
var kAudioQueueParam_Pan: AudioQueueParameterID { get }
struct AudioQueueProcessingTapFlags : OptionSet {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var preEffects: AudioQueueProcessingTapFlags { get }
  static var postEffects: AudioQueueProcessingTapFlags { get }
  static var siphon: AudioQueueProcessingTapFlags { get }
  static var startOfStream: AudioQueueProcessingTapFlags { get }
  static var endOfStream: AudioQueueProcessingTapFlags { get }
}
struct AudioQueueBuffer {
  var mAudioDataBytesCapacity: UInt32 { get }
  var mAudioData: UnsafeMutableRawPointer { get }
  var mAudioDataByteSize: UInt32
  var mUserData: UnsafeMutableRawPointer?
  var mPacketDescriptionCapacity: UInt32 { get }
  var mPacketDescriptions: UnsafeMutablePointer<AudioStreamPacketDescription>? { get }
  var mPacketDescriptionCount: UInt32
  init(mAudioDataBytesCapacity: UInt32, mAudioData: UnsafeMutableRawPointer, mAudioDataByteSize: UInt32, mUserData: UnsafeMutableRawPointer?, mPacketDescriptionCapacity: UInt32, mPacketDescriptions: UnsafeMutablePointer<AudioStreamPacketDescription>?, mPacketDescriptionCount: UInt32)
}
typealias AudioQueueBufferRef = UnsafeMutablePointer<AudioQueueBuffer>
struct AudioQueueParameterEvent {
  var mID: AudioQueueParameterID
  var mValue: AudioQueueParameterValue
  init()
  init(mID: AudioQueueParameterID, mValue: AudioQueueParameterValue)
}
struct AudioQueueLevelMeterState {
  var mAveragePower: Float32
  var mPeakPower: Float32
  init()
  init(mAveragePower: Float32, mPeakPower: Float32)
}
typealias AudioQueueProcessingTapRef = OpaquePointer
struct AudioQueueChannelAssignment {
  var mDeviceUID: Unmanaged<CFString>
  var mChannelNumber: UInt32
  init(mDeviceUID: Unmanaged<CFString>, mChannelNumber: UInt32)
}
typealias AudioQueueOutputCallbackBlock = (AudioQueueRef, AudioQueueBufferRef) -> Void
typealias AudioQueueInputCallbackBlock = (AudioQueueRef, AudioQueueBufferRef, UnsafePointer<AudioTimeStamp>, UInt32, UnsafePointer<AudioStreamPacketDescription>?) -> Void
typealias AudioQueueOutputCallback = @convention(c) (UnsafeMutableRawPointer?, AudioQueueRef, AudioQueueBufferRef) -> Void
typealias AudioQueueInputCallback = @convention(c) (UnsafeMutableRawPointer?, AudioQueueRef, AudioQueueBufferRef, UnsafePointer<AudioTimeStamp>, UInt32, UnsafePointer<AudioStreamPacketDescription>?) -> Void
typealias AudioQueuePropertyListenerProc = @convention(c) (UnsafeMutableRawPointer?, AudioQueueRef, AudioQueuePropertyID) -> Void
typealias AudioQueueProcessingTapCallback = @convention(c) (UnsafeMutableRawPointer, AudioQueueProcessingTapRef, UInt32, UnsafeMutablePointer<AudioTimeStamp>, UnsafeMutablePointer<AudioQueueProcessingTapFlags>, UnsafeMutablePointer<UInt32>, UnsafeMutablePointer<AudioBufferList>) -> Void
@available(iOS 2.0, *)
func AudioQueueNewOutput(_ inFormat: UnsafePointer<AudioStreamBasicDescription>, _ inCallbackProc: AudioQueueOutputCallback, _ inUserData: UnsafeMutableRawPointer?, _ inCallbackRunLoop: CFRunLoop?, _ inCallbackRunLoopMode: CFString?, _ inFlags: UInt32, _ outAQ: UnsafeMutablePointer<AudioQueueRef?>) -> OSStatus
@available(iOS 2.0, *)
func AudioQueueNewInput(_ inFormat: UnsafePointer<AudioStreamBasicDescription>, _ inCallbackProc: AudioQueueInputCallback, _ inUserData: UnsafeMutableRawPointer?, _ inCallbackRunLoop: CFRunLoop?, _ inCallbackRunLoopMode: CFString?, _ inFlags: UInt32, _ outAQ: UnsafeMutablePointer<AudioQueueRef?>) -> OSStatus
@available(iOS 10.0, *)
func AudioQueueNewOutputWithDispatchQueue(_ outAQ: UnsafeMutablePointer<AudioQueueRef?>, _ inFormat: UnsafePointer<AudioStreamBasicDescription>, _ inFlags: UInt32, _ inCallbackDispatchQueue: DispatchQueue, _ inCallbackBlock: @escaping AudioQueueOutputCallbackBlock) -> OSStatus
@available(iOS 10.0, *)
func AudioQueueNewInputWithDispatchQueue(_ outAQ: UnsafeMutablePointer<AudioQueueRef?>, _ inFormat: UnsafePointer<AudioStreamBasicDescription>, _ inFlags: UInt32, _ inCallbackDispatchQueue: DispatchQueue, _ inCallbackBlock: @escaping AudioQueueInputCallbackBlock) -> OSStatus
@available(iOS 2.0, *)
func AudioQueueDispose(_ inAQ: AudioQueueRef, _ inImmediate: Bool) -> OSStatus
@available(iOS 2.0, *)
func AudioQueueAllocateBuffer(_ inAQ: AudioQueueRef, _ inBufferByteSize: UInt32, _ outBuffer: UnsafeMutablePointer<AudioQueueBufferRef?>) -> OSStatus
@available(iOS 2.0, *)
func AudioQueueAllocateBufferWithPacketDescriptions(_ inAQ: AudioQueueRef, _ inBufferByteSize: UInt32, _ inNumberPacketDescriptions: UInt32, _ outBuffer: UnsafeMutablePointer<AudioQueueBufferRef?>) -> OSStatus
@available(iOS 2.0, *)
func AudioQueueFreeBuffer(_ inAQ: AudioQueueRef, _ inBuffer: AudioQueueBufferRef) -> OSStatus
@available(iOS 2.0, *)
func AudioQueueEnqueueBuffer(_ inAQ: AudioQueueRef, _ inBuffer: AudioQueueBufferRef, _ inNumPacketDescs: UInt32, _ inPacketDescs: UnsafePointer<AudioStreamPacketDescription>?) -> OSStatus
@available(iOS 2.0, *)
func AudioQueueEnqueueBufferWithParameters(_ inAQ: AudioQueueRef, _ inBuffer: AudioQueueBufferRef, _ inNumPacketDescs: UInt32, _ inPacketDescs: UnsafePointer<AudioStreamPacketDescription>?, _ inTrimFramesAtStart: UInt32, _ inTrimFramesAtEnd: UInt32, _ inNumParamValues: UInt32, _ inParamValues: UnsafePointer<AudioQueueParameterEvent>?, _ inStartTime: UnsafePointer<AudioTimeStamp>?, _ outActualStartTime: UnsafeMutablePointer<AudioTimeStamp>?) -> OSStatus
@available(iOS 2.0, *)
func AudioQueueStart(_ inAQ: AudioQueueRef, _ inStartTime: UnsafePointer<AudioTimeStamp>?) -> OSStatus
@available(iOS 2.0, *)
func AudioQueuePrime(_ inAQ: AudioQueueRef, _ inNumberOfFramesToPrepare: UInt32, _ outNumberOfFramesPrepared: UnsafeMutablePointer<UInt32>?) -> OSStatus
@available(iOS 2.0, *)
func AudioQueueStop(_ inAQ: AudioQueueRef, _ inImmediate: Bool) -> OSStatus
@available(iOS 2.0, *)
func AudioQueuePause(_ inAQ: AudioQueueRef) -> OSStatus
@available(iOS 2.0, *)
func AudioQueueFlush(_ inAQ: AudioQueueRef) -> OSStatus
@available(iOS 2.0, *)
func AudioQueueReset(_ inAQ: AudioQueueRef) -> OSStatus
@available(iOS 2.0, *)
func AudioQueueGetParameter(_ inAQ: AudioQueueRef, _ inParamID: AudioQueueParameterID, _ outValue: UnsafeMutablePointer<AudioQueueParameterValue>) -> OSStatus
@available(iOS 2.0, *)
func AudioQueueSetParameter(_ inAQ: AudioQueueRef, _ inParamID: AudioQueueParameterID, _ inValue: AudioQueueParameterValue) -> OSStatus
@available(iOS 2.0, *)
func AudioQueueGetProperty(_ inAQ: AudioQueueRef, _ inID: AudioQueuePropertyID, _ outData: UnsafeMutableRawPointer, _ ioDataSize: UnsafeMutablePointer<UInt32>) -> OSStatus
@available(iOS 2.0, *)
func AudioQueueSetProperty(_ inAQ: AudioQueueRef, _ inID: AudioQueuePropertyID, _ inData: UnsafeRawPointer, _ inDataSize: UInt32) -> OSStatus
@available(iOS 2.0, *)
func AudioQueueGetPropertySize(_ inAQ: AudioQueueRef, _ inID: AudioQueuePropertyID, _ outDataSize: UnsafeMutablePointer<UInt32>) -> OSStatus
@available(iOS 2.0, *)
func AudioQueueAddPropertyListener(_ inAQ: AudioQueueRef, _ inID: AudioQueuePropertyID, _ inProc: AudioQueuePropertyListenerProc, _ inUserData: UnsafeMutableRawPointer?) -> OSStatus
@available(iOS 2.0, *)
func AudioQueueRemovePropertyListener(_ inAQ: AudioQueueRef, _ inID: AudioQueuePropertyID, _ inProc: AudioQueuePropertyListenerProc, _ inUserData: UnsafeMutableRawPointer?) -> OSStatus
@available(iOS 2.0, *)
func AudioQueueCreateTimeline(_ inAQ: AudioQueueRef, _ outTimeline: UnsafeMutablePointer<AudioQueueTimelineRef?>) -> OSStatus
@available(iOS 2.0, *)
func AudioQueueDisposeTimeline(_ inAQ: AudioQueueRef, _ inTimeline: AudioQueueTimelineRef) -> OSStatus
@available(iOS 2.0, *)
func AudioQueueGetCurrentTime(_ inAQ: AudioQueueRef, _ inTimeline: AudioQueueTimelineRef?, _ outTimeStamp: UnsafeMutablePointer<AudioTimeStamp>?, _ outTimelineDiscontinuity: UnsafeMutablePointer<DarwinBoolean>?) -> OSStatus
@available(iOS 2.0, *)
func AudioQueueDeviceGetCurrentTime(_ inAQ: AudioQueueRef, _ outTimeStamp: UnsafeMutablePointer<AudioTimeStamp>) -> OSStatus
@available(iOS 2.0, *)
func AudioQueueDeviceTranslateTime(_ inAQ: AudioQueueRef, _ inTime: UnsafePointer<AudioTimeStamp>, _ outTime: UnsafeMutablePointer<AudioTimeStamp>) -> OSStatus
@available(iOS 2.0, *)
func AudioQueueDeviceGetNearestStartTime(_ inAQ: AudioQueueRef, _ ioRequestedStartTime: UnsafeMutablePointer<AudioTimeStamp>, _ inFlags: UInt32) -> OSStatus
@available(iOS 2.0, *)
func AudioQueueSetOfflineRenderFormat(_ inAQ: AudioQueueRef, _ inFormat: UnsafePointer<AudioStreamBasicDescription>?, _ inLayout: UnsafePointer<AudioChannelLayout>?) -> OSStatus
@available(iOS 2.0, *)
func AudioQueueOfflineRender(_ inAQ: AudioQueueRef, _ inTimestamp: UnsafePointer<AudioTimeStamp>, _ ioBuffer: AudioQueueBufferRef, _ inNumberFrames: UInt32) -> OSStatus
@available(iOS 6.0, *)
func AudioQueueProcessingTapNew(_ inAQ: AudioQueueRef, _ inCallback: AudioQueueProcessingTapCallback, _ inClientData: UnsafeMutableRawPointer?, _ inFlags: AudioQueueProcessingTapFlags, _ outMaxFrames: UnsafeMutablePointer<UInt32>, _ outProcessingFormat: UnsafeMutablePointer<AudioStreamBasicDescription>, _ outAQTap: UnsafeMutablePointer<AudioQueueProcessingTapRef?>) -> OSStatus
@available(iOS 6.0, *)
func AudioQueueProcessingTapDispose(_ inAQTap: AudioQueueProcessingTapRef) -> OSStatus
@available(iOS 6.0, *)
func AudioQueueProcessingTapGetSourceAudio(_ inAQTap: AudioQueueProcessingTapRef, _ inNumberFrames: UInt32, _ ioTimeStamp: UnsafeMutablePointer<AudioTimeStamp>, _ outFlags: UnsafeMutablePointer<AudioQueueProcessingTapFlags>, _ outNumberFrames: UnsafeMutablePointer<UInt32>, _ ioData: UnsafeMutablePointer<AudioBufferList>) -> OSStatus
@available(iOS 6.0, *)
func AudioQueueProcessingTapGetQueueTime(_ inAQTap: AudioQueueProcessingTapRef, _ outQueueSampleTime: UnsafeMutablePointer<Float64>, _ outQueueFrameCount: UnsafeMutablePointer<UInt32>) -> OSStatus
