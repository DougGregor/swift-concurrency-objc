
var kAudioObjectSystemObject: Int32 { get }
typealias AudioObjectPropertyListenerProc = @convention(c) (AudioObjectID, UInt32, UnsafePointer<AudioObjectPropertyAddress>, UnsafeMutableRawPointer?) -> OSStatus
typealias AudioObjectPropertyListenerBlock = (UInt32, UnsafePointer<AudioObjectPropertyAddress>) -> Void
var kAudioObjectPropertyCreator: AudioObjectPropertySelector { get }
var kAudioObjectPropertyListenerAdded: AudioObjectPropertySelector { get }
var kAudioObjectPropertyListenerRemoved: AudioObjectPropertySelector { get }
@available(macOS 10.4, *)
func AudioObjectShow(_ inObjectID: AudioObjectID)
@available(macOS 10.4, *)
func AudioObjectHasProperty(_ inObjectID: AudioObjectID, _ inAddress: UnsafePointer<AudioObjectPropertyAddress>) -> Bool
@available(macOS 10.4, *)
func AudioObjectIsPropertySettable(_ inObjectID: AudioObjectID, _ inAddress: UnsafePointer<AudioObjectPropertyAddress>, _ outIsSettable: UnsafeMutablePointer<DarwinBoolean>) -> OSStatus
@available(macOS 10.4, *)
func AudioObjectGetPropertyDataSize(_ inObjectID: AudioObjectID, _ inAddress: UnsafePointer<AudioObjectPropertyAddress>, _ inQualifierDataSize: UInt32, _ inQualifierData: UnsafeRawPointer?, _ outDataSize: UnsafeMutablePointer<UInt32>) -> OSStatus
@available(macOS 10.4, *)
func AudioObjectGetPropertyData(_ inObjectID: AudioObjectID, _ inAddress: UnsafePointer<AudioObjectPropertyAddress>, _ inQualifierDataSize: UInt32, _ inQualifierData: UnsafeRawPointer?, _ ioDataSize: UnsafeMutablePointer<UInt32>, _ outData: UnsafeMutableRawPointer) -> OSStatus
@available(macOS 10.4, *)
func AudioObjectSetPropertyData(_ inObjectID: AudioObjectID, _ inAddress: UnsafePointer<AudioObjectPropertyAddress>, _ inQualifierDataSize: UInt32, _ inQualifierData: UnsafeRawPointer?, _ inDataSize: UInt32, _ inData: UnsafeRawPointer) -> OSStatus
@available(macOS 10.4, *)
func AudioObjectAddPropertyListener(_ inObjectID: AudioObjectID, _ inAddress: UnsafePointer<AudioObjectPropertyAddress>, _ inListener: AudioObjectPropertyListenerProc, _ inClientData: UnsafeMutableRawPointer?) -> OSStatus
@available(macOS 10.4, *)
func AudioObjectRemovePropertyListener(_ inObjectID: AudioObjectID, _ inAddress: UnsafePointer<AudioObjectPropertyAddress>, _ inListener: AudioObjectPropertyListenerProc, _ inClientData: UnsafeMutableRawPointer?) -> OSStatus
@available(macOS 10.7, *)
func AudioObjectAddPropertyListenerBlock(_ inObjectID: AudioObjectID, _ inAddress: UnsafePointer<AudioObjectPropertyAddress>, _ inDispatchQueue: DispatchQueue?, _ inListener: @escaping AudioObjectPropertyListenerBlock) -> OSStatus
@available(macOS 10.7, *)
func AudioObjectRemovePropertyListenerBlock(_ inObjectID: AudioObjectID, _ inAddress: UnsafePointer<AudioObjectPropertyAddress>, _ inDispatchQueue: DispatchQueue?, _ inListener: @escaping AudioObjectPropertyListenerBlock) -> OSStatus
var kAudioSystemObjectClassID: AudioClassID { get }
enum AudioHardwarePowerHint : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case none
  case favorSavingPower
}
var kAudioHardwarePropertyDevices: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyDefaultInputDevice: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyDefaultOutputDevice: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyDefaultSystemOutputDevice: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyTranslateUIDToDevice: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyMixStereoToMono: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyPlugInList: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyTranslateBundleIDToPlugIn: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyTransportManagerList: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyTranslateBundleIDToTransportManager: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyBoxList: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyTranslateUIDToBox: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyClockDeviceList: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyTranslateUIDToClockDevice: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyProcessIsMaster: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyIsInitingOrExiting: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyUserIDChanged: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyProcessIsAudible: AudioObjectPropertySelector { get }
var kAudioHardwarePropertySleepingIsAllowed: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyUnloadingIsAllowed: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyHogModeIsAllowed: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyUserSessionIsActiveOrHeadless: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyServiceRestarted: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyPowerHint: AudioObjectPropertySelector { get }
@available(macOS 10.1, *)
func AudioHardwareUnload() -> OSStatus
@available(macOS 10.9, *)
func AudioHardwareCreateAggregateDevice(_ inDescription: CFDictionary, _ outDeviceID: UnsafeMutablePointer<AudioObjectID>) -> OSStatus
@available(macOS 10.9, *)
func AudioHardwareDestroyAggregateDevice(_ inDeviceID: AudioObjectID) -> OSStatus
var kAudioPlugInCreateAggregateDevice: AudioObjectPropertySelector { get }
var kAudioPlugInDestroyAggregateDevice: AudioObjectPropertySelector { get }
var kAudioTransportManagerCreateEndPointDevice: AudioObjectPropertySelector { get }
var kAudioTransportManagerDestroyEndPointDevice: AudioObjectPropertySelector { get }
typealias AudioDeviceIOProc = @convention(c) (AudioObjectID, UnsafePointer<AudioTimeStamp>, UnsafePointer<AudioBufferList>, UnsafePointer<AudioTimeStamp>, UnsafeMutablePointer<AudioBufferList>, UnsafePointer<AudioTimeStamp>, UnsafeMutableRawPointer?) -> OSStatus
typealias AudioDeviceIOBlock = (UnsafePointer<AudioTimeStamp>, UnsafePointer<AudioBufferList>, UnsafePointer<AudioTimeStamp>, UnsafeMutablePointer<AudioBufferList>, UnsafePointer<AudioTimeStamp>) -> Void
typealias AudioDeviceIOProcID = AudioDeviceIOProc
struct AudioHardwareIOProcStreamUsage {
  var mIOProc: UnsafeMutableRawPointer
  var mNumberStreams: UInt32
  var mStreamIsOn: (UInt32)
  init(mIOProc: UnsafeMutableRawPointer, mNumberStreams: UInt32, mStreamIsOn: (UInt32))
}
var kAudioDeviceStartTimeIsInputFlag: UInt32 { get }
var kAudioDeviceStartTimeDontConsultDeviceFlag: UInt32 { get }
var kAudioDeviceStartTimeDontConsultHALFlag: UInt32 { get }
var kAudioDevicePropertyPlugIn: AudioObjectPropertySelector { get }
var kAudioDevicePropertyDeviceHasChanged: AudioObjectPropertySelector { get }
var kAudioDevicePropertyDeviceIsRunningSomewhere: AudioObjectPropertySelector { get }
var kAudioDeviceProcessorOverload: AudioObjectPropertySelector { get }
var kAudioDevicePropertyIOStoppedAbnormally: AudioObjectPropertySelector { get }
var kAudioDevicePropertyHogMode: AudioObjectPropertySelector { get }
var kAudioDevicePropertyBufferFrameSize: AudioObjectPropertySelector { get }
var kAudioDevicePropertyBufferFrameSizeRange: AudioObjectPropertySelector { get }
var kAudioDevicePropertyUsesVariableBufferFrameSizes: AudioObjectPropertySelector { get }
var kAudioDevicePropertyIOCycleUsage: AudioObjectPropertySelector { get }
var kAudioDevicePropertyStreamConfiguration: AudioObjectPropertySelector { get }
var kAudioDevicePropertyIOProcStreamUsage: AudioObjectPropertySelector { get }
var kAudioDevicePropertyActualSampleRate: AudioObjectPropertySelector { get }
var kAudioDevicePropertyClockDevice: AudioObjectPropertySelector { get }
var kAudioDevicePropertyIOThreadOSWorkgroup: AudioObjectPropertySelector { get }
var kAudioDevicePropertyJackIsConnected: AudioObjectPropertySelector { get }
var kAudioDevicePropertyVolumeScalar: AudioObjectPropertySelector { get }
var kAudioDevicePropertyVolumeDecibels: AudioObjectPropertySelector { get }
var kAudioDevicePropertyVolumeRangeDecibels: AudioObjectPropertySelector { get }
var kAudioDevicePropertyVolumeScalarToDecibels: AudioObjectPropertySelector { get }
var kAudioDevicePropertyVolumeDecibelsToScalar: AudioObjectPropertySelector { get }
var kAudioDevicePropertyStereoPan: AudioObjectPropertySelector { get }
var kAudioDevicePropertyStereoPanChannels: AudioObjectPropertySelector { get }
var kAudioDevicePropertyMute: AudioObjectPropertySelector { get }
var kAudioDevicePropertySolo: AudioObjectPropertySelector { get }
var kAudioDevicePropertyPhantomPower: AudioObjectPropertySelector { get }
var kAudioDevicePropertyPhaseInvert: AudioObjectPropertySelector { get }
var kAudioDevicePropertyClipLight: AudioObjectPropertySelector { get }
var kAudioDevicePropertyTalkback: AudioObjectPropertySelector { get }
var kAudioDevicePropertyListenback: AudioObjectPropertySelector { get }
var kAudioDevicePropertyDataSource: AudioObjectPropertySelector { get }
var kAudioDevicePropertyDataSources: AudioObjectPropertySelector { get }
var kAudioDevicePropertyDataSourceNameForIDCFString: AudioObjectPropertySelector { get }
var kAudioDevicePropertyDataSourceKindForID: AudioObjectPropertySelector { get }
var kAudioDevicePropertyClockSource: AudioObjectPropertySelector { get }
var kAudioDevicePropertyClockSources: AudioObjectPropertySelector { get }
var kAudioDevicePropertyClockSourceNameForIDCFString: AudioObjectPropertySelector { get }
var kAudioDevicePropertyClockSourceKindForID: AudioObjectPropertySelector { get }
var kAudioDevicePropertyPlayThru: AudioObjectPropertySelector { get }
var kAudioDevicePropertyPlayThruSolo: AudioObjectPropertySelector { get }
var kAudioDevicePropertyPlayThruVolumeScalar: AudioObjectPropertySelector { get }
var kAudioDevicePropertyPlayThruVolumeDecibels: AudioObjectPropertySelector { get }
var kAudioDevicePropertyPlayThruVolumeRangeDecibels: AudioObjectPropertySelector { get }
var kAudioDevicePropertyPlayThruVolumeScalarToDecibels: AudioObjectPropertySelector { get }
var kAudioDevicePropertyPlayThruVolumeDecibelsToScalar: AudioObjectPropertySelector { get }
var kAudioDevicePropertyPlayThruStereoPan: AudioObjectPropertySelector { get }
var kAudioDevicePropertyPlayThruStereoPanChannels: AudioObjectPropertySelector { get }
var kAudioDevicePropertyPlayThruDestination: AudioObjectPropertySelector { get }
var kAudioDevicePropertyPlayThruDestinations: AudioObjectPropertySelector { get }
var kAudioDevicePropertyPlayThruDestinationNameForIDCFString: AudioObjectPropertySelector { get }
var kAudioDevicePropertyChannelNominalLineLevel: AudioObjectPropertySelector { get }
var kAudioDevicePropertyChannelNominalLineLevels: AudioObjectPropertySelector { get }
var kAudioDevicePropertyChannelNominalLineLevelNameForIDCFString: AudioObjectPropertySelector { get }
var kAudioDevicePropertyHighPassFilterSetting: AudioObjectPropertySelector { get }
var kAudioDevicePropertyHighPassFilterSettings: AudioObjectPropertySelector { get }
var kAudioDevicePropertyHighPassFilterSettingNameForIDCFString: AudioObjectPropertySelector { get }
var kAudioDevicePropertySubVolumeScalar: AudioObjectPropertySelector { get }
var kAudioDevicePropertySubVolumeDecibels: AudioObjectPropertySelector { get }
var kAudioDevicePropertySubVolumeRangeDecibels: AudioObjectPropertySelector { get }
var kAudioDevicePropertySubVolumeScalarToDecibels: AudioObjectPropertySelector { get }
var kAudioDevicePropertySubVolumeDecibelsToScalar: AudioObjectPropertySelector { get }
var kAudioDevicePropertySubMute: AudioObjectPropertySelector { get }
@available(macOS 10.5, *)
func AudioDeviceCreateIOProcID(_ inDevice: AudioObjectID, _ inProc: AudioDeviceIOProc, _ inClientData: UnsafeMutableRawPointer?, _ outIOProcID: UnsafeMutablePointer<AudioDeviceIOProcID?>) -> OSStatus
@available(macOS 10.7, *)
func AudioDeviceCreateIOProcIDWithBlock(_ outIOProcID: UnsafeMutablePointer<AudioDeviceIOProcID?>, _ inDevice: AudioObjectID, _ inDispatchQueue: DispatchQueue?, _ inIOBlock: @escaping AudioDeviceIOBlock) -> OSStatus
@available(macOS 10.5, *)
func AudioDeviceDestroyIOProcID(_ inDevice: AudioObjectID, _ inIOProcID: AudioDeviceIOProcID) -> OSStatus
@available(macOS 10.0, *)
func AudioDeviceStart(_ inDevice: AudioObjectID, _ inProcID: AudioDeviceIOProcID?) -> OSStatus
@available(macOS 10.3, *)
func AudioDeviceStartAtTime(_ inDevice: AudioObjectID, _ inProcID: AudioDeviceIOProcID?, _ ioRequestedStartTime: UnsafeMutablePointer<AudioTimeStamp>, _ inFlags: UInt32) -> OSStatus
@available(macOS 10.0, *)
func AudioDeviceStop(_ inDevice: AudioObjectID, _ inProcID: AudioDeviceIOProcID?) -> OSStatus
@available(macOS 10.0, *)
func AudioDeviceGetCurrentTime(_ inDevice: AudioObjectID, _ outTime: UnsafeMutablePointer<AudioTimeStamp>) -> OSStatus
@available(macOS 10.0, *)
func AudioDeviceTranslateTime(_ inDevice: AudioObjectID, _ inTime: UnsafePointer<AudioTimeStamp>, _ outTime: UnsafeMutablePointer<AudioTimeStamp>) -> OSStatus
@available(macOS 10.3, *)
func AudioDeviceGetNearestStartTime(_ inDevice: AudioObjectID, _ ioRequestedStartTime: UnsafeMutablePointer<AudioTimeStamp>, _ inFlags: UInt32) -> OSStatus
var kAudioAggregateDeviceClassID: AudioClassID { get }
var kAudioAggregateDeviceUIDKey: String { get }
var kAudioAggregateDeviceNameKey: String { get }
var kAudioAggregateDeviceSubDeviceListKey: String { get }
var kAudioAggregateDeviceMasterSubDeviceKey: String { get }
var kAudioAggregateDeviceClockDeviceKey: String { get }
var kAudioAggregateDeviceIsPrivateKey: String { get }
var kAudioAggregateDeviceIsStackedKey: String { get }
var kAudioAggregateDevicePropertyFullSubDeviceList: AudioObjectPropertySelector { get }
var kAudioAggregateDevicePropertyActiveSubDeviceList: AudioObjectPropertySelector { get }
var kAudioAggregateDevicePropertyComposition: AudioObjectPropertySelector { get }
var kAudioAggregateDevicePropertyMasterSubDevice: AudioObjectPropertySelector { get }
var kAudioAggregateDevicePropertyClockDevice: AudioObjectPropertySelector { get }
var kAudioSubDeviceClassID: AudioClassID { get }
var kAudioSubDeviceDriftCompensationMinQuality: UInt32 { get }
var kAudioSubDeviceDriftCompensationLowQuality: UInt32 { get }
var kAudioSubDeviceDriftCompensationMediumQuality: UInt32 { get }
var kAudioSubDeviceDriftCompensationHighQuality: UInt32 { get }
var kAudioSubDeviceDriftCompensationMaxQuality: UInt32 { get }
var kAudioSubDeviceUIDKey: String { get }
var kAudioSubDeviceNameKey: String { get }
var kAudioSubDeviceInputChannelsKey: String { get }
var kAudioSubDeviceOutputChannelsKey: String { get }
var kAudioSubDeviceExtraInputLatencyKey: String { get }
var kAudioSubDeviceExtraOutputLatencyKey: String { get }
var kAudioSubDeviceDriftCompensationKey: String { get }
var kAudioSubDeviceDriftCompensationQualityKey: String { get }
var kAudioSubDevicePropertyExtraLatency: AudioObjectPropertySelector { get }
var kAudioSubDevicePropertyDriftCompensation: AudioObjectPropertySelector { get }
var kAudioSubDevicePropertyDriftCompensationQuality: AudioObjectPropertySelector { get }
var kAudioDevicePropertyScopeInput: AudioObjectPropertyScope { get }
var kAudioDevicePropertyScopeOutput: AudioObjectPropertyScope { get }
var kAudioDevicePropertyScopePlayThrough: AudioObjectPropertyScope { get }
var kAudioPropertyWildcardPropertyID: AudioObjectPropertySelector { get }
var kAudioPropertyWildcardSection: UInt8 { get }
var kAudioPropertyWildcardChannel: AudioObjectPropertyElement { get }
var kAudioISubOwnerControlClassID: AudioClassID { get }
var kAudioLevelControlPropertyDecibelsToScalarTransferFunction: AudioObjectPropertySelector { get }
enum AudioLevelControlTransferFunction : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case tranferFunctionLinear
  case tranferFunction1Over3
  case tranferFunction1Over2
  case tranferFunction3Over4
  case tranferFunction3Over2
  case tranferFunction2Over1
  case tranferFunction3Over1
  case tranferFunction4Over1
  case tranferFunction5Over1
  case tranferFunction6Over1
  case tranferFunction7Over1
  case tranferFunction8Over1
  case tranferFunction9Over1
  case tranferFunction10Over1
  case tranferFunction11Over1
  case tranferFunction12Over1
}
typealias AudioHardwarePropertyID = AudioObjectPropertySelector
typealias AudioHardwarePropertyListenerProc = @convention(c) (AudioHardwarePropertyID, UnsafeMutableRawPointer?) -> OSStatus
var kAudioHardwareRunLoopMode: String { get }
var kAudioHardwarePropertyRunLoop: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyDeviceForUID: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyPlugInForBundleID: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyBootChimeVolumeScalar: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyBootChimeVolumeDecibels: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyBootChimeVolumeRangeDecibels: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyBootChimeVolumeScalarToDecibels: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyBootChimeVolumeDecibelsToScalar: AudioObjectPropertySelector { get }
var kAudioHardwarePropertyBootChimeVolumeDecibelsToScalarTransferFunction: AudioObjectPropertySelector { get }
typealias AudioDeviceID = AudioObjectID
typealias AudioDevicePropertyID = AudioObjectPropertySelector
typealias AudioDevicePropertyListenerProc = @convention(c) (AudioDeviceID, UInt32, DarwinBoolean, AudioDevicePropertyID, UnsafeMutableRawPointer?) -> OSStatus
var kAudioDeviceUnknown: AudioObjectID { get }
var kAudioDeviceTransportTypeAutoAggregate: UInt32 { get }
var kAudioDevicePropertyVolumeDecibelsToScalarTransferFunction: AudioObjectPropertySelector { get }
var kAudioDevicePropertyPlayThruVolumeDecibelsToScalarTransferFunction: AudioObjectPropertySelector { get }
var kAudioDevicePropertyDriverShouldOwniSub: AudioObjectPropertySelector { get }
var kAudioDevicePropertySubVolumeDecibelsToScalarTransferFunction: AudioObjectPropertySelector { get }
var kAudioDevicePropertyDeviceName: AudioObjectPropertySelector { get }
var kAudioDevicePropertyDeviceNameCFString: AudioObjectPropertySelector { get }
var kAudioDevicePropertyDeviceManufacturer: AudioObjectPropertySelector { get }
var kAudioDevicePropertyDeviceManufacturerCFString: AudioObjectPropertySelector { get }
var kAudioDevicePropertyRegisterBufferList: AudioObjectPropertySelector { get }
var kAudioDevicePropertyBufferSize: AudioObjectPropertySelector { get }
var kAudioDevicePropertyBufferSizeRange: AudioObjectPropertySelector { get }
var kAudioDevicePropertyChannelName: AudioObjectPropertySelector { get }
var kAudioDevicePropertyChannelNameCFString: AudioObjectPropertySelector { get }
var kAudioDevicePropertyChannelCategoryName: AudioObjectPropertySelector { get }
var kAudioDevicePropertyChannelCategoryNameCFString: AudioObjectPropertySelector { get }
var kAudioDevicePropertyChannelNumberName: AudioObjectPropertySelector { get }
var kAudioDevicePropertyChannelNumberNameCFString: AudioObjectPropertySelector { get }
var kAudioDevicePropertySupportsMixing: AudioObjectPropertySelector { get }
var kAudioDevicePropertyStreamFormat: AudioObjectPropertySelector { get }
var kAudioDevicePropertyStreamFormats: AudioObjectPropertySelector { get }
var kAudioDevicePropertyStreamFormatSupported: AudioObjectPropertySelector { get }
var kAudioDevicePropertyStreamFormatMatch: AudioObjectPropertySelector { get }
var kAudioDevicePropertyDataSourceNameForID: AudioObjectPropertySelector { get }
var kAudioDevicePropertyClockSourceNameForID: AudioObjectPropertySelector { get }
var kAudioDevicePropertyPlayThruDestinationNameForID: AudioObjectPropertySelector { get }
var kAudioDevicePropertyChannelNominalLineLevelNameForID: AudioObjectPropertySelector { get }
var kAudioDevicePropertyHighPassFilterSettingNameForID: AudioObjectPropertySelector { get }
typealias AudioStreamID = AudioObjectID
typealias AudioStreamPropertyListenerProc = @convention(c) (AudioStreamID, UInt32, AudioDevicePropertyID, UnsafeMutableRawPointer?) -> OSStatus
var kAudioStreamUnknown: AudioObjectID { get }
var kAudioStreamPropertyOwningDevice: AudioObjectPropertySelector { get }
var kAudioStreamPropertyPhysicalFormats: AudioObjectPropertySelector { get }
var kAudioStreamPropertyPhysicalFormatSupported: AudioObjectPropertySelector { get }
var kAudioStreamPropertyPhysicalFormatMatch: AudioObjectPropertySelector { get }
var kAudioBootChimeVolumeControlClassID: AudioClassID { get }
var kAudioControlPropertyVariant: AudioObjectPropertySelector { get }
var kAudioClockSourceControlPropertyItemKind: AudioObjectPropertySelector { get }
