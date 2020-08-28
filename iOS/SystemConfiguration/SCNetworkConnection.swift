
class SCNetworkConnection : _CFObject {
}
struct SCNetworkConnectionContext {
  var version: CFIndex
  var info: UnsafeMutableRawPointer?
  var retain: (@convention(c) (UnsafeRawPointer) -> UnsafeRawPointer)?
  var release: (@convention(c) (UnsafeRawPointer) -> Void)?
  var copyDescription: (@convention(c) (UnsafeRawPointer) -> Unmanaged<CFString>)?
  init()
  init(version: CFIndex, info: UnsafeMutableRawPointer?, retain: (@convention(c) (UnsafeRawPointer) -> UnsafeRawPointer)?, release: (@convention(c) (UnsafeRawPointer) -> Void)?, copyDescription: (@convention(c) (UnsafeRawPointer) -> Unmanaged<CFString>)?)
}
enum SCNetworkConnectionStatus : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case invalid
  case disconnected
  case connecting
  case connected
  case disconnecting
}
enum SCNetworkConnectionPPPStatus : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case disconnected
  case initializing
  case connectingLink
  case dialOnTraffic
  case negotiatingLink
  case authenticating
  case waitingForCallBack
  case negotiatingNetwork
  case connected
  case terminating
  case disconnectingLink
  case holdingLinkOff
  case suspended
  case waitingForRedial
}
typealias SCNetworkConnectionCallBack = @convention(c) (SCNetworkConnection, SCNetworkConnectionStatus, UnsafeMutableRawPointer?) -> Void
var kSCNetworkConnectionBytesIn: String { get }
var kSCNetworkConnectionBytesOut: String { get }
var kSCNetworkConnectionPacketsIn: String { get }
var kSCNetworkConnectionPacketsOut: String { get }
var kSCNetworkConnectionErrorsIn: String { get }
var kSCNetworkConnectionErrorsOut: String { get }
var kSCNetworkConnectionSelectionOptionOnDemandHostName: String { get }
var kSCNetworkConnectionSelectionOptionOnDemandRetry: String { get }
func SCNetworkConnectionGetTypeID() -> CFTypeID
func SCNetworkConnectionCopyUserPreferences(_ selectionOptions: CFDictionary?, _ serviceID: UnsafeMutablePointer<Unmanaged<CFString>>?, _ userOptions: UnsafeMutablePointer<Unmanaged<CFDictionary>>?) -> Bool
func SCNetworkConnectionCreateWithServiceID(_ allocator: CFAllocator?, _ serviceID: CFString, _ callout: SCNetworkConnectionCallBack?, _ context: UnsafeMutablePointer<SCNetworkConnectionContext>?) -> SCNetworkConnection?
func SCNetworkConnectionCopyServiceID(_ connection: SCNetworkConnection) -> CFString?
func SCNetworkConnectionGetStatus(_ connection: SCNetworkConnection) -> SCNetworkConnectionStatus
func SCNetworkConnectionCopyExtendedStatus(_ connection: SCNetworkConnection) -> CFDictionary?
func SCNetworkConnectionCopyStatistics(_ connection: SCNetworkConnection) -> CFDictionary?
func SCNetworkConnectionStart(_ connection: SCNetworkConnection, _ userOptions: CFDictionary?, _ linger: Bool) -> Bool
func SCNetworkConnectionStop(_ connection: SCNetworkConnection, _ forceDisconnect: Bool) -> Bool
func SCNetworkConnectionCopyUserOptions(_ connection: SCNetworkConnection) -> CFDictionary?
func SCNetworkConnectionScheduleWithRunLoop(_ connection: SCNetworkConnection, _ runLoop: CFRunLoop, _ runLoopMode: CFString) -> Bool
func SCNetworkConnectionUnscheduleFromRunLoop(_ connection: SCNetworkConnection, _ runLoop: CFRunLoop, _ runLoopMode: CFString) -> Bool
func SCNetworkConnectionSetDispatchQueue(_ connection: SCNetworkConnection, _ queue: DispatchQueue?) -> Bool
