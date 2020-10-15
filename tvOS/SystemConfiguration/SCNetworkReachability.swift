
class SCNetworkReachability : _CFObject {
}
struct SCNetworkReachabilityContext {
  var version: CFIndex
  var info: UnsafeMutableRawPointer?
  var retain: (@convention(c) (UnsafeRawPointer) -> UnsafeRawPointer)?
  var release: (@convention(c) (UnsafeRawPointer) -> Void)?
  var copyDescription: (@convention(c) (UnsafeRawPointer) -> Unmanaged<CFString>)?
  init()
  init(version: CFIndex, info: UnsafeMutableRawPointer?, retain: (@convention(c) (UnsafeRawPointer) -> UnsafeRawPointer)?, release: (@convention(c) (UnsafeRawPointer) -> Void)?, copyDescription: (@convention(c) (UnsafeRawPointer) -> Unmanaged<CFString>)?)
}
struct SCNetworkReachabilityFlags : OptionSet {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var transientConnection: SCNetworkReachabilityFlags { get }
  static var reachable: SCNetworkReachabilityFlags { get }
  static var connectionRequired: SCNetworkReachabilityFlags { get }
  static var connectionOnTraffic: SCNetworkReachabilityFlags { get }
  static var interventionRequired: SCNetworkReachabilityFlags { get }
  @available(tvOS 3.0, *)
  static var connectionOnDemand: SCNetworkReachabilityFlags { get }
  static var isLocalAddress: SCNetworkReachabilityFlags { get }
  static var isDirect: SCNetworkReachabilityFlags { get }
  @available(tvOS 2.0, *)
  static var isWWAN: SCNetworkReachabilityFlags { get }
  static var connectionAutomatic: SCNetworkReachabilityFlags { get }
}
typealias SCNetworkReachabilityCallBack = @convention(c) (SCNetworkReachability, SCNetworkReachabilityFlags, UnsafeMutableRawPointer?) -> Void
@available(tvOS 2.0, *)
func SCNetworkReachabilityCreateWithAddress(_ allocator: CFAllocator?, _ address: UnsafePointer<sockaddr>) -> SCNetworkReachability?
@available(tvOS 2.0, *)
func SCNetworkReachabilityCreateWithAddressPair(_ allocator: CFAllocator?, _ localAddress: UnsafePointer<sockaddr>?, _ remoteAddress: UnsafePointer<sockaddr>?) -> SCNetworkReachability?
@available(tvOS 2.0, *)
func SCNetworkReachabilityCreateWithName(_ allocator: CFAllocator?, _ nodename: UnsafePointer<CChar>) -> SCNetworkReachability?
@available(tvOS 2.0, *)
func SCNetworkReachabilityGetTypeID() -> CFTypeID
@available(tvOS 2.0, *)
func SCNetworkReachabilityGetFlags(_ target: SCNetworkReachability, _ flags: UnsafeMutablePointer<SCNetworkReachabilityFlags>) -> Bool
@available(tvOS 2.0, *)
func SCNetworkReachabilitySetCallback(_ target: SCNetworkReachability, _ callout: SCNetworkReachabilityCallBack?, _ context: UnsafeMutablePointer<SCNetworkReachabilityContext>?) -> Bool
@available(tvOS 2.0, *)
func SCNetworkReachabilityScheduleWithRunLoop(_ target: SCNetworkReachability, _ runLoop: CFRunLoop, _ runLoopMode: CFString) -> Bool
@available(tvOS 2.0, *)
func SCNetworkReachabilityUnscheduleFromRunLoop(_ target: SCNetworkReachability, _ runLoop: CFRunLoop, _ runLoopMode: CFString) -> Bool
@available(tvOS 4.0, *)
func SCNetworkReachabilitySetDispatchQueue(_ target: SCNetworkReachability, _ queue: DispatchQueue?) -> Bool
