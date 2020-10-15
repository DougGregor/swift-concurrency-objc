
struct IOAVCFrameFields : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kAVCCommandResponse: IOAVCFrameFields { get }
var kAVCAddress: IOAVCFrameFields { get }
var kAVCOpcode: IOAVCFrameFields { get }
var kAVCOperand0: IOAVCFrameFields { get }
var kAVCOperand1: IOAVCFrameFields { get }
var kAVCOperand2: IOAVCFrameFields { get }
var kAVCOperand3: IOAVCFrameFields { get }
var kAVCOperand4: IOAVCFrameFields { get }
var kAVCOperand5: IOAVCFrameFields { get }
var kAVCOperand6: IOAVCFrameFields { get }
var kAVCOperand7: IOAVCFrameFields { get }
var kAVCOperand8: IOAVCFrameFields { get }
struct IOAVCCommandResponse : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kAVCControlCommand: IOAVCCommandResponse { get }
var kAVCStatusInquiryCommand: IOAVCCommandResponse { get }
var kAVCSpecificInquiryCommand: IOAVCCommandResponse { get }
var kAVCNotifyCommand: IOAVCCommandResponse { get }
var kAVCGeneralInquiryCommand: IOAVCCommandResponse { get }
var kAVCNotImplementedStatus: IOAVCCommandResponse { get }
var kAVCAcceptedStatus: IOAVCCommandResponse { get }
var kAVCRejectedStatus: IOAVCCommandResponse { get }
var kAVCInTransitionStatus: IOAVCCommandResponse { get }
var kAVCImplementedStatus: IOAVCCommandResponse { get }
var kAVCChangedStatus: IOAVCCommandResponse { get }
var kAVCInterimStatus: IOAVCCommandResponse { get }
struct IOAVCOpcodes : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kAVCPlugInfoOpcode: IOAVCOpcodes { get }
var kAVCOutputPlugSignalFormatOpcode: IOAVCOpcodes { get }
var kAVCInputPlugSignalFormatOpcode: IOAVCOpcodes { get }
var kAVCUnitInfoOpcode: IOAVCOpcodes { get }
var kAVCSubunitInfoOpcode: IOAVCOpcodes { get }
var kAVCConnectionsOpcode: IOAVCOpcodes { get }
var kAVCConnectOpcode: IOAVCOpcodes { get }
var kAVCDisconnectOpcode: IOAVCOpcodes { get }
var kAVCPowerOpcode: IOAVCOpcodes { get }
var kAVCSignalSourceOpcode: IOAVCOpcodes { get }
var kAVCVendorDependentOpcode: IOAVCOpcodes { get }
var kAVCOutputSignalModeOpcode: IOAVCOpcodes { get }
var kAVCInputSignalModeOpcode: IOAVCOpcodes { get }
var kAVCSignalModeSD525_60: IOAVCOpcodes { get }
var kAVCSignalModeSDL525_60: IOAVCOpcodes { get }
var kAVCSignalModeHD1125_60: IOAVCOpcodes { get }
var kAVCSignalModeSD625_50: IOAVCOpcodes { get }
var kAVCSignalModeSDL625_50: IOAVCOpcodes { get }
var kAVCSignalModeHD1250_50: IOAVCOpcodes { get }
var kAVCSignalModeDVCPro525_60: IOAVCOpcodes { get }
var kAVCSignalModeDVCPro625_50: IOAVCOpcodes { get }
var kAVCSignalModeDummyOperand: IOAVCOpcodes { get }
var kAVCSignalModeMask_50: IOAVCOpcodes { get }
var kAVCSignalModeMask_STYPE: IOAVCOpcodes { get }
var kAVCSignalModeMask_SDL: IOAVCOpcodes { get }
var kAVCSignalModeMask_DVCPro25: IOAVCOpcodes { get }
struct IOAVCUnitTypes : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kAVCVideoMonitor: IOAVCUnitTypes { get }
var kAVCAudio: IOAVCUnitTypes { get }
var kAVCPrinter: IOAVCUnitTypes { get }
var kAVCDiskRecorder: IOAVCUnitTypes { get }
var kAVCTapeRecorder: IOAVCUnitTypes { get }
var kAVCTuner: IOAVCUnitTypes { get }
var kAVCVideoCamera: IOAVCUnitTypes { get }
var kAVCCameraStorage: IOAVCUnitTypes { get }
var kAVCVendorUnique: IOAVCUnitTypes { get }
var kAVCNumSubUnitTypes: IOAVCUnitTypes { get }
var kAVCAllOpcodes: Int32 { get }
var kAVCAllSubunitsAndUnit: Int32 { get }
var kAVCMaxNumPlugs: Int32 { get }
var kAVCAnyAvailableIsochPlug: Int32 { get }
var kAVCAnyAvailableExternalPlug: Int32 { get }
var kAVCAnyAvailableSubunitPlug: Int32 { get }
var kAVCMultiplePlugs: Int32 { get }
var kAVCInvalidPlug: Int32 { get }
var kAVCUnitAddress: Int32 { get }
var kFWAVCAsyncPlug0: Int { get }
var kFWAVCAsyncPlug1: Int { get }
var kFWAVCAsyncPlug2: Int { get }
var kFWAVCAsyncPlug3: Int { get }
var kFWAVCAsyncPlug4: Int { get }
var kFWAVCAsyncPlug5: Int { get }
var kFWAVCAsyncPlug6: Int { get }
var kFWAVCAsyncPlug7: Int { get }
var kFWAVCAsyncPlug8: Int { get }
var kFWAVCAsyncPlug9: Int { get }
var kFWAVCAsyncPlug10: Int { get }
var kFWAVCAsyncPlug11: Int { get }
var kFWAVCAsyncPlug12: Int { get }
var kFWAVCAsyncPlug13: Int { get }
var kFWAVCAsyncPlug14: Int { get }
var kFWAVCAsyncPlug15: Int { get }
var kFWAVCAsyncPlug16: Int { get }
var kFWAVCAsyncPlug17: Int { get }
var kFWAVCAsyncPlug18: Int { get }
var kFWAVCAsyncPlug19: Int { get }
var kFWAVCAsyncPlug20: Int { get }
var kFWAVCAsyncPlug21: Int { get }
var kFWAVCAsyncPlug22: Int { get }
var kFWAVCAsyncPlug23: Int { get }
var kFWAVCAsyncPlug24: Int { get }
var kFWAVCAsyncPlug25: Int { get }
var kFWAVCAsyncPlug26: Int { get }
var kFWAVCAsyncPlug27: Int { get }
var kFWAVCAsyncPlug28: Int { get }
var kFWAVCAsyncPlug29: Int { get }
var kFWAVCAsyncPlug30: Int { get }
var kFWAVCAsyncPlugAny: Int { get }
var kFWAVCStateBusSuspended: Int { get }
var kFWAVCStateBusResumed: Int { get }
var kFWAVCStatePlugReconnected: Int { get }
var kFWAVCStatePlugDisconnected: Int { get }
var kFWAVCStateDeviceRemoved: Int { get }
var kFWAVCConsumerMode_MORE: Int { get }
var kFWAVCConsumerMode_LAST: Int { get }
var kFWAVCConsumerMode_LESS: Int { get }
var kFWAVCConsumerMode_JUNK: Int { get }
var kFWAVCConsumerMode_LOST: Int { get }
var kFWAVCProducerMode_SEND: Int { get }
var kFWAVCProducerMode_TOSS: Int { get }
struct IOFWAVCPlugTypes : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var IOFWAVCPlugSubunitSourceType: IOFWAVCPlugTypes { get }
var IOFWAVCPlugSubunitDestType: IOFWAVCPlugTypes { get }
var IOFWAVCPlugIsochInputType: IOFWAVCPlugTypes { get }
var IOFWAVCPlugIsochOutputType: IOFWAVCPlugTypes { get }
var IOFWAVCPlugAsynchInputType: IOFWAVCPlugTypes { get }
var IOFWAVCPlugAsynchOutputType: IOFWAVCPlugTypes { get }
var IOFWAVCPlugExternalInputType: IOFWAVCPlugTypes { get }
var IOFWAVCPlugExternalOutputType: IOFWAVCPlugTypes { get }
struct IOFWAVCSubunitPlugMessages : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kIOFWAVCSubunitPlugMsgConnected: IOFWAVCSubunitPlugMessages { get }
var kIOFWAVCSubunitPlugMsgDisconnected: IOFWAVCSubunitPlugMessages { get }
var kIOFWAVCSubunitPlugMsgConnectedPlugModified: IOFWAVCSubunitPlugMessages { get }
var kIOFWAVCSubunitPlugMsgSignalFormatModified: IOFWAVCSubunitPlugMessages { get }
var kAVCPlugSignalFormatNTSCDV: UInt32 { get }
var kAVCPlugSignalFormatPalDV: UInt32 { get }
var kAVCPlugSignalFormatMPEGTS: UInt32 { get }
struct IOFWAVCAsyncCommandState : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kAVCAsyncCommandStatePendingRequest: IOFWAVCAsyncCommandState { get }
var kAVCAsyncCommandStateRequestSent: IOFWAVCAsyncCommandState { get }
var kAVCAsyncCommandStateRequestFailed: IOFWAVCAsyncCommandState { get }
var kAVCAsyncCommandStateWaitingForResponse: IOFWAVCAsyncCommandState { get }
var kAVCAsyncCommandStateReceivedInterimResponse: IOFWAVCAsyncCommandState { get }
var kAVCAsyncCommandStateReceivedFinalResponse: IOFWAVCAsyncCommandState { get }
var kAVCAsyncCommandStateTimeOutBeforeResponse: IOFWAVCAsyncCommandState { get }
var kAVCAsyncCommandStateBusReset: IOFWAVCAsyncCommandState { get }
var kAVCAsyncCommandStateOutOfMemory: IOFWAVCAsyncCommandState { get }
var kAVCAsyncCommandStateCanceled: IOFWAVCAsyncCommandState { get }
typealias IOFWAVCMessageCallback = @convention(c) (UnsafeMutableRawPointer?, UInt32, UnsafeMutableRawPointer?) -> Void
typealias IOFWAVCRequestCallback = @convention(c) (UnsafeMutableRawPointer?, UInt32, UInt16, UnsafePointer<UInt8>?, UInt32, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt32>?) -> IOReturn
typealias IOFWAVCPCRCallback = @convention(c) (UnsafeMutableRawPointer?, UInt32, UInt16, UInt32, UInt32, UInt32) -> Void
typealias IOFWAVCCommandHandlerCallback = @convention(c) (UnsafeMutableRawPointer?, UInt32, UInt16, IOFWSpeed, UnsafePointer<UInt8>?, UInt32) -> IOReturn
typealias IOFWAVCSubunitPlugHandlerCallback = @convention(c) (UnsafeMutableRawPointer?, UInt32, IOFWAVCPlugTypes, UInt32, IOFWAVCSubunitPlugMessages, UInt32) -> IOReturn
struct _IOFireWireAVCLibAsynchronousCommand {
  var cmdState: IOFWAVCAsyncCommandState
  var pRefCon: UnsafeMutableRawPointer!
  var pCommandBuf: UnsafeMutablePointer<UInt8>!
  var cmdLen: UInt32
  var pInterimResponseBuf: UnsafeMutablePointer<UInt8>!
  var interimResponseLen: UInt32
  var pFinalResponseBuf: UnsafeMutablePointer<UInt8>!
  var finalResponseLen: UInt32
  init()
  init(cmdState: IOFWAVCAsyncCommandState, pRefCon: UnsafeMutableRawPointer!, pCommandBuf: UnsafeMutablePointer<UInt8>!, cmdLen: UInt32, pInterimResponseBuf: UnsafeMutablePointer<UInt8>!, interimResponseLen: UInt32, pFinalResponseBuf: UnsafeMutablePointer<UInt8>!, finalResponseLen: UInt32)
}
typealias IOFireWireAVCLibAsynchronousCommand = _IOFireWireAVCLibAsynchronousCommand
typealias IOFireWireAVCLibAsynchronousCommandCallback = @convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<IOFireWireAVCLibAsynchronousCommand>?) -> Void
struct IOFireWireAVCLibUnitInterface {
  var _reserved: UnsafeMutableRawPointer!
  var QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!
  var AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var version: UInt16
  var revision: UInt16
  var open: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!
  var openWithSessionRef: (@convention(c) (UnsafeMutableRawPointer?, IOFireWireSessionRef?) -> IOReturn)!
  var getSessionRef: (@convention(c) (UnsafeMutableRawPointer?) -> IOFireWireSessionRef?)!
  var close: (@convention(c) (UnsafeMutableRawPointer?) -> Void)!
  var addCallbackDispatcherToRunLoop: (@convention(c) (UnsafeMutableRawPointer?, CFRunLoop?) -> IOReturn)!
  var removeCallbackDispatcherFromRunLoop: (@convention(c) (UnsafeMutableRawPointer?) -> Void)!
  var setMessageCallback: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, IOFWAVCMessageCallback?) -> Void)!
  var AVCCommand: (@convention(c) (UnsafeMutableRawPointer?, UnsafePointer<UInt8>?, UInt32, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt32>?) -> IOReturn)!
  var AVCCommandInGeneration: (@convention(c) (UnsafeMutableRawPointer?, UInt32, UnsafePointer<UInt8>?, UInt32, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt32>?) -> IOReturn)!
  var getAncestorInterface: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<CChar>?, REFIID, REFIID) -> UnsafeMutableRawPointer?)!
  var getProtocolInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, REFIID) -> UnsafeMutableRawPointer?)!
  var getAsyncConnectionPlugCounts: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?) -> IOReturn)!
  var createConsumerPlug: (@convention(c) (UnsafeMutableRawPointer?, UInt8, REFIID) -> UnsafeMutablePointer<UnsafeMutablePointer<IUnknownVTbl>?>?)!
  var updateAVCCommandTimeout: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!
  var makeP2PInputConnection: (@convention(c) (UnsafeMutableRawPointer?, UInt32, UInt32) -> IOReturn)!
  var breakP2PInputConnection: (@convention(c) (UnsafeMutableRawPointer?, UInt32) -> IOReturn)!
  var makeP2POutputConnection: (@convention(c) (UnsafeMutableRawPointer?, UInt32, UInt32, IOFWSpeed) -> IOReturn)!
  var breakP2POutputConnection: (@convention(c) (UnsafeMutableRawPointer?, UInt32) -> IOReturn)!
  var createAVCAsynchronousCommand: (@convention(c) (UnsafeMutableRawPointer?, UnsafePointer<UInt8>?, UInt32, IOFireWireAVCLibAsynchronousCommandCallback?, UnsafeMutableRawPointer?, UnsafeMutablePointer<UnsafeMutablePointer<IOFireWireAVCLibAsynchronousCommand>?>?) -> IOReturn)!
  var AVCAsynchronousCommandSubmit: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<IOFireWireAVCLibAsynchronousCommand>?) -> IOReturn)!
  var AVCAsynchronousCommandReinit: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<IOFireWireAVCLibAsynchronousCommand>?) -> IOReturn)!
  var AVCAsynchronousCommandCancel: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<IOFireWireAVCLibAsynchronousCommand>?) -> IOReturn)!
  var AVCAsynchronousCommandRelease: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<IOFireWireAVCLibAsynchronousCommand>?) -> IOReturn)!
  var AVCAsynchronousCommandReinitWithCommandBytes: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<IOFireWireAVCLibAsynchronousCommand>?, UnsafePointer<UInt8>?, UInt32) -> IOReturn)!
  init()
  init(_reserved: UnsafeMutableRawPointer!, QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!, AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, version: UInt16, revision: UInt16, open: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!, openWithSessionRef: (@convention(c) (UnsafeMutableRawPointer?, IOFireWireSessionRef?) -> IOReturn)!, getSessionRef: (@convention(c) (UnsafeMutableRawPointer?) -> IOFireWireSessionRef?)!, close: (@convention(c) (UnsafeMutableRawPointer?) -> Void)!, addCallbackDispatcherToRunLoop: (@convention(c) (UnsafeMutableRawPointer?, CFRunLoop?) -> IOReturn)!, removeCallbackDispatcherFromRunLoop: (@convention(c) (UnsafeMutableRawPointer?) -> Void)!, setMessageCallback: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, IOFWAVCMessageCallback?) -> Void)!, AVCCommand: (@convention(c) (UnsafeMutableRawPointer?, UnsafePointer<UInt8>?, UInt32, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt32>?) -> IOReturn)!, AVCCommandInGeneration: (@convention(c) (UnsafeMutableRawPointer?, UInt32, UnsafePointer<UInt8>?, UInt32, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt32>?) -> IOReturn)!, getAncestorInterface: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<CChar>?, REFIID, REFIID) -> UnsafeMutableRawPointer?)!, getProtocolInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, REFIID) -> UnsafeMutableRawPointer?)!, getAsyncConnectionPlugCounts: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<UInt8>?, UnsafeMutablePointer<UInt8>?) -> IOReturn)!, createConsumerPlug: (@convention(c) (UnsafeMutableRawPointer?, UInt8, REFIID) -> UnsafeMutablePointer<UnsafeMutablePointer<IUnknownVTbl>?>?)!, updateAVCCommandTimeout: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!, makeP2PInputConnection: (@convention(c) (UnsafeMutableRawPointer?, UInt32, UInt32) -> IOReturn)!, breakP2PInputConnection: (@convention(c) (UnsafeMutableRawPointer?, UInt32) -> IOReturn)!, makeP2POutputConnection: (@convention(c) (UnsafeMutableRawPointer?, UInt32, UInt32, IOFWSpeed) -> IOReturn)!, breakP2POutputConnection: (@convention(c) (UnsafeMutableRawPointer?, UInt32) -> IOReturn)!, createAVCAsynchronousCommand: (@convention(c) (UnsafeMutableRawPointer?, UnsafePointer<UInt8>?, UInt32, IOFireWireAVCLibAsynchronousCommandCallback?, UnsafeMutableRawPointer?, UnsafeMutablePointer<UnsafeMutablePointer<IOFireWireAVCLibAsynchronousCommand>?>?) -> IOReturn)!, AVCAsynchronousCommandSubmit: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<IOFireWireAVCLibAsynchronousCommand>?) -> IOReturn)!, AVCAsynchronousCommandReinit: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<IOFireWireAVCLibAsynchronousCommand>?) -> IOReturn)!, AVCAsynchronousCommandCancel: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<IOFireWireAVCLibAsynchronousCommand>?) -> IOReturn)!, AVCAsynchronousCommandRelease: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<IOFireWireAVCLibAsynchronousCommand>?) -> IOReturn)!, AVCAsynchronousCommandReinitWithCommandBytes: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<IOFireWireAVCLibAsynchronousCommand>?, UnsafePointer<UInt8>?, UInt32) -> IOReturn)!)
}
struct _IOFireWireAVCLibProtocolInterface {
  var _reserved: UnsafeMutableRawPointer!
  var QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!
  var AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var version: UInt16
  var revision: UInt16
  var addCallbackDispatcherToRunLoop: (@convention(c) (UnsafeMutableRawPointer?, CFRunLoop?) -> IOReturn)!
  var removeCallbackDispatcherFromRunLoop: (@convention(c) (UnsafeMutableRawPointer?) -> Void)!
  var setMessageCallback: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, IOFWAVCMessageCallback?) -> Void)!
  var setAVCRequestCallback: (@convention(c) (UnsafeMutableRawPointer?, UInt32, UInt32, UnsafeMutableRawPointer?, IOFWAVCRequestCallback?) -> IOReturn)!
  var allocateInputPlug: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, IOFWAVCPCRCallback?, UnsafeMutablePointer<UInt32>?) -> IOReturn)!
  var freeInputPlug: (@convention(c) (UnsafeMutableRawPointer?, UInt32) -> Void)!
  var readInputPlug: (@convention(c) (UnsafeMutableRawPointer?, UInt32) -> UInt32)!
  var updateInputPlug: (@convention(c) (UnsafeMutableRawPointer?, UInt32, UInt32, UInt32) -> IOReturn)!
  var allocateOutputPlug: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, IOFWAVCPCRCallback?, UnsafeMutablePointer<UInt32>?) -> IOReturn)!
  var freeOutputPlug: (@convention(c) (UnsafeMutableRawPointer?, UInt32) -> Void)!
  var readOutputPlug: (@convention(c) (UnsafeMutableRawPointer?, UInt32) -> UInt32)!
  var updateOutputPlug: (@convention(c) (UnsafeMutableRawPointer?, UInt32, UInt32, UInt32) -> IOReturn)!
  var readOutputMasterPlug: (@convention(c) (UnsafeMutableRawPointer?) -> UInt32)!
  var updateOutputMasterPlug: (@convention(c) (UnsafeMutableRawPointer?, UInt32, UInt32) -> IOReturn)!
  var readInputMasterPlug: (@convention(c) (UnsafeMutableRawPointer?) -> UInt32)!
  var updateInputMasterPlug: (@convention(c) (UnsafeMutableRawPointer?, UInt32, UInt32) -> IOReturn)!
  var publishAVCUnitDirectory: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!
  var installAVCCommandHandler: (@convention(c) (UnsafeMutableRawPointer?, UInt32, UInt32, UnsafeMutableRawPointer?, IOFWAVCCommandHandlerCallback?) -> IOReturn)!
  var sendAVCResponse: (@convention(c) (UnsafeMutableRawPointer?, UInt32, UInt16, UnsafePointer<CChar>?, UInt32) -> IOReturn)!
  var addSubunit: (@convention(c) (UnsafeMutableRawPointer?, UInt32, UInt32, UInt32, UnsafeMutableRawPointer?, IOFWAVCSubunitPlugHandlerCallback?, UnsafeMutablePointer<UInt32>?) -> IOReturn)!
  var setSubunitPlugSignalFormat: (@convention(c) (UnsafeMutableRawPointer?, UInt32, IOFWAVCPlugTypes, UInt32, UInt32) -> IOReturn)!
  var getSubunitPlugSignalFormat: (@convention(c) (UnsafeMutableRawPointer?, UInt32, IOFWAVCPlugTypes, UInt32, UnsafeMutablePointer<UInt32>?) -> IOReturn)!
  var connectTargetPlugs: (@convention(c) (UnsafeMutableRawPointer?, UInt32, IOFWAVCPlugTypes, UnsafeMutablePointer<UInt32>?, UInt32, IOFWAVCPlugTypes, UnsafeMutablePointer<UInt32>?, Bool, Bool) -> IOReturn)!
  var disconnectTargetPlugs: (@convention(c) (UnsafeMutableRawPointer?, UInt32, IOFWAVCPlugTypes, UInt32, UInt32, IOFWAVCPlugTypes, UInt32) -> IOReturn)!
  var getTargetPlugConnection: (@convention(c) (UnsafeMutableRawPointer?, UInt32, IOFWAVCPlugTypes, UInt32, UnsafeMutablePointer<UInt32>?, UnsafeMutablePointer<IOFWAVCPlugTypes>?, UnsafeMutablePointer<UInt32>?, UnsafeMutablePointer<Bool>?, UnsafeMutablePointer<Bool>?) -> IOReturn)!
  init()
  init(_reserved: UnsafeMutableRawPointer!, QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!, AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, version: UInt16, revision: UInt16, addCallbackDispatcherToRunLoop: (@convention(c) (UnsafeMutableRawPointer?, CFRunLoop?) -> IOReturn)!, removeCallbackDispatcherFromRunLoop: (@convention(c) (UnsafeMutableRawPointer?) -> Void)!, setMessageCallback: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, IOFWAVCMessageCallback?) -> Void)!, setAVCRequestCallback: (@convention(c) (UnsafeMutableRawPointer?, UInt32, UInt32, UnsafeMutableRawPointer?, IOFWAVCRequestCallback?) -> IOReturn)!, allocateInputPlug: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, IOFWAVCPCRCallback?, UnsafeMutablePointer<UInt32>?) -> IOReturn)!, freeInputPlug: (@convention(c) (UnsafeMutableRawPointer?, UInt32) -> Void)!, readInputPlug: (@convention(c) (UnsafeMutableRawPointer?, UInt32) -> UInt32)!, updateInputPlug: (@convention(c) (UnsafeMutableRawPointer?, UInt32, UInt32, UInt32) -> IOReturn)!, allocateOutputPlug: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, IOFWAVCPCRCallback?, UnsafeMutablePointer<UInt32>?) -> IOReturn)!, freeOutputPlug: (@convention(c) (UnsafeMutableRawPointer?, UInt32) -> Void)!, readOutputPlug: (@convention(c) (UnsafeMutableRawPointer?, UInt32) -> UInt32)!, updateOutputPlug: (@convention(c) (UnsafeMutableRawPointer?, UInt32, UInt32, UInt32) -> IOReturn)!, readOutputMasterPlug: (@convention(c) (UnsafeMutableRawPointer?) -> UInt32)!, updateOutputMasterPlug: (@convention(c) (UnsafeMutableRawPointer?, UInt32, UInt32) -> IOReturn)!, readInputMasterPlug: (@convention(c) (UnsafeMutableRawPointer?) -> UInt32)!, updateInputMasterPlug: (@convention(c) (UnsafeMutableRawPointer?, UInt32, UInt32) -> IOReturn)!, publishAVCUnitDirectory: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!, installAVCCommandHandler: (@convention(c) (UnsafeMutableRawPointer?, UInt32, UInt32, UnsafeMutableRawPointer?, IOFWAVCCommandHandlerCallback?) -> IOReturn)!, sendAVCResponse: (@convention(c) (UnsafeMutableRawPointer?, UInt32, UInt16, UnsafePointer<CChar>?, UInt32) -> IOReturn)!, addSubunit: (@convention(c) (UnsafeMutableRawPointer?, UInt32, UInt32, UInt32, UnsafeMutableRawPointer?, IOFWAVCSubunitPlugHandlerCallback?, UnsafeMutablePointer<UInt32>?) -> IOReturn)!, setSubunitPlugSignalFormat: (@convention(c) (UnsafeMutableRawPointer?, UInt32, IOFWAVCPlugTypes, UInt32, UInt32) -> IOReturn)!, getSubunitPlugSignalFormat: (@convention(c) (UnsafeMutableRawPointer?, UInt32, IOFWAVCPlugTypes, UInt32, UnsafeMutablePointer<UInt32>?) -> IOReturn)!, connectTargetPlugs: (@convention(c) (UnsafeMutableRawPointer?, UInt32, IOFWAVCPlugTypes, UnsafeMutablePointer<UInt32>?, UInt32, IOFWAVCPlugTypes, UnsafeMutablePointer<UInt32>?, Bool, Bool) -> IOReturn)!, disconnectTargetPlugs: (@convention(c) (UnsafeMutableRawPointer?, UInt32, IOFWAVCPlugTypes, UInt32, UInt32, IOFWAVCPlugTypes, UInt32) -> IOReturn)!, getTargetPlugConnection: (@convention(c) (UnsafeMutableRawPointer?, UInt32, IOFWAVCPlugTypes, UInt32, UnsafeMutablePointer<UInt32>?, UnsafeMutablePointer<IOFWAVCPlugTypes>?, UnsafeMutablePointer<UInt32>?, UnsafeMutablePointer<Bool>?, UnsafeMutablePointer<Bool>?) -> IOReturn)!)
}
typealias IOFireWireAVCLibProtocolInterface = _IOFireWireAVCLibProtocolInterface
typealias IOFireWireAVCPortStateHandler = @convention(c) (UnsafeMutableRawPointer?, UInt32) -> Void
typealias IOFireWireAVCFrameStatusHandler = @convention(c) (UnsafeMutableRawPointer?, UInt32, UInt32) -> Void
struct IOFireWireAVCLibConsumerInterface {
  var _reserved: UnsafeMutableRawPointer!
  var QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!
  var AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var version: UInt16
  var revision: UInt16
  var setSubunit: (@convention(c) (UnsafeMutableRawPointer?, UInt8) -> Void)!
  var setRemotePlug: (@convention(c) (UnsafeMutableRawPointer?, UInt8) -> Void)!
  var connectToRemotePlug: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!
  var disconnectFromRemotePlug: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!
  var setFrameStatusHandler: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, IOFireWireAVCFrameStatusHandler?) -> Void)!
  var frameProcessed: (@convention(c) (UnsafeMutableRawPointer?, UInt32) -> Void)!
  var setMaxPayloadSize: (@convention(c) (UnsafeMutableRawPointer?, UInt32) -> Void)!
  var setSegmentSize: (@convention(c) (UnsafeMutableRawPointer?, UInt32) -> IOReturn)!
  var getSegmentSize: (@convention(c) (UnsafeMutableRawPointer?) -> UInt32)!
  var getSegmentBuffer: (@convention(c) (UnsafeMutableRawPointer?) -> UnsafeMutablePointer<CChar>?)!
  var setPortStateHandler: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, IOFireWireAVCPortStateHandler?) -> Void)!
  var setPortFlags: (@convention(c) (UnsafeMutableRawPointer?, UInt32) -> Void)!
  var clearPortFlags: (@convention(c) (UnsafeMutableRawPointer?, UInt32) -> Void)!
  var getPortFlags: (@convention(c) (UnsafeMutableRawPointer?) -> UInt32)!
  init()
  init(_reserved: UnsafeMutableRawPointer!, QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!, AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, version: UInt16, revision: UInt16, setSubunit: (@convention(c) (UnsafeMutableRawPointer?, UInt8) -> Void)!, setRemotePlug: (@convention(c) (UnsafeMutableRawPointer?, UInt8) -> Void)!, connectToRemotePlug: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!, disconnectFromRemotePlug: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!, setFrameStatusHandler: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, IOFireWireAVCFrameStatusHandler?) -> Void)!, frameProcessed: (@convention(c) (UnsafeMutableRawPointer?, UInt32) -> Void)!, setMaxPayloadSize: (@convention(c) (UnsafeMutableRawPointer?, UInt32) -> Void)!, setSegmentSize: (@convention(c) (UnsafeMutableRawPointer?, UInt32) -> IOReturn)!, getSegmentSize: (@convention(c) (UnsafeMutableRawPointer?) -> UInt32)!, getSegmentBuffer: (@convention(c) (UnsafeMutableRawPointer?) -> UnsafeMutablePointer<CChar>?)!, setPortStateHandler: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, IOFireWireAVCPortStateHandler?) -> Void)!, setPortFlags: (@convention(c) (UnsafeMutableRawPointer?, UInt32) -> Void)!, clearPortFlags: (@convention(c) (UnsafeMutableRawPointer?, UInt32) -> Void)!, getPortFlags: (@convention(c) (UnsafeMutableRawPointer?) -> UInt32)!)
}
