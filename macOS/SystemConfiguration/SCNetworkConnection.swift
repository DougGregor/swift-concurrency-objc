
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
@available(macOS 10.3, *)
func SCNetworkConnectionGetTypeID() -> CFTypeID
@available(macOS 10.3, *)
func SCNetworkConnectionCopyUserPreferences(_ selectionOptions: CFDictionary?, _ serviceID: UnsafeMutablePointer<Unmanaged<CFString>>?, _ userOptions: UnsafeMutablePointer<Unmanaged<CFDictionary>>?) -> Bool
@available(macOS 10.3, *)
func SCNetworkConnectionCreateWithServiceID(_ allocator: CFAllocator?, _ serviceID: CFString, _ callout: SCNetworkConnectionCallBack?, _ context: UnsafeMutablePointer<SCNetworkConnectionContext>?) -> SCNetworkConnection?
@available(macOS 10.3, *)
func SCNetworkConnectionCopyServiceID(_ connection: SCNetworkConnection) -> CFString?
@available(macOS 10.3, *)
func SCNetworkConnectionGetStatus(_ connection: SCNetworkConnection) -> SCNetworkConnectionStatus
@available(macOS 10.3, *)
func SCNetworkConnectionCopyExtendedStatus(_ connection: SCNetworkConnection) -> CFDictionary?
@available(macOS 10.3, *)
func SCNetworkConnectionCopyStatistics(_ connection: SCNetworkConnection) -> CFDictionary?
@available(macOS 10.3, *)
func SCNetworkConnectionStart(_ connection: SCNetworkConnection, _ userOptions: CFDictionary?, _ linger: Bool) -> Bool
@available(macOS 10.3, *)
func SCNetworkConnectionStop(_ connection: SCNetworkConnection, _ forceDisconnect: Bool) -> Bool
@available(macOS 10.3, *)
func SCNetworkConnectionCopyUserOptions(_ connection: SCNetworkConnection) -> CFDictionary?
@available(macOS 10.3, *)
func SCNetworkConnectionScheduleWithRunLoop(_ connection: SCNetworkConnection, _ runLoop: CFRunLoop, _ runLoopMode: CFString) -> Bool
@available(macOS 10.3, *)
func SCNetworkConnectionUnscheduleFromRunLoop(_ connection: SCNetworkConnection, _ runLoop: CFRunLoop, _ runLoopMode: CFString) -> Bool
@available(macOS 10.6, *)
func SCNetworkConnectionSetDispatchQueue(_ connection: SCNetworkConnection, _ queue: DispatchQueue?) -> Bool
