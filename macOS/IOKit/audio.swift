
var kIOAudioDeviceClassName: String { get }
var kIOAudioEngineClassName: String { get }
var kIOAudioStreamClassName: String { get }
var kIOAudioPortClassName: String { get }
var kIOAudioControlClassName: String { get }
var kIOAudioSampleRateKey: String { get }
var kIOAudioSampleRateWholeNumberKey: String { get }
var kIOAudioSampleRateFractionKey: String { get }
var kIOAudioDeviceNameKey: String { get }
var kIOAudioDeviceShortNameKey: String { get }
var kIOAudioDeviceManufacturerNameKey: String { get }
var kIOAudioDeviceLocalizedBundleKey: String { get }
var kIOAudioDeviceTransportTypeKey: String { get }
var kIOAudioDeviceConfigurationAppKey: String { get }
var kIOAudioDeviceCanBeDefaults: String { get }
var kIOAudioDeviceModelIDKey: String { get }
var kIOAudioDeviceIconNameKey: String { get }
var kIOAudioDeviceIconTypeKey: String { get }
var kIOAudioDeviceIconSubDirKey: String { get }
var kIOAudioEngineStateKey: String { get }
var kIOAudioEngineOutputSampleLatencyKey: String { get }
var kIOAudioStreamSampleLatencyKey: String { get }
var kIOAudioEngineInputSampleLatencyKey: String { get }
var kIOAudioEngineSampleOffsetKey: String { get }
var kIOAudioEngineInputSampleOffsetKey: String { get }
var kIOAudioEngineNumSampleFramesPerBufferKey: String { get }
var kIOAudioEngineCoreAudioPlugInKey: String { get }
var kIOAudioEngineNumActiveUserClientsKey: String { get }
var kIOAudioEngineUserClientActiveKey: String { get }
var kIOAudioEngineGlobalUniqueIDKey: String { get }
var kIOAudioEngineDescriptionKey: String { get }
var kIOAudioEngineClockIsStableKey: String { get }
var kIOAudioEngineClockDomainKey: String { get }
var kIOAudioEngineIsHiddenKey: String { get }
var kIOAudioEngineOutputAutoRouteKey: String { get }
var kIOAudioEngineUseHiResSampleIntervalKey: String { get }
var kIOAudioEngineFullChannelNamesKey: String { get }
var kIOAudioEngineFullChannelCategoryNamesKey: String { get }
var kIOAudioEngineFullChannelNumberNamesKey: String { get }
var kIOAudioEngineFullChannelNameKeyInputFormat: String { get }
var kIOAudioEngineFullChannelNameKeyOutputFormat: String { get }
var kIOAudioEngineFlavorKey: String { get }
var kIOAudioEngineAlwaysLoadCoreAudioPlugInKey: String { get }
var kIOAudioEngineInputChannelLayoutKey: String { get }
var kIOAudioEngineOutputChannelLayoutKey: String { get }
var kIOAudioEngineDisableClockBoundsCheck: String { get }
var kIOAudioStreamIDKey: String { get }
var kIOAudioStreamDescriptionKey: String { get }
var kIOAudioStreamNumClientsKey: String { get }
var kIOAudioStreamDirectionKey: String { get }
var kIOAudioStreamStartingChannelIDKey: String { get }
var kIOAudioStreamStartingChannelNumberKey: String { get }
var kIOAudioStreamAvailableKey: String { get }
var kIOAudioStreamFormatKey: String { get }
var kIOAudioStreamAvailableFormatsKey: String { get }
var kIOAudioStreamNumChannelsKey: String { get }
var kIOAudioStreamSampleFormatKey: String { get }
var kIOAudioStreamNumericRepresentationKey: String { get }
var kIOAudioStreamFormatFlagsKey: String { get }
var kIOAudioStreamFramesPerPacketKey: String { get }
var kIOAudioStreamBytesPerPacketKey: String { get }
var kIOAudioStreamBitDepthKey: String { get }
var kIOAudioStreamBitWidthKey: String { get }
var kIOAudioStreamAlignmentKey: String { get }
var kIOAudioStreamByteOrderKey: String { get }
var kIOAudioStreamIsMixableKey: String { get }
var kIOAudioStreamMinimumSampleRateKey: String { get }
var kIOAudioStreamMaximumSampleRateKey: String { get }
var kIOAudioStreamDriverTagKey: String { get }
var kIOAudioStreamTerminalTypeKey: String { get }
var kIOAudioPortTypeKey: String { get }
var kIOAudioPortSubTypeKey: String { get }
var kIOAudioPortNameKey: String { get }
var kIOAudioControlTypeKey: String { get }
var kIOAudioControlSubTypeKey: String { get }
var kIOAudioControlUsageKey: String { get }
var kIOAudioControlIDKey: String { get }
var kIOAudioControlChannelIDKey: String { get }
var kIOAudioControlChannelNumberKey: String { get }
var kIOAudioControlCoreAudioPropertyIDKey: String { get }
var kIOAudioControlChannelNameKey: String { get }
var kIOAudioControlChannelNameAll: String { get }
var kIOAudioControlChannelNameLeft: String { get }
var kIOAudioControlChannelNameRight: String { get }
var kIOAudioControlChannelNameCenter: String { get }
var kIOAudioControlChannelNameLeftRear: String { get }
var kIOAudioControlChannelNameRightRear: String { get }
var kIOAudioControlChannelNameSub: String { get }
var kIOAudioControlChannelNameFrontLeftCenter: String { get }
var kIOAudioControlChannelNameFrontRightCenter: String { get }
var kIOAudioControlChannelNameRearCenter: String { get }
var kIOAudioControlChannelNameSurroundLeft: String { get }
var kIOAudioControlChannelNameSurroundRight: String { get }
var kIOAudioControlValueKey: String { get }
var kIOAudioControlValueIsReadOnlyKey: String { get }
var kIOAudioLevelControlMinValueKey: String { get }
var kIOAudioLevelControlMaxValueKey: String { get }
var kIOAudioLevelControlMinDBKey: String { get }
var kIOAudioLevelControlMaxDBKey: String { get }
var kIOAudioLevelControlRangesKey: String { get }
var kIOAudioLevelControlUseLinearScale: String { get }
var kIOAudioSelectorControlAvailableSelectionsKey: String { get }
var kIOAudioSelectorControlSelectionValueKey: String { get }
var kIOAudioSelectorControlSelectionDescriptionKey: String { get }
var kIOAudioSelectorControlTransportValueKey: String { get }
var kIOAudioSelectorControlClockSourceKey: String { get }
struct _IOAudioEngineMemory : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kIOAudioStatusBuffer: _IOAudioEngineMemory { get }
var kIOAudioSampleBuffer: _IOAudioEngineMemory { get }
var kIOAudioMixBuffer: _IOAudioEngineMemory { get }
var kIOAudioBytesInInputBuffer: _IOAudioEngineMemory { get }
var kIOAudioBytesInOutputBuffer: _IOAudioEngineMemory { get }
typealias IOAudioEngineMemory = _IOAudioEngineMemory
struct _IOAudioEngineCalls : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kIOAudioEngineCallRegisterClientBuffer: _IOAudioEngineCalls { get }
var kIOAudioEngineCallUnregisterClientBuffer: _IOAudioEngineCalls { get }
var kIOAudioEngineCallGetConnectionID: _IOAudioEngineCalls { get }
var kIOAudioEngineCallStart: _IOAudioEngineCalls { get }
var kIOAudioEngineCallStop: _IOAudioEngineCalls { get }
var kIOAudioEngineCallGetNearestStartTime: _IOAudioEngineCalls { get }
typealias IOAudioEngineCalls = _IOAudioEngineCalls
var kIOAudioEngineNumCalls: Int32 { get }
struct _IOAudioEngineTraps : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kIOAudioEngineTrapPerformClientIO: _IOAudioEngineTraps { get }
typealias IOAudioEngineTraps = _IOAudioEngineTraps
struct _IOAudioEngineNotifications : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kIOAudioEngineAllNotifications: _IOAudioEngineNotifications { get }
var kIOAudioEngineStreamFormatChangeNotification: _IOAudioEngineNotifications { get }
var kIOAudioEngineChangeNotification: _IOAudioEngineNotifications { get }
var kIOAudioEngineStartedNotification: _IOAudioEngineNotifications { get }
var kIOAudioEngineStoppedNotification: _IOAudioEngineNotifications { get }
var kIOAudioEnginePausedNotification: _IOAudioEngineNotifications { get }
var kIOAudioEngineResumedNotification: _IOAudioEngineNotifications { get }
typealias IOAudioEngineNotifications = _IOAudioEngineNotifications
struct _IOAudioEngineState : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kIOAudioEngineStopped: _IOAudioEngineState { get }
var kIOAudioEngineRunning: _IOAudioEngineState { get }
var kIOAudioEnginePaused: _IOAudioEngineState { get }
var kIOAudioEngineResumed: _IOAudioEngineState { get }
typealias IOAudioEngineState = _IOAudioEngineState
struct _IOAudioEngineStatus {
  var fVersion: UInt32
  var fCurrentLoopCount: UInt32
  var fLastLoopTime: AbsoluteTime
  var fEraseHeadSampleFrame: UInt32
  init()
  init(fVersion: UInt32, fCurrentLoopCount: UInt32, fLastLoopTime: AbsoluteTime, fEraseHeadSampleFrame: UInt32)
}
typealias IOAudioEngineStatus = _IOAudioEngineStatus
var kIOAudioEngineCurrentStatusStructVersion: Int32 { get }
struct _IOAudioStreamFormat {
  var fNumChannels: UInt32
  var fSampleFormat: UInt32
  var fNumericRepresentation: UInt32
  var fBitDepth: UInt8
  var fBitWidth: UInt8
  var fAlignment: UInt8
  var fByteOrder: UInt8
  var fIsMixable: UInt8
  var fDriverTag: UInt32
  init()
  init(fNumChannels: UInt32, fSampleFormat: UInt32, fNumericRepresentation: UInt32, fBitDepth: UInt8, fBitWidth: UInt8, fAlignment: UInt8, fByteOrder: UInt8, fIsMixable: UInt8, fDriverTag: UInt32)
}
typealias IOAudioStreamFormat = _IOAudioStreamFormat
var kFormatExtensionInvalidVersion: Int32 { get }
var kFormatExtensionCurrentVersion: Int32 { get }
struct _IOAudioStreamFormatExtension {
  var fVersion: UInt32
  var fFlags: UInt32
  var fFramesPerPacket: UInt32
  var fBytesPerPacket: UInt32
  init()
  init(fVersion: UInt32, fFlags: UInt32, fFramesPerPacket: UInt32, fBytesPerPacket: UInt32)
}
typealias IOAudioStreamFormatExtension = _IOAudioStreamFormatExtension
struct _IOAudioBufferDataDescriptor {
  var fActualDataByteSize: UInt32
  var fActualNumSampleFrames: UInt32
  var fTotalDataByteSize: UInt32
  var fNominalDataByteSize: UInt32
  var fData: (UInt8)
  init()
  init(fActualDataByteSize: UInt32, fActualNumSampleFrames: UInt32, fTotalDataByteSize: UInt32, fNominalDataByteSize: UInt32, fData: (UInt8))
}
typealias IOAudioBufferDataDescriptor = _IOAudioBufferDataDescriptor
var kStreamDataDescriptorInvalidVersion: Int32 { get }
var kStreamDataDescriptorCurrentVersion: Int32 { get }
struct _IOAudioStreamDataDescriptor {
  var fVersion: UInt32
  var fNumberOfStreams: UInt32
  var fStreamLength: (UInt32)
  init()
  init(fVersion: UInt32, fNumberOfStreams: UInt32, fStreamLength: (UInt32))
}
typealias IOAudioStreamDataDescriptor = _IOAudioStreamDataDescriptor
struct _IOAudioSampleIntervalDescriptor {
  var sampleIntervalHi: UInt32
  var sampleIntervalLo: UInt32
  init()
  init(sampleIntervalHi: UInt32, sampleIntervalLo: UInt32)
}
typealias IOAudioSampleIntervalDescriptor = _IOAudioSampleIntervalDescriptor
struct _IOAudioSMPTETime {
  var fSubframes: Int16
  var fSubframeDivisor: Int16
  var fCounter: UInt32
  var fType: UInt32
  var fFlags: UInt32
  var fHours: Int16
  var fMinutes: Int16
  var fSeconds: Int16
  var fFrames: Int16
  init()
  init(fSubframes: Int16, fSubframeDivisor: Int16, fCounter: UInt32, fType: UInt32, fFlags: UInt32, fHours: Int16, fMinutes: Int16, fSeconds: Int16, fFrames: Int16)
}
typealias IOAudioSMPTETime = _IOAudioSMPTETime
var kIOAudioSMPTETimeType24: Int { get }
var kIOAudioSMPTETimeType25: Int { get }
var kIOAudioSMPTETimeType30Drop: Int { get }
var kIOAudioSMPTETimeType30: Int { get }
var kIOAudioSMPTETimeType2997: Int { get }
var kIOAudioSMPTETimeType2997Drop: Int { get }
var kIOAudioSMPTETimeType60: Int { get }
var kIOAudioSMPTETimeType5994: Int { get }
var kIOAudioSMPTETimeType60Drop: Int { get }
var kIOAudioSMPTETimeType5994Drop: Int { get }
var kIOAudioSMPTETimeType50: Int { get }
var kIOAudioSMPTETimeType2398: Int { get }
var kIOAudioSMPTETimeValid: Int { get }
var kIOAudioSMPTETimeRunning: Int { get }
struct _IOAudioTimeStamp {
  var fSampleTime: UInt64
  var fHostTime: UInt64
  var fRateScalar: UInt64
  var fWordClockTime: UInt64
  var fSMPTETime: IOAudioSMPTETime
  var fFlags: UInt32
  var fReserved: UInt32
  init()
  init(fSampleTime: UInt64, fHostTime: UInt64, fRateScalar: UInt64, fWordClockTime: UInt64, fSMPTETime: IOAudioSMPTETime, fFlags: UInt32, fReserved: UInt32)
}
typealias IOAudioTimeStamp = _IOAudioTimeStamp
var kIOAudioTimeStampSampleTimeValid: Int { get }
var kIOAudioTimeStampHostTimeValid: Int { get }
var kIOAudioTimeStampRateScalarValid: Int { get }
var kIOAudioTimeStampWordClockTimeValid: Int { get }
var kIOAudioTimeStampSMPTETimeValid: Int { get }
var kIOAudioTimeStampSampleHostTimeValid: Int { get }
struct _IOAudioStreamDirection : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kIOAudioStreamDirectionOutput: _IOAudioStreamDirection { get }
var kIOAudioStreamDirectionInput: _IOAudioStreamDirection { get }
typealias IOAudioStreamDirection = _IOAudioStreamDirection
var kIOAudioDeviceCanBeDefaultNothing: Int { get }
var kIOAudioDeviceCanBeDefaultInput: Int { get }
var kIOAudioDeviceCanBeDefaultOutput: Int { get }
var kIOAudioDeviceCanBeSystemOutput: Int { get }
struct _IOAudioControlCalls : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kIOAudioControlCallSetValue: _IOAudioControlCalls { get }
var kIOAudioControlCallGetValue: _IOAudioControlCalls { get }
typealias IOAudioControlCalls = _IOAudioControlCalls
var kIOAudioControlNumCalls: Int32 { get }
struct _IOAudioControlNotifications : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kIOAudioControlValueChangeNotification: _IOAudioControlNotifications { get }
var kIOAudioControlRangeChangeNotification: _IOAudioControlNotifications { get }
typealias IOAudioControlNotifications = _IOAudioControlNotifications
struct _IOAudioNotificationMessage {
  var messageHeader: mach_msg_header_t
  var type: UInt32
  var ref: UInt32
  var sender: UnsafeMutableRawPointer!
  init()
  init(messageHeader: mach_msg_header_t, type: UInt32, ref: UInt32, sender: UnsafeMutableRawPointer!)
}
typealias IOAudioNotificationMessage = _IOAudioNotificationMessage
struct _IOAudioSampleRate {
  var whole: UInt32
  var fraction: UInt32
  init()
  init(whole: UInt32, fraction: UInt32)
}
typealias IOAudioSampleRate = _IOAudioSampleRate
var kNoIdleAudioPowerDown: UInt64 { get }
var kIOAudioPortTypeOutput: Int { get }
var kIOAudioPortTypeInput: Int { get }
var kIOAudioPortTypeMixer: Int { get }
var kIOAudioPortTypePassThru: Int { get }
var kIOAudioPortTypeProcessing: Int { get }
var kIOAudioOutputPortSubTypeInternalSpeaker: Int { get }
var kIOAudioOutputPortSubTypeExternalSpeaker: Int { get }
var kIOAudioOutputPortSubTypeHeadphones: Int { get }
var kIOAudioOutputPortSubTypeLine: Int { get }
var kIOAudioOutputPortSubTypeSPDIF: Int { get }
var kIOAudioInputPortSubTypeInternalMicrophone: Int { get }
var kIOAudioInputPortSubTypeExternalMicrophone: Int { get }
var kIOAudioInputPortSubTypeCD: Int { get }
var kIOAudioInputPortSubTypeLine: Int { get }
var kIOAudioInputPortSubTypeSPDIF: Int { get }
var kIOAudioControlTypeLevel: Int { get }
var kIOAudioControlTypeToggle: Int { get }
var kIOAudioControlTypeJack: Int { get }
var kIOAudioControlTypeSelector: Int { get }
var kIOAudioLevelControlSubTypeVolume: Int { get }
var kIOAudioLevelControlSubTypeLFEVolume: Int { get }
var kIOAudioLevelControlSubTypePRAMVolume: Int { get }
var kIOAudioToggleControlSubTypeMute: Int { get }
var kIOAudioToggleControlSubTypeSolo: Int { get }
var kIOAudioToggleControlSubTypeLFEMute: Int { get }
var kIOAudioToggleControlSubTypeiSubAttach: Int { get }
var kIOAudioToggleControlSubTypePhantomPower: Int { get }
var kIOAudioToggleControlSubTypePhaseInvert: Int { get }
var kIOAudioSelectorControlSubTypeOutput: Int { get }
var kIOAudioSelectorControlSubTypeInput: Int { get }
var kIOAudioSelectorControlSubTypeClockSource: Int { get }
var kIOAudioSelectorControlSubTypeDestination: Int { get }
var kIOAudioSelectorControlSubTypeChannelNominalLineLevel: Int { get }
var kIOAudioSelectorControlSubTypeChannelLevelPlus4dBu: Int { get }
var kIOAudioSelectorControlSubTypeChannelLevelMinus10dBV: Int { get }
var kIOAudioSelectorControlSubTypeChannelLevelMinus20dBV: Int { get }
var kIOAudioSelectorControlSubTypeChannelLevelMicLevel: Int { get }
var kIOAudioSelectorControlSubTypeChannelLevelInstrumentLevel: Int { get }
var kIOAudioSelectorControlSubTypeChannelHighPassFilter: Int { get }
var kIOAudioControlUsageOutput: Int { get }
var kIOAudioControlUsageInput: Int { get }
var kIOAudioControlUsagePassThru: Int { get }
var kIOAudioControlUsageCoreAudioProperty: Int { get }
var kIOAudioControlChannelNumberInactive: Int { get }
var kIOAudioControlChannelIDAll: Int { get }
var kIOAudioControlChannelIDDefaultLeft: Int { get }
var kIOAudioControlChannelIDDefaultRight: Int { get }
var kIOAudioControlChannelIDDefaultCenter: Int { get }
var kIOAudioControlChannelIDDefaultLeftRear: Int { get }
var kIOAudioControlChannelIDDefaultRightRear: Int { get }
var kIOAudioControlChannelIDDefaultSub: Int { get }
var kIOAudioControlChannelIDDefaultFrontLeftCenter: Int { get }
var kIOAudioControlChannelIDDefaultFrontRightCenter: Int { get }
var kIOAudioControlChannelIDDefaultRearCenter: Int { get }
var kIOAudioControlChannelIDDefaultSurroundLeft: Int { get }
var kIOAudioControlChannelIDDefaultSurroundRight: Int { get }
var kIOAudioSelectorControlSelectionValueNone: Int { get }
var kIOAudioSelectorControlSelectionValueInternalSpeaker: Int { get }
var kIOAudioSelectorControlSelectionValueExternalSpeaker: Int { get }
var kIOAudioSelectorControlSelectionValueHeadphones: Int { get }
var kIOAudioSelectorControlSelectionValueInternalMicrophone: Int { get }
var kIOAudioSelectorControlSelectionValueExternalMicrophone: Int { get }
var kIOAudioSelectorControlSelectionValueCD: Int { get }
var kIOAudioSelectorControlSelectionValueLine: Int { get }
var kIOAudioSelectorControlSelectionValueSPDIF: Int { get }
var kIOAudioStreamSampleFormatLinearPCM: Int { get }
var kIOAudioStreamSampleFormatIEEEFloat: Int { get }
var kIOAudioStreamSampleFormatALaw: Int { get }
var kIOAudioStreamSampleFormatMuLaw: Int { get }
var kIOAudioStreamSampleFormatMPEG: Int { get }
var kIOAudioStreamSampleFormatAC3: Int { get }
var kIOAudioStreamSampleFormat1937AC3: Int { get }
var kIOAudioStreamSampleFormat1937MPEG1: Int { get }
var kIOAudioStreamSampleFormat1937MPEG2: Int { get }
var kIOAudioStreamSampleFormatTimeCode: Int { get }
var kIOAudioStreamNumericRepresentationSignedInt: Int { get }
var kIOAudioStreamNumericRepresentationUnsignedInt: Int { get }
var kIOAudioStreamNumericRepresentationIEEE754Float: Int { get }
var kIOAudioClockSelectorTypeInternal: Int { get }
var kIOAudioClockSelectorTypeExternal: Int { get }
var kIOAudioClockSelectorTypeAESEBU: Int { get }
var kIOAudioClockSelectorTypeTOSLink: Int { get }
var kIOAudioClockSelectorTypeSPDIF: Int { get }
var kIOAudioClockSelectorTypeADATOptical: Int { get }
var kIOAudioClockSelectorTypeADAT9Pin: Int { get }
var kIOAudioClockSelectorTypeSMPTE: Int { get }
var kIOAudioClockSelectorTypeVideo: Int { get }
var kIOAudioClockSelectorTypeControl: Int { get }
var kIOAudioClockSelectorTypeOther: Int { get }
var kIOAudioStreamAlignmentLowByte: Int { get }
var kIOAudioStreamAlignmentHighByte: Int { get }
var kIOAudioStreamByteOrderBigEndian: Int { get }
var kIOAudioStreamByteOrderLittleEndian: Int { get }
var kIOAudioLevelControlNegativeInfinity: UInt32 { get }
var kIOAudioBuiltInSystemClockDomain: UInt32 { get }
var kIOAudioNewClockDomain: UInt32 { get }
var kIOAudioDeviceTransportTypeBuiltIn: Int { get }
var kIOAudioDeviceTransportTypePCI: Int { get }
var kIOAudioDeviceTransportTypeUSB: Int { get }
var kIOAudioDeviceTransportTypeFireWire: Int { get }
var kIOAudioDeviceTransportTypeNetwork: Int { get }
var kIOAudioDeviceTransportTypeWireless: Int { get }
var kIOAudioDeviceTransportTypeOther: Int { get }
var kIOAudioDeviceTransportTypeBluetooth: Int { get }
var kIOAudioDeviceTransportTypeVirtual: Int { get }
var kIOAudioDeviceTransportTypeDisplayPort: Int { get }
var kIOAudioDeviceTransportTypeHdmi: Int { get }
var kIOAudioDeviceTransportTypeAVB: Int { get }
var kIOAudioDeviceTransportTypeThunderbolt: Int { get }
var OUTPUT_NULL: Int { get }
var INPUT_NULL: Int { get }
var INPUT_UNDEFINED: Int { get }
var INPUT_MICROPHONE: Int { get }
var INPUT_DESKTOP_MICROPHONE: Int { get }
var INPUT_PERSONAL_MICROPHONE: Int { get }
var INPUT_OMNIDIRECTIONAL_MICROPHONE: Int { get }
var INPUT_MICROPHONE_ARRAY: Int { get }
var INPUT_PROCESSING_MICROPHONE_ARRAY: Int { get }
var INPUT_MODEM_AUDIO: Int { get }
var OUTPUT_UNDEFINED: Int { get }
var OUTPUT_SPEAKER: Int { get }
var OUTPUT_HEADPHONES: Int { get }
var OUTPUT_HEAD_MOUNTED_DISPLAY_AUDIO: Int { get }
var OUTPUT_DESKTOP_SPEAKER: Int { get }
var OUTPUT_ROOM_SPEAKER: Int { get }
var OUTPUT_COMMUNICATION_SPEAKER: Int { get }
var OUTPUT_LOW_FREQUENCY_EFFECTS_SPEAKER: Int { get }
var BIDIRECTIONAL_UNDEFINED: Int { get }
var BIDIRECTIONAL_HANDSET: Int { get }
var BIDIRECTIONAL_HEADSET: Int { get }
var BIDIRECTIONAL_SPEAKERPHONE_NO_ECHO_REDX: Int { get }
var BIDIRECTIONAL_ECHO_SUPPRESSING_SPEAKERPHONE: Int { get }
var BIDIRECTIONAL_ECHO_CANCELING_SPEAKERPHONE: Int { get }
var TELEPHONY_UNDEFINED: Int { get }
var TELEPHONY_PHONE_LINE: Int { get }
var TELEPHONY_TELEPHONE: Int { get }
var TELEPHONY_DOWN_LINE_PHONE: Int { get }
var EXTERNAL_UNDEFINED: Int { get }
var EXTERNAL_ANALOG_CONNECTOR: Int { get }
var EXTERNAL_DIGITAL_AUDIO_INTERFACE: Int { get }
var EXTERNAL_LINE_CONNECTOR: Int { get }
var EXTERNAL_LEGACY_AUDIO_CONNECTOR: Int { get }
var EXTERNAL_SPDIF_INTERFACE: Int { get }
var EXTERNAL_1394_DA_STREAM: Int { get }
var EXTERNAL_1394_DV_STREAM_SOUNDTRACK: Int { get }
var EXTERNAL_ADAT: Int { get }
var EXTERNAL_TDIF: Int { get }
var EXTERNAL_MADI: Int { get }
var EMBEDDED_UNDEFINED: Int { get }
var EMBEDDED_LEVEL_CALIBRATION_NOISE_SOURCE: Int { get }
var EMBEDDED_EQUALIZATION_NOISE: Int { get }
var EMBEDDED_CD_PLAYER: Int { get }
var EMBEDDED_DAT: Int { get }
var EMBEDDED_DCC: Int { get }
var EMBEDDED_MINIDISK: Int { get }
var EMBEDDED_ANALOG_TAPE: Int { get }
var EMBEDDED_PHONOGRAPH: Int { get }
var EMBEDDED_VCR_AUDIO: Int { get }
var EMBEDDED_VIDEO_DISC_AUDIO: Int { get }
var EMBEDDED_DVD_AUDIO: Int { get }
var EMBEDDED_TV_TUNER_AUDIO: Int { get }
var EMBEDDED_SATELLITE_RECEIVER_AUDIO: Int { get }
var EMBEDDED_CABLE_TUNER_AUDIO: Int { get }
var EMBEDDED_DSS_AUDIO: Int { get }
var EMBEDDED_RADIO_RECEIVER: Int { get }
var EMBEDDED_RADIO_TRANSMITTER: Int { get }
var EMBEDDED_MULTITRACK_RECORDER: Int { get }
var EMBEDDED_SYNTHESIZER: Int { get }
var PROCESSOR_UNDEFINED: Int { get }
var PROCESSOR_GENERAL: Int { get }
var kIOAudioChannelLabel_Discrete_field_ba: Int32 { get }
var kIOAudioChannelLabel_Unknown: UInt32 { get }
var kIOAudioChannelLabel_Unused: UInt32 { get }
var kIOAudioChannelLabel_UseCoordinates: UInt32 { get }
var kIOAudioChannelLabel_Left: UInt32 { get }
var kIOAudioChannelLabel_Right: UInt32 { get }
var kIOAudioChannelLabel_Center: UInt32 { get }
var kIOAudioChannelLabel_LFEScreen: UInt32 { get }
var kIOAudioChannelLabel_LeftSurround: UInt32 { get }
var kIOAudioChannelLabel_RightSurround: UInt32 { get }
var kIOAudioChannelLabel_LeftCenter: UInt32 { get }
var kIOAudioChannelLabel_RightCenter: UInt32 { get }
var kIOAudioChannelLabel_CenterSurround: UInt32 { get }
var kIOAudioChannelLabel_LeftSurroundDirect: UInt32 { get }
var kIOAudioChannelLabel_RightSurroundDirect: UInt32 { get }
var kIOAudioChannelLabel_TopCenterSurround: UInt32 { get }
var kIOAudioChannelLabel_VerticalHeightLeft: UInt32 { get }
var kIOAudioChannelLabel_VerticalHeightCenter: UInt32 { get }
var kIOAudioChannelLabel_VerticalHeightRight: UInt32 { get }
var kIOAudioChannelLabel_TopBackLeft: UInt32 { get }
var kIOAudioChannelLabel_TopBackCenter: UInt32 { get }
var kIOAudioChannelLabel_TopBackRight: UInt32 { get }
var kIOAudioChannelLabel_RearSurroundLeft: UInt32 { get }
var kIOAudioChannelLabel_RearSurroundRight: UInt32 { get }
var kIOAudioChannelLabel_LeftWide: UInt32 { get }
var kIOAudioChannelLabel_RightWide: UInt32 { get }
var kIOAudioChannelLabel_LFE2: UInt32 { get }
var kIOAudioChannelLabel_LeftTotal: UInt32 { get }
var kIOAudioChannelLabel_RightTotal: UInt32 { get }
var kIOAudioChannelLabel_HearingImpaired: UInt32 { get }
var kIOAudioChannelLabel_Narration: UInt32 { get }
var kIOAudioChannelLabel_Mono: UInt32 { get }
var kIOAudioChannelLabel_DialogCentricMix: UInt32 { get }
var kIOAudioChannelLabel_CenterSurroundDirect: UInt32 { get }
var kIOAudioChannelLabel_Haptic: UInt32 { get }
var kIOAudioChannelLabel_Ambisonic_W: UInt32 { get }
var kIOAudioChannelLabel_Ambisonic_X: UInt32 { get }
var kIOAudioChannelLabel_Ambisonic_Y: UInt32 { get }
var kIOAudioChannelLabel_Ambisonic_Z: UInt32 { get }
var kIOAudioChannelLabel_MS_Mid: UInt32 { get }
var kIOAudioChannelLabel_MS_Side: UInt32 { get }
var kIOAudioChannelLabel_XY_X: UInt32 { get }
var kIOAudioChannelLabel_XY_Y: UInt32 { get }
var kIOAudioChannelLabel_HeadphonesLeft: UInt32 { get }
var kIOAudioChannelLabel_HeadphonesRight: UInt32 { get }
var kIOAudioChannelLabel_ClickTrack: UInt32 { get }
var kIOAudioChannelLabel_ForeignLanguage: UInt32 { get }
var kIOAudioChannelLabel_Discrete: UInt32 { get }
var kIOAudioChannelLabel_Discrete_0: UInt32 { get }
var kIOAudioChannelLabel_Discrete_1: UInt32 { get }
var kIOAudioChannelLabel_Discrete_2: UInt32 { get }
var kIOAudioChannelLabel_Discrete_3: UInt32 { get }
var kIOAudioChannelLabel_Discrete_4: UInt32 { get }
var kIOAudioChannelLabel_Discrete_5: UInt32 { get }
var kIOAudioChannelLabel_Discrete_6: UInt32 { get }
var kIOAudioChannelLabel_Discrete_7: UInt32 { get }
var kIOAudioChannelLabel_Discrete_8: UInt32 { get }
var kIOAudioChannelLabel_Discrete_9: UInt32 { get }
var kIOAudioChannelLabel_Discrete_10: UInt32 { get }
var kIOAudioChannelLabel_Discrete_11: UInt32 { get }
var kIOAudioChannelLabel_Discrete_12: UInt32 { get }
var kIOAudioChannelLabel_Discrete_13: UInt32 { get }
var kIOAudioChannelLabel_Discrete_14: UInt32 { get }
var kIOAudioChannelLabel_Discrete_15: UInt32 { get }
var kIOAudioChannelLabel_Discrete_65535: UInt32 { get }
