
struct IODirection : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var kIODirectionNone: IODirection { get }
var kIODirectionIn: IODirection { get }
var kIODirectionOut: IODirection { get }
var kIODirectionInOut: IODirection { get }
struct FWSBP2VirtualRange {
  var address: UnsafeMutableRawPointer!
  var length: UInt32
  init()
  init(address: UnsafeMutableRawPointer!, length: UInt32)
}
var kFWSBP2DontSynchronizeMgmtAgent: Int { get }
var kFWSBP2ExclusiveLogin: Int { get }
var kFWSBP2CommandCompleteNotify: Int { get }
var kFWSBP2CommandTransferDataFromTarget: Int { get }
var kFWSBP2CommandImmediate: Int { get }
var kFWSBP2CommandNormalORB: Int { get }
var kFWSBP2CommandReservedORB: Int { get }
var kFWSBP2CommandVendorORB: Int { get }
var kFWSBP2CommandDummyORB: Int { get }
var kFWSBP2CommandCheckGeneration: Int { get }
var kFWSBP2CommandFixedSize: Int { get }
var kFWSBP2CommandVirtualORBs: Int { get }
var kFWSBP2QueryLogins: Int { get }
var kFWSBP2AbortTask: Int { get }
var kFWSBP2AbortTaskSet: Int { get }
var kFWSBP2LogicalUnitReset: Int { get }
var kFWSBP2TargetReset: Int { get }
var kFWSBP2NormalCommandStatus: Int { get }
var kFWSBP2NormalCommandTimeout: Int { get }
var kFWSBP2UnsolicitedStatus: Int { get }
var kFWSBP2NormalCommandReset: Int { get }
struct FWSBP2LoginResponse {
  var length: UInt16
  var loginID: UInt16
  var commandBlockAgentAddressHi: UInt32
  var commandBlockAgentAddressLo: UInt32
  var reserved: UInt16
  var reconnectHold: UInt16
  init()
  init(length: UInt16, loginID: UInt16, commandBlockAgentAddressHi: UInt32, commandBlockAgentAddressLo: UInt32, reserved: UInt16, reconnectHold: UInt16)
}
struct FWSBP2StatusBlock {
  var details: UInt8
  var sbpStatus: UInt8
  var orbOffsetHi: UInt16
  var orbOffsetLo: UInt32
  var status: (UInt32, UInt32, UInt32, UInt32, UInt32, UInt32)
  init()
  init(details: UInt8, sbpStatus: UInt8, orbOffsetHi: UInt16, orbOffsetLo: UInt32, status: (UInt32, UInt32, UInt32, UInt32, UInt32, UInt32))
}
struct FWSBP2LoginCompleteParams {
  var refCon: UnsafeMutableRawPointer!
  var generation: UInt32
  var status: IOReturn
  var loginResponse: UnsafeMutablePointer<FWSBP2LoginResponse>!
  var statusBlock: UnsafeMutablePointer<FWSBP2StatusBlock>!
  var statusBlockLength: UInt32
  init()
  init(refCon: UnsafeMutableRawPointer!, generation: UInt32, status: IOReturn, loginResponse: UnsafeMutablePointer<FWSBP2LoginResponse>!, statusBlock: UnsafeMutablePointer<FWSBP2StatusBlock>!, statusBlockLength: UInt32)
}
struct FWSBP2LogoutCompleteParams {
  var refCon: UnsafeMutableRawPointer!
  var generation: UInt32
  var status: IOReturn
  var statusBlock: UnsafeMutablePointer<FWSBP2StatusBlock>!
  var statusBlockLength: UInt32
  init()
  init(refCon: UnsafeMutableRawPointer!, generation: UInt32, status: IOReturn, statusBlock: UnsafeMutablePointer<FWSBP2StatusBlock>!, statusBlockLength: UInt32)
}
struct FWSBP2ReconnectParams {
  var refCon: UnsafeMutableRawPointer!
  var generation: UInt32
  var status: IOReturn
  var reconnectStatusBlock: UnsafeMutablePointer<FWSBP2StatusBlock>!
  var reconnectStatusBlockLength: UInt32
  init()
  init(refCon: UnsafeMutableRawPointer!, generation: UInt32, status: IOReturn, reconnectStatusBlock: UnsafeMutablePointer<FWSBP2StatusBlock>!, reconnectStatusBlockLength: UInt32)
}
struct FWSBP2NotifyParams {
  var refCon: UnsafeMutableRawPointer!
  var notificationEvent: UInt32
  var message: UnsafeRawPointer!
  var length: UInt32
  var generation: UInt32
  init()
  init(refCon: UnsafeMutableRawPointer!, notificationEvent: UInt32, message: UnsafeRawPointer!, length: UInt32, generation: UInt32)
}
typealias IOFWSBP2MessageCallback = @convention(c) (UnsafeMutableRawPointer?, UInt32, UnsafeMutableRawPointer?) -> Void
typealias IOFWSBP2LoginCallback = @convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<FWSBP2LoginCompleteParams>?) -> Void
typealias IOFWSBP2LogoutCallback = @convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<FWSBP2LogoutCompleteParams>?) -> Void
typealias IOFWSBP2ORBAppendCallback = @convention(c) (UnsafeMutableRawPointer?, IOReturn, UnsafeMutableRawPointer?) -> Void
typealias IOFWSBP2ORBCompleteCallback = @convention(c) (UnsafeMutableRawPointer?, IOReturn, UnsafeMutableRawPointer?) -> Void
typealias IOFWSBP2NotifyCallback = @convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<FWSBP2NotifyParams>?) -> Void
typealias IOFWSBP2StatusCallback = @convention(c) (UnsafeMutableRawPointer?, IOReturn) -> Void
typealias IOFWSBP2FetchAgentWriteCallback = @convention(c) (UnsafeMutableRawPointer?, IOReturn, UnsafeMutableRawPointer?) -> Void
struct IOFireWireSBP2LibLUNInterface {
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
  var setMessageCallback: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, IOFWSBP2MessageCallback?) -> Void)!
  var setRefCon: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?) -> Void)!
  var getRefCon: (@convention(c) (UnsafeMutableRawPointer?) -> UnsafeMutableRawPointer?)!
  var createLogin: (@convention(c) (UnsafeMutableRawPointer?, REFIID) -> UnsafeMutablePointer<UnsafeMutablePointer<IUnknownVTbl>?>?)!
  var createMgmtORB: (@convention(c) (UnsafeMutableRawPointer?, REFIID) -> UnsafeMutablePointer<UnsafeMutablePointer<IUnknownVTbl>?>?)!
  init()
  init(_reserved: UnsafeMutableRawPointer!, QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!, AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, version: UInt16, revision: UInt16, open: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!, openWithSessionRef: (@convention(c) (UnsafeMutableRawPointer?, IOFireWireSessionRef?) -> IOReturn)!, getSessionRef: (@convention(c) (UnsafeMutableRawPointer?) -> IOFireWireSessionRef?)!, close: (@convention(c) (UnsafeMutableRawPointer?) -> Void)!, addCallbackDispatcherToRunLoop: (@convention(c) (UnsafeMutableRawPointer?, CFRunLoop?) -> IOReturn)!, removeCallbackDispatcherFromRunLoop: (@convention(c) (UnsafeMutableRawPointer?) -> Void)!, setMessageCallback: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, IOFWSBP2MessageCallback?) -> Void)!, setRefCon: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?) -> Void)!, getRefCon: (@convention(c) (UnsafeMutableRawPointer?) -> UnsafeMutableRawPointer?)!, createLogin: (@convention(c) (UnsafeMutableRawPointer?, REFIID) -> UnsafeMutablePointer<UnsafeMutablePointer<IUnknownVTbl>?>?)!, createMgmtORB: (@convention(c) (UnsafeMutableRawPointer?, REFIID) -> UnsafeMutablePointer<UnsafeMutablePointer<IUnknownVTbl>?>?)!)
}
struct IOFireWireSBP2LibORBInterface {
  var _reserved: UnsafeMutableRawPointer!
  var QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!
  var AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var version: UInt16
  var revision: UInt16
  var setRefCon: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?) -> Void)!
  var getRefCon: (@convention(c) (UnsafeMutableRawPointer?) -> UnsafeMutableRawPointer?)!
  var setCommandFlags: (@convention(c) (UnsafeMutableRawPointer?, UInt32) -> Void)!
  var setMaxORBPayloadSize: (@convention(c) (UnsafeMutableRawPointer?, UInt32) -> Void)!
  var setCommandTimeout: (@convention(c) (UnsafeMutableRawPointer?, UInt32) -> Void)!
  var setCommandGeneration: (@convention(c) (UnsafeMutableRawPointer?, UInt32) -> Void)!
  var setCommandBuffersAsRanges: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<FWSBP2VirtualRange>?, UInt32, UInt32, UInt32, UInt32) -> IOReturn)!
  var releaseCommandBuffers: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!
  var setCommandBlock: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, UInt32) -> IOReturn)!
  var LSIWorkaroundSetCommandBuffersAsRanges: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<FWSBP2VirtualRange>?, UInt32, UInt32, UInt32, UInt32) -> IOReturn)!
  var LSIWorkaroundSyncBuffersForOutput: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!
  var LSIWorkaroundSyncBuffersForInput: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!
  init()
  init(_reserved: UnsafeMutableRawPointer!, QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!, AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, version: UInt16, revision: UInt16, setRefCon: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?) -> Void)!, getRefCon: (@convention(c) (UnsafeMutableRawPointer?) -> UnsafeMutableRawPointer?)!, setCommandFlags: (@convention(c) (UnsafeMutableRawPointer?, UInt32) -> Void)!, setMaxORBPayloadSize: (@convention(c) (UnsafeMutableRawPointer?, UInt32) -> Void)!, setCommandTimeout: (@convention(c) (UnsafeMutableRawPointer?, UInt32) -> Void)!, setCommandGeneration: (@convention(c) (UnsafeMutableRawPointer?, UInt32) -> Void)!, setCommandBuffersAsRanges: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<FWSBP2VirtualRange>?, UInt32, UInt32, UInt32, UInt32) -> IOReturn)!, releaseCommandBuffers: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!, setCommandBlock: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, UInt32) -> IOReturn)!, LSIWorkaroundSetCommandBuffersAsRanges: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<FWSBP2VirtualRange>?, UInt32, UInt32, UInt32, UInt32) -> IOReturn)!, LSIWorkaroundSyncBuffersForOutput: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!, LSIWorkaroundSyncBuffersForInput: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!)
}
struct IOFireWireSBP2LibLoginInterface {
  var _reserved: UnsafeMutableRawPointer!
  var QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!
  var AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var version: UInt16
  var revision: UInt16
  var submitLogin: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!
  var submitLogout: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!
  var setLoginFlags: (@convention(c) (UnsafeMutableRawPointer?, UInt32) -> Void)!
  var setLoginCallback: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, IOFWSBP2LoginCallback?) -> Void)!
  var setLogoutCallback: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, IOFWSBP2LogoutCallback?) -> Void)!
  var setRefCon: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?) -> Void)!
  var getRefCon: (@convention(c) (UnsafeMutableRawPointer?) -> UnsafeMutableRawPointer?)!
  var getMaxCommandBlockSize: (@convention(c) (UnsafeMutableRawPointer?) -> UInt32)!
  var getLoginID: (@convention(c) (UnsafeMutableRawPointer?) -> UInt32)!
  var setMaxPayloadSize: (@convention(c) (UnsafeMutableRawPointer?, UInt32) -> Void)!
  var setReconnectTime: (@convention(c) (UnsafeMutableRawPointer?, UInt32) -> Void)!
  var createORB: (@convention(c) (UnsafeMutableRawPointer?, REFIID) -> UnsafeMutablePointer<UnsafeMutablePointer<IUnknownVTbl>?>?)!
  var submitORB: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<UnsafeMutablePointer<IOFireWireSBP2LibORBInterface>?>?) -> IOReturn)!
  var setUnsolicitedStatusNotify: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, IOFWSBP2NotifyCallback?) -> Void)!
  var setStatusNotify: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, IOFWSBP2NotifyCallback?) -> Void)!
  var setFetchAgentResetCallback: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, IOFWSBP2StatusCallback?) -> Void)!
  var submitFetchAgentReset: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!
  var setFetchAgentWriteCallback: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, IOFWSBP2FetchAgentWriteCallback?) -> Void)!
  var ringDoorbell: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!
  var enableUnsolicitedStatus: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!
  var setBusyTimeoutRegisterValue: (@convention(c) (UnsafeMutableRawPointer?, UInt32) -> IOReturn)!
  var setPassword: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, UInt32) -> IOReturn)!
  init()
  init(_reserved: UnsafeMutableRawPointer!, QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!, AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, version: UInt16, revision: UInt16, submitLogin: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!, submitLogout: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!, setLoginFlags: (@convention(c) (UnsafeMutableRawPointer?, UInt32) -> Void)!, setLoginCallback: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, IOFWSBP2LoginCallback?) -> Void)!, setLogoutCallback: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, IOFWSBP2LogoutCallback?) -> Void)!, setRefCon: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?) -> Void)!, getRefCon: (@convention(c) (UnsafeMutableRawPointer?) -> UnsafeMutableRawPointer?)!, getMaxCommandBlockSize: (@convention(c) (UnsafeMutableRawPointer?) -> UInt32)!, getLoginID: (@convention(c) (UnsafeMutableRawPointer?) -> UInt32)!, setMaxPayloadSize: (@convention(c) (UnsafeMutableRawPointer?, UInt32) -> Void)!, setReconnectTime: (@convention(c) (UnsafeMutableRawPointer?, UInt32) -> Void)!, createORB: (@convention(c) (UnsafeMutableRawPointer?, REFIID) -> UnsafeMutablePointer<UnsafeMutablePointer<IUnknownVTbl>?>?)!, submitORB: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutablePointer<UnsafeMutablePointer<IOFireWireSBP2LibORBInterface>?>?) -> IOReturn)!, setUnsolicitedStatusNotify: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, IOFWSBP2NotifyCallback?) -> Void)!, setStatusNotify: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, IOFWSBP2NotifyCallback?) -> Void)!, setFetchAgentResetCallback: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, IOFWSBP2StatusCallback?) -> Void)!, submitFetchAgentReset: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!, setFetchAgentWriteCallback: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, IOFWSBP2FetchAgentWriteCallback?) -> Void)!, ringDoorbell: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!, enableUnsolicitedStatus: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!, setBusyTimeoutRegisterValue: (@convention(c) (UnsafeMutableRawPointer?, UInt32) -> IOReturn)!, setPassword: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, UInt32) -> IOReturn)!)
}
struct IOFireWireSBP2LibMgmtORBInterface {
  var _reserved: UnsafeMutableRawPointer!
  var QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!
  var AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!
  var version: UInt16
  var revision: UInt16
  var submitORB: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!
  var setORBCompleteCallback: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, IOFWSBP2ORBCompleteCallback?) -> Void)!
  var setRefCon: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?) -> Void)!
  var getRefCon: (@convention(c) (UnsafeMutableRawPointer?) -> UnsafeMutableRawPointer?)!
  var setCommandFunction: (@convention(c) (UnsafeMutableRawPointer?, UInt32) -> IOReturn)!
  var setManageeORB: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?) -> IOReturn)!
  var setManageeLogin: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?) -> IOReturn)!
  var setResponseBuffer: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, UInt32) -> IOReturn)!
  init()
  init(_reserved: UnsafeMutableRawPointer!, QueryInterface: (@convention(c) (UnsafeMutableRawPointer?, REFIID, UnsafeMutablePointer<LPVOID?>?) -> HRESULT)!, AddRef: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, Release: (@convention(c) (UnsafeMutableRawPointer?) -> ULONG)!, version: UInt16, revision: UInt16, submitORB: (@convention(c) (UnsafeMutableRawPointer?) -> IOReturn)!, setORBCompleteCallback: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, IOFWSBP2ORBCompleteCallback?) -> Void)!, setRefCon: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?) -> Void)!, getRefCon: (@convention(c) (UnsafeMutableRawPointer?) -> UnsafeMutableRawPointer?)!, setCommandFunction: (@convention(c) (UnsafeMutableRawPointer?, UInt32) -> IOReturn)!, setManageeORB: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?) -> IOReturn)!, setManageeLogin: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?) -> IOReturn)!, setResponseBuffer: (@convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, UInt32) -> IOReturn)!)
}
