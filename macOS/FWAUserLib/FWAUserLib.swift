
typealias FWARef = OpaquePointer
typealias FWAIsochStreamRef = OpaquePointer
typealias FWADeviceRef = OpaquePointer
typealias FWAEngineRef = OpaquePointer
typealias FWAAudioStreamRef = OpaquePointer
typealias FWAMIDIStreamRef = OpaquePointer
typealias FWAMIDIPlugRef = OpaquePointer
typealias FWAAudioPlugRef = OpaquePointer
typealias FWAMIDIDeviceNubRef = OpaquePointer
typealias FWADeviceID = UInt32
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWACountDevices(_ deviceNodeIDArray: UnsafeMutablePointer<UInt16>!, _ deviceCount: UnsafeMutablePointer<UInt16>!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWAOpen(_ nodeID: UInt32, _ outRef: UnsafeMutablePointer<FWARef?>!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWAOpenLocal(_ outRef: UnsafeMutablePointer<FWARef?>!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWAClose(_ inRef: FWARef!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWARead(_ inRef: FWARef!, _ inAddress: UInt8, _ inSubAddress: UInt8, _ inDataSize: Int, _ inDataPtr: UnsafeMutableRawPointer!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWAWrite(_ inRef: FWARef!, _ inAddress: UInt8, _ inSubAddress: UInt8, _ inDataSize: Int, _ inDataPtr: UnsafeRawPointer!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWAGetNodeID(_ inRef: FWARef!, _ outNodeID: UnsafeMutablePointer<UInt32>!, _ outGeneration: UnsafeMutablePointer<UInt32>!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWAGetGUID(_ inRef: FWARef!, _ guid: UnsafeMutablePointer<UInt64>!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWAGetMacGUID(_ inRef: FWARef!, _ guid: UnsafeMutablePointer<UInt64>!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWAReadQuadlet(_ inRef: FWARef!, _ address: FWAddressPtr!, _ outData: UnsafeMutablePointer<UInt32>!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWAReadBlock(_ inRef: FWARef!, _ address: FWAddressPtr!, _ size: UnsafeMutablePointer<UInt32>!, _ outData: UnsafeMutablePointer<UInt8>!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWAExecuteAVC(_ inRef: FWARef!, _ cmd: UnsafeMutablePointer<UInt8>!, _ cmdSize: UInt32, _ response: UnsafeMutablePointer<UInt8>!, _ responseSize: UnsafeMutablePointer<UInt32>!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWAWriteQuadlet(_ inRef: FWARef!, _ address: FWAddressPtr!, _ data: UInt32) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWAWriteBlock(_ inRef: FWARef!, _ address: FWAddressPtr!, _ size: UInt32, _ data: UnsafePointer<UInt8>!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWACreateMIDIStream(_ inRef: FWARef!, _ midiIO: UInt32, _ bufSizeInBytes: UInt32, _ buf: UnsafeMutableRawPointer!, _ sequenceNum: UInt32, _ midiStreamRef: UnsafeMutablePointer<UInt32>!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWADisposeMIDIStream(_ inRef: FWARef!, _ midiStreamRef: UInt32) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWAWriteMIDIData(_ inRef: FWARef!, _ midiStreamRef: UInt32, _ writeMsgLength: UInt32, _ buf: UnsafeMutablePointer<UInt8>!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWAReadMIDIData(_ inRef: FWARef!, _ midiStreamRef: UInt32, _ buf: UnsafeMutablePointer<FWAMIDIReadBuf>!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWAGetCycleTimeOffset(_ inRef: FWARef!, _ cycleTimeOffset: UnsafeMutablePointer<UInt32>!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWASetCycleTimeOffset(_ inRef: FWARef!, _ cycleTimeOffset: UInt32) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWAGetVendorID(_ inRef: FWARef!, _ vendorID: UnsafeMutablePointer<UInt32>!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWAGetDeviceName(_ inRef: FWARef!, _ name: UnsafeMutablePointer<CChar>!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWAGetVendorName(_ inRef: FWARef!, _ name: UnsafeMutablePointer<CChar>!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWAIsMIDICapable(_ inRef: FWARef!, _ supportsMIDI: UnsafeMutablePointer<Bool>!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWAGetNumMIDIInputPlugs(_ inRef: FWARef!, _ plugs: UnsafeMutablePointer<UInt32>!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWAGetNumMIDIOutputPlugs(_ inRef: FWARef!, _ plugs: UnsafeMutablePointer<UInt32>!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWASetNumMIDIInputPlugs(_ inRef: FWARef!, _ plugs: UInt32) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWASetNumMIDIOutputPlugs(_ inRef: FWARef!, _ plugs: UInt32) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWAGetNumAudioInputPlugs(_ inRef: FWARef!, _ plugs: UnsafeMutablePointer<UInt32>!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWAGetNumAudioOutputPlugs(_ inRef: FWARef!, _ plugs: UnsafeMutablePointer<UInt32>!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWACreateAudioStream(_ inRef: FWARef!, _ audioIO: UInt32, _ audioStreamRef: UnsafeMutablePointer<UInt32>!, _ sequenceNum: UnsafeMutablePointer<UInt32>!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWADisposeAudioStream(_ inRef: FWARef!, _ audioStreamRef: UInt32) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWAGetDeviceSampleRate(_ inRef: FWARef!, _ rate: UnsafeMutablePointer<UInt32>!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWAGetDeviceSendMode(_ inRef: FWARef!, _ mode: UnsafeMutablePointer<UInt32>!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWAGetDeviceStatus(_ inRef: FWARef!, _ outData: UnsafeMutableRawPointer!, _ inSize: UInt32) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWAGetDeviceStreamInfo(_ inRef: FWARef!, _ audioStreamRef: UInt32, _ numInput: UnsafeMutablePointer<UInt32>!, _ inputIsochChan: UnsafeMutablePointer<UInt32>!, _ numOutput: UnsafeMutablePointer<UInt32>!, _ outputIsochChan: UnsafeMutablePointer<UInt32>!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWAInitAEvntSource(_ inRef: FWARef!, _ source: UnsafeMutablePointer<Unmanaged<CFRunLoopSource>?>!, _ refcon: UnsafeMutableRawPointer!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func CreateAsyncWakePort(_ inRef: FWARef!, _ notifyPort: UnsafeMutablePointer<mach_port_t>!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWAGetAEvntSource(_ inRef: FWARef!) -> CFRunLoopSource!
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWAWriteMIDIDataAsync(_ inRef: FWARef!, _ midiStreamRef: UInt32, _ writeMsgLength: UInt32, _ callback: IOAsyncCallback1!, _ refCon: UnsafeMutableRawPointer!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWAReadMIDIDataAsync(_ inRef: FWARef!, _ midiStreamRef: UInt32, _ readBufSize: UInt32, _ callback: IOAsyncCallback2!, _ refCon: UnsafeMutableRawPointer!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWASetDeviceStreamInfo(_ inRef: FWARef!, _ audioStreamRef: UInt32, _ numInput: UInt32, _ inputIsochChan: UInt32, _ numOutput: UInt32, _ outputIsochChan: UInt32, _ update: Bool) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWASyncUpDevice(_ inRef: FWARef!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWAGetMaxSpeed(_ inRef: FWARef!, _ speed: UnsafeMutablePointer<IOFWSpeed>!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWAGetMaxIsochChannels(_ inRef: FWARef!, _ inChannels: UnsafeMutablePointer<UInt32>!, _ outChannels: UnsafeMutablePointer<UInt32>!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWAGetMaxSequences(_ inRef: FWARef!, _ numSequences: UnsafeMutablePointer<UInt32>!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWAGetSupportedSampleRates(_ inRef: FWARef!, _ sampleRates: UnsafeMutablePointer<UInt32>!, _ count: UnsafeMutablePointer<UInt32>!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWAGetSupportedAudioTypes(_ inRef: FWARef!, _ audioTypes: UnsafeMutablePointer<FWAudioType>!, _ count: UnsafeMutablePointer<UInt32>!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWAGetCurrentIsochStreamRefs(_ inRef: FWARef!, _ isochStreamRef: UnsafeMutablePointer<FWAIsochStreamRef?>!, _ count: UnsafeMutablePointer<UInt32>!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWAGetIsochStreamState(_ inRef: FWARef!, _ isochStreamRef: FWAIsochStreamRef!, _ state: UnsafeMutablePointer<FWAStreamState>!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWAGetIsochStreamDirection(_ inRef: FWARef!, _ isochStreamRef: FWAIsochStreamRef!, _ direction: UnsafeMutablePointer<FWAStreamDirection>!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWAGetIsochStreamChannelID(_ inRef: FWARef!, _ isochStreamRef: FWAIsochStreamRef!, _ channelID: UnsafeMutablePointer<UInt32>!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWASetIsochStreamChannelID(_ inRef: FWARef!, _ isochStreamRef: FWAIsochStreamRef!, _ channelID: UInt32) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWAGetIsochStreamSampleRate(_ inRef: FWARef!, _ isochStreamRef: FWAIsochStreamRef!, _ rate: UnsafeMutablePointer<UInt32>!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWASetIsochStreamSampleRate(_ inRef: FWARef!, _ isochStreamRef: FWAIsochStreamRef!, _ rate: UInt32) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWAGetIsochStreamOutputSpeed(_ inRef: FWARef!, _ isochStreamRef: FWAIsochStreamRef!, _ speed: UnsafeMutablePointer<IOFWSpeed>!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWASetIsochStreamOutputSpeed(_ inRef: FWARef!, _ isochStreamRef: FWAIsochStreamRef!, _ speed: IOFWSpeed) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWAGetIsochStreamAudioType(_ inRef: FWARef!, _ isochStreamRef: FWAIsochStreamRef!, _ type: UnsafeMutablePointer<FWAudioType>!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWASetIsochStreamAudioType(_ inRef: FWARef!, _ isochStreamRef: FWAIsochStreamRef!, _ type: FWAudioType) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWACreateIsochStream(_ inRef: FWARef!, _ channelNumber: UInt32, _ direction: FWAStreamDirection, _ numAudioChannels: UInt32, _ numMIDIChannels: UInt32, _ isochStreamRef: UnsafeMutablePointer<FWAIsochStreamRef?>!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWADisposeIsochStream(_ inRef: FWARef!, _ isochStreamRef: FWAIsochStreamRef!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWAStartIsochStream(_ inRef: FWARef!, _ isochStreamRef: FWAIsochStreamRef!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWAStopIsochStream(_ inRef: FWARef!, _ isochStreamRef: FWAIsochStreamRef!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWAGetIsochStreamAudioSequenceCount(_ inRef: FWARef!, _ isochStreamRef: FWAIsochStreamRef!, _ numAudioSequence: UnsafeMutablePointer<UInt32>!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWASetIsochStreamAudioSequenceCount(_ inRef: FWARef!, _ isochStreamRef: FWAIsochStreamRef!, _ numAudioSequence: UInt32) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWAGetIsochStreamMIDISequenceCount(_ inRef: FWARef!, _ isochStreamRef: FWAIsochStreamRef!, _ numMIDISequence: UnsafeMutablePointer<UInt32>!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWASetIsochStreamMIDISequenceCount(_ inRef: FWARef!, _ isochStreamRef: FWAIsochStreamRef!, _ numMIDISequence: UInt32) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWACreateFWAudioDevice(_ inRef: FWARef!, _ deviceName: UnsafePointer<CChar>!, _ vendorID: UInt32, _ guid: UnsafePointer<CChar>!, _ device: UnsafeMutablePointer<FWADeviceRef?>!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWADisposeFWAudioDevice(_ inRef: FWARef!, _ device: FWADeviceRef!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWAStartFWAudioDevice(_ inRef: FWARef!, _ device: FWADeviceRef!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWAStopFWAudioDevice(_ inRef: FWARef!, _ device: FWADeviceRef!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWACreateFWAudioEngine(_ inRef: FWARef!, _ owningDevice: FWADeviceRef!, _ hasInput: Bool, _ hasOutput: Bool, _ engine: UnsafeMutablePointer<FWAEngineRef?>!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWADisposeFWAudioEngine(_ inRef: FWARef!, _ engine: FWAEngineRef!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWACreateFWAudioStream(_ inRef: FWARef!, _ owningIsochStreamRef: FWAIsochStreamRef!, _ channelNumber: UInt32, _ direction: UInt32, _ numAudioChannels: UInt32, _ streamName: UnsafeMutablePointer<CChar>!, _ streamIdent: UnsafeMutablePointer<UInt8>!, _ streamRef: UnsafeMutablePointer<FWAAudioStreamRef?>!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWADisposeFWAudioStream(_ inRef: FWARef!, _ streamRef: FWAAudioStreamRef!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWACreateFWAudioMIDIStream(_ inRef: FWARef!, _ owningIsochStreamRef: FWAIsochStreamRef!, _ sequenceNumber: UInt32, _ direction: UInt32, _ streamRef: UnsafeMutablePointer<FWAMIDIStreamRef?>!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWADisposeFWAudioMIDIStream(_ inRef: FWARef!, _ streamRef: FWAMIDIStreamRef!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWACreateFWAudioMIDIPlug(_ inRef: FWARef!, _ owningMIDIStreamRef: FWAMIDIStreamRef!, _ mpxID: UInt8, _ plugName: UnsafeMutablePointer<CChar>!, _ plugIdent: UnsafeMutablePointer<UInt8>!, _ streamRef: UnsafeMutablePointer<FWAMIDIPlugRef?>!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWADisposeFWAudioMIDIPlug(_ inRef: FWARef!, _ plugRef: FWAMIDIPlugRef!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWAGetClockSource(_ inRef: FWARef!, _ streamRef: UnsafeMutablePointer<FWAIsochStreamRef?>!, _ sequence: UnsafeMutablePointer<UInt32>!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWASetClockSource(_ inRef: FWARef!, _ streamRef: FWAIsochStreamRef!, _ sequence: UInt32) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWASetAutoLoad(_ inRef: FWARef!, _ enable: Bool) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWAGetProperty(_ inRef: FWARef!, _ propertyID: UInt32, _ data: UnsafeMutableRawPointer!, _ size: UnsafeMutablePointer<UInt32>!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWASetProperty(_ inRef: FWARef!, _ propertyID: UInt32, _ data: UnsafeMutableRawPointer!, _ size: UInt32) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWASetPluginPath(_ inRef: FWARef!, _ engine: FWAEngineRef!, _ vendorID: UInt32, _ modelID: UInt32, _ pluginPath: UnsafePointer<CChar>!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWACreateFWAudioPlug(_ inRef: FWARef!, _ owningStream: FWAAudioStreamRef!, _ channelID: UInt32, _ plugName: UnsafeMutablePointer<CChar>!, _ plugIdent: UnsafeMutablePointer<UInt8>!, _ streamRef: UnsafeMutablePointer<FWAAudioPlugRef?>!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWADisposeFWAudioPlug(_ inRef: FWARef!, _ plugRef: FWAAudioPlugRef!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWAGetFWAudioMIDIPlugChannel(_ inRef: FWARef!, _ streamRef: FWAMIDIPlugRef!, _ channelID: UnsafeMutablePointer<UInt32>!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWASetFWAudioMIDIPlugChannel(_ inRef: FWARef!, _ streamRef: FWAMIDIPlugRef!, _ channelID: UInt32) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWAGetFWAudioPlugChannel(_ inRef: FWARef!, _ streamRef: FWAAudioPlugRef!, _ channelID: UnsafeMutablePointer<UInt32>!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWASetFWAudioPlugChannel(_ inRef: FWARef!, _ streamRef: FWAAudioPlugRef!, _ channelID: UInt32) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWAGetIndexedFWAudioPlug(_ inRef: FWARef!, _ device: FWADeviceRef!, _ index: UInt32, _ dir: UInt32, _ plugRef: UnsafeMutablePointer<FWAAudioPlugRef?>!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWAGetIndexedFWAudioMIDIPlug(_ inRef: FWARef!, _ device: FWAMIDIDeviceNubRef!, _ index: UInt32, _ dir: UInt32, _ plugRef: UnsafeMutablePointer<FWAMIDIPlugRef?>!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWAAttachFWAudioStream(_ inRef: FWARef!, _ streamRef: FWAAudioStreamRef!, _ isochChannel: FWAIsochStreamRef!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWAAttachFWAudioMIDIStream(_ inRef: FWARef!, _ streamRef: FWAMIDIStreamRef!, _ isochChannel: FWAIsochStreamRef!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWASetFWAudioPlugProperty(_ inRef: FWARef!, _ plugRef: FWAAudioPlugRef!, _ keyname: UnsafePointer<CChar>!, _ keyvalue: UnsafePointer<CChar>!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWASetFWAudioMIDIPlugProperty(_ inRef: FWARef!, _ plugRef: FWAMIDIPlugRef!, _ keyname: UnsafePointer<CChar>!, _ keyvalue: UnsafePointer<CChar>!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWAOpenLocalWithInterface(_ guid: UInt64, _ options: UInt32, _ outRef: UnsafeMutablePointer<FWARef?>!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWAOpenWithService(_: io_service_t, _ options: UInt32, _ outRef: UnsafeMutablePointer<FWARef?>!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWAGetSessionRef(_ inRef: FWARef!, _ sessionRef: UnsafeMutablePointer<IOFireWireSessionRef?>!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWAReserveIsochSequences(_ inRef: FWARef!, _ isochStream: FWAIsochStreamRef!, _ type: FWAudioType, _ count: UInt32) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWACreateFWAudioMIDIDeviceNub(_ inRef: FWARef!, _ owningDevice: FWADeviceRef!, _ deviceName: UnsafePointer<CChar>!, _ vendorID: UInt32, _ guid: UnsafePointer<CChar>!, _ iconFilePath: UnsafePointer<CChar>!, _ modelID: UInt32, _ editorPath: UnsafePointer<CChar>!, _ device: UnsafeMutablePointer<FWAMIDIDeviceNubRef?>!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWADisposeFWAudioMIDIDeviceNub(_ inRef: FWARef!, _ device: FWAMIDIDeviceNubRef!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWAMIDIDeviceNubAttachMIDIPlug(_ inRef: FWARef!, _ midiDeviceNub: FWAMIDIDeviceNubRef!, _ midiPlug: FWAMIDIPlugRef!) -> OSStatus
@available(macOS, introduced: 10.4, deprecated: 10.12)
func FWAMIDIDeviceNubDetachMIDIPlug(_ inRef: FWARef!, _ midiPlug: FWAMIDIPlugRef!) -> OSStatus
