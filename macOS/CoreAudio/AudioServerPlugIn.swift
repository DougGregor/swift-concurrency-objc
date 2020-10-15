
typealias AudioServerPlugInHostRef = UnsafePointer<AudioServerPlugInHostInterface>
typealias AudioServerPlugInDriverRef = UnsafeMutablePointer<UnsafeMutablePointer<AudioServerPlugInDriverInterface>?>
struct AudioServerPlugInCustomPropertyInfo {
  var mSelector: AudioObjectPropertySelector
  var mPropertyDataType: UInt32
  var mQualifierDataType: UInt32
  init()
  init(mSelector: AudioObjectPropertySelector, mPropertyDataType: UInt32, mQualifierDataType: UInt32)
}
struct AudioServerPlugInClientInfo {
  var mClientID: UInt32
  var mProcessID: pid_t
  var mIsNativeEndian: DarwinBoolean
  var mBundleID: Unmanaged<CFString>?
  init()
  init(mClientID: UInt32, mProcessID: pid_t, mIsNativeEndian: DarwinBoolean, mBundleID: Unmanaged<CFString>?)
}
struct AudioServerPlugInIOCycleInfo {
  var mIOCycleCounter: UInt64
  var mNominalIOBufferFrameSize: UInt32
  var mCurrentTime: AudioTimeStamp
  var mInputTime: AudioTimeStamp
  var mOutputTime: AudioTimeStamp
  var mMasterHostTicksPerFrame: Float64
  var mDeviceHostTicksPerFrame: Float64
  init()
  init(mIOCycleCounter: UInt64, mNominalIOBufferFrameSize: UInt32, mCurrentTime: AudioTimeStamp, mInputTime: AudioTimeStamp, mOutputTime: AudioTimeStamp, mMasterHostTicksPerFrame: Float64, mDeviceHostTicksPerFrame: Float64)
}
var kAudioObjectPlugInObject: AudioObjectID { get }
var kAudioServerPlugInHostClientID: AudioObjectID { get }
typealias AudioServerPlugInCustomPropertyDataType = UInt32
var kAudioServerPlugInCustomPropertyDataTypeNone: AudioServerPlugInCustomPropertyDataType { get }
var kAudioServerPlugInCustomPropertyDataTypeCFString: AudioServerPlugInCustomPropertyDataType { get }
var kAudioServerPlugInCustomPropertyDataTypeCFPropertyList: AudioServerPlugInCustomPropertyDataType { get }
enum AudioServerPlugInIOOperation : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case thread
  case cycle
  case readInput
  case convertInput
  case processInput
  case processOutput
  case mixOutput
  case processMix
  case convertMix
  case writeMix
}
var kAudioObjectPropertyCustomPropertyInfoList: AudioObjectPropertySelector { get }
var kAudioPlugInPropertyResourceBundle: AudioObjectPropertySelector { get }
enum AudioDeviceClockAlgorithmSelector : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case algorithmRaw
  case algorithmSimpleIIR
  case algorithm12PtMovingWindowAverage
}
var kAudioDevicePropertyZeroTimeStampPeriod: AudioObjectPropertySelector { get }
var kAudioDevicePropertyClockAlgorithm: AudioObjectPropertySelector { get }
var kAudioDevicePropertyClockIsStable: AudioObjectPropertySelector { get }
struct AudioServerPlugInHostInterface {
  var PropertiesChanged: @convention(c) (AudioServerPlugInHostRef, AudioObjectID, UInt32, UnsafePointer<AudioObjectPropertyAddress>) -> OSStatus
  var CopyFromStorage: @convention(c) (AudioServerPlugInHostRef, CFString, UnsafeMutablePointer<Unmanaged<CFPropertyList>?>) -> OSStatus
  var WriteToStorage: @convention(c) (AudioServerPlugInHostRef, CFString, CFPropertyList) -> OSStatus
  var DeleteFromStorage: @convention(c) (AudioServerPlugInHostRef, CFString) -> OSStatus
  var RequestDeviceConfigurationChange: @convention(c) (AudioServerPlugInHostRef, AudioObjectID, UInt64, UnsafeMutableRawPointer?) -> OSStatus
  init(PropertiesChanged: @convention(c) (AudioServerPlugInHostRef, AudioObjectID, UInt32, UnsafePointer<AudioObjectPropertyAddress>) -> OSStatus, CopyFromStorage: @convention(c) (AudioServerPlugInHostRef, CFString, UnsafeMutablePointer<Unmanaged<CFPropertyList>?>) -> OSStatus, WriteToStorage: @convention(c) (AudioServerPlugInHostRef, CFString, CFPropertyList) -> OSStatus, DeleteFromStorage: @convention(c) (AudioServerPlugInHostRef, CFString) -> OSStatus, RequestDeviceConfigurationChange: @convention(c) (AudioServerPlugInHostRef, AudioObjectID, UInt64, UnsafeMutableRawPointer?) -> OSStatus)
}
struct AudioServerPlugInDriverInterface {
  var _reserved: UnsafeMutableRawPointer?
  var QueryInterface: @convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT
  var AddRef: @convention(c) (UnsafeMutableRawPointer?) -> ULONG
  var Release: @convention(c) (UnsafeMutableRawPointer?) -> ULONG
  var Initialize: @convention(c) (AudioServerPlugInDriverRef, AudioServerPlugInHostRef) -> OSStatus
  var CreateDevice: @convention(c) (AudioServerPlugInDriverRef, CFDictionary, UnsafePointer<AudioServerPlugInClientInfo>, UnsafeMutablePointer<AudioObjectID>) -> OSStatus
  var DestroyDevice: @convention(c) (AudioServerPlugInDriverRef, AudioObjectID) -> OSStatus
  var AddDeviceClient: @convention(c) (AudioServerPlugInDriverRef, AudioObjectID, UnsafePointer<AudioServerPlugInClientInfo>) -> OSStatus
  var RemoveDeviceClient: @convention(c) (AudioServerPlugInDriverRef, AudioObjectID, UnsafePointer<AudioServerPlugInClientInfo>) -> OSStatus
  var PerformDeviceConfigurationChange: @convention(c) (AudioServerPlugInDriverRef, AudioObjectID, UInt64, UnsafeMutableRawPointer?) -> OSStatus
  var AbortDeviceConfigurationChange: @convention(c) (AudioServerPlugInDriverRef, AudioObjectID, UInt64, UnsafeMutableRawPointer?) -> OSStatus
  var HasProperty: @convention(c) (AudioServerPlugInDriverRef, AudioObjectID, pid_t, UnsafePointer<AudioObjectPropertyAddress>) -> DarwinBoolean
  var IsPropertySettable: @convention(c) (AudioServerPlugInDriverRef, AudioObjectID, pid_t, UnsafePointer<AudioObjectPropertyAddress>, UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
  var GetPropertyDataSize: @convention(c) (AudioServerPlugInDriverRef, AudioObjectID, pid_t, UnsafePointer<AudioObjectPropertyAddress>, UInt32, UnsafeRawPointer?, UnsafeMutablePointer<UInt32>) -> OSStatus
  var GetPropertyData: @convention(c) (AudioServerPlugInDriverRef, AudioObjectID, pid_t, UnsafePointer<AudioObjectPropertyAddress>, UInt32, UnsafeRawPointer?, UInt32, UnsafeMutablePointer<UInt32>, UnsafeMutableRawPointer) -> OSStatus
  var SetPropertyData: @convention(c) (AudioServerPlugInDriverRef, AudioObjectID, pid_t, UnsafePointer<AudioObjectPropertyAddress>, UInt32, UnsafeRawPointer?, UInt32, UnsafeRawPointer) -> OSStatus
  var StartIO: @convention(c) (AudioServerPlugInDriverRef, AudioObjectID, UInt32) -> OSStatus
  var StopIO: @convention(c) (AudioServerPlugInDriverRef, AudioObjectID, UInt32) -> OSStatus
  var GetZeroTimeStamp: @convention(c) (AudioServerPlugInDriverRef, AudioObjectID, UInt32, UnsafeMutablePointer<Float64>, UnsafeMutablePointer<UInt64>, UnsafeMutablePointer<UInt64>) -> OSStatus
  var WillDoIOOperation: @convention(c) (AudioServerPlugInDriverRef, AudioObjectID, UInt32, UInt32, UnsafeMutablePointer<DarwinBoolean>, UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
  var BeginIOOperation: @convention(c) (AudioServerPlugInDriverRef, AudioObjectID, UInt32, UInt32, UInt32, UnsafePointer<AudioServerPlugInIOCycleInfo>) -> OSStatus
  var DoIOOperation: @convention(c) (AudioServerPlugInDriverRef, AudioObjectID, AudioObjectID, UInt32, UInt32, UInt32, UnsafePointer<AudioServerPlugInIOCycleInfo>, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?) -> OSStatus
  var EndIOOperation: @convention(c) (AudioServerPlugInDriverRef, AudioObjectID, UInt32, UInt32, UInt32, UnsafePointer<AudioServerPlugInIOCycleInfo>) -> OSStatus
  init(_reserved: UnsafeMutableRawPointer?, QueryInterface: @convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT, AddRef: @convention(c) (UnsafeMutableRawPointer?) -> ULONG, Release: @convention(c) (UnsafeMutableRawPointer?) -> ULONG, Initialize: @convention(c) (AudioServerPlugInDriverRef, AudioServerPlugInHostRef) -> OSStatus, CreateDevice: @convention(c) (AudioServerPlugInDriverRef, CFDictionary, UnsafePointer<AudioServerPlugInClientInfo>, UnsafeMutablePointer<AudioObjectID>) -> OSStatus, DestroyDevice: @convention(c) (AudioServerPlugInDriverRef, AudioObjectID) -> OSStatus, AddDeviceClient: @convention(c) (AudioServerPlugInDriverRef, AudioObjectID, UnsafePointer<AudioServerPlugInClientInfo>) -> OSStatus, RemoveDeviceClient: @convention(c) (AudioServerPlugInDriverRef, AudioObjectID, UnsafePointer<AudioServerPlugInClientInfo>) -> OSStatus, PerformDeviceConfigurationChange: @convention(c) (AudioServerPlugInDriverRef, AudioObjectID, UInt64, UnsafeMutableRawPointer?) -> OSStatus, AbortDeviceConfigurationChange: @convention(c) (AudioServerPlugInDriverRef, AudioObjectID, UInt64, UnsafeMutableRawPointer?) -> OSStatus, HasProperty: @convention(c) (AudioServerPlugInDriverRef, AudioObjectID, pid_t, UnsafePointer<AudioObjectPropertyAddress>) -> DarwinBoolean, IsPropertySettable: @convention(c) (AudioServerPlugInDriverRef, AudioObjectID, pid_t, UnsafePointer<AudioObjectPropertyAddress>, UnsafeMutablePointer<DarwinBoolean>) -> OSStatus, GetPropertyDataSize: @convention(c) (AudioServerPlugInDriverRef, AudioObjectID, pid_t, UnsafePointer<AudioObjectPropertyAddress>, UInt32, UnsafeRawPointer?, UnsafeMutablePointer<UInt32>) -> OSStatus, GetPropertyData: @convention(c) (AudioServerPlugInDriverRef, AudioObjectID, pid_t, UnsafePointer<AudioObjectPropertyAddress>, UInt32, UnsafeRawPointer?, UInt32, UnsafeMutablePointer<UInt32>, UnsafeMutableRawPointer) -> OSStatus, SetPropertyData: @convention(c) (AudioServerPlugInDriverRef, AudioObjectID, pid_t, UnsafePointer<AudioObjectPropertyAddress>, UInt32, UnsafeRawPointer?, UInt32, UnsafeRawPointer) -> OSStatus, StartIO: @convention(c) (AudioServerPlugInDriverRef, AudioObjectID, UInt32) -> OSStatus, StopIO: @convention(c) (AudioServerPlugInDriverRef, AudioObjectID, UInt32) -> OSStatus, GetZeroTimeStamp: @convention(c) (AudioServerPlugInDriverRef, AudioObjectID, UInt32, UnsafeMutablePointer<Float64>, UnsafeMutablePointer<UInt64>, UnsafeMutablePointer<UInt64>) -> OSStatus, WillDoIOOperation: @convention(c) (AudioServerPlugInDriverRef, AudioObjectID, UInt32, UInt32, UnsafeMutablePointer<DarwinBoolean>, UnsafeMutablePointer<DarwinBoolean>) -> OSStatus, BeginIOOperation: @convention(c) (AudioServerPlugInDriverRef, AudioObjectID, UInt32, UInt32, UInt32, UnsafePointer<AudioServerPlugInIOCycleInfo>) -> OSStatus, DoIOOperation: @convention(c) (AudioServerPlugInDriverRef, AudioObjectID, AudioObjectID, UInt32, UInt32, UInt32, UnsafePointer<AudioServerPlugInIOCycleInfo>, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?) -> OSStatus, EndIOOperation: @convention(c) (AudioServerPlugInDriverRef, AudioObjectID, UInt32, UInt32, UInt32, UnsafePointer<AudioServerPlugInIOCycleInfo>) -> OSStatus)
}
