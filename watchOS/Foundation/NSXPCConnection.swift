
protocol NSXPCProxyCreating {
  func remoteObjectProxy() -> Any
  func remoteObjectProxyWithErrorHandler(_ handler: @escaping (Error) -> Void) -> Any
  @available(watchOS 2.0, *)
  optional func synchronousRemoteObjectProxyWithErrorHandler(_ handler: @escaping (Error) -> Void) -> Any
}
extension NSXPCConnection {
  @available(watchOS 2.0, *)
  struct Options : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var privileged: NSXPCConnection.Options { get }
  }
}
@available(watchOS 2.0, *)
class NSXPCConnection : NSObject, NSXPCProxyCreating {
  init(serviceName: String)
  var serviceName: String? { get }
  init(machServiceName name: String, options: NSXPCConnection.Options = [])
  init(listenerEndpoint endpoint: NSXPCListenerEndpoint)
  var endpoint: NSXPCListenerEndpoint { get }
  var exportedInterface: NSXPCInterface?
  var exportedObject: Any?
  var remoteObjectInterface: NSXPCInterface?
  var interruptionHandler: (() -> Void)?
  var invalidationHandler: (() -> Void)?
  func resume()
  func suspend()
  func invalidate()
  var auditSessionIdentifier: au_asid_t { get }
  var processIdentifier: pid_t { get }
  var effectiveUserIdentifier: uid_t { get }
  var effectiveGroupIdentifier: gid_t { get }
  @available(watchOS 2.0, *)
  class func current() -> NSXPCConnection?
  @available(watchOS 6.0, *)
  func scheduleSendBarrierBlock(_ block: @escaping () -> Void)
}
@available(watchOS 2.0, *)
class NSXPCListener : NSObject {
  class func service() -> NSXPCListener
  class func anonymous() -> NSXPCListener
  init(machServiceName name: String)
  weak var delegate: @sil_weak NSXPCListenerDelegate?
  var endpoint: NSXPCListenerEndpoint { get }
  func resume()
  func suspend()
  func invalidate()
}
protocol NSXPCListenerDelegate : NSObjectProtocol {
  @available(watchOS 2.0, *)
  optional func listener(_ listener: NSXPCListener, shouldAcceptNewConnection newConnection: NSXPCConnection) -> Bool
}
@available(watchOS 2.0, *)
class NSXPCInterface : NSObject {
  /*not inherited*/ init(with protocol: Protocol)
  unowned(unsafe) var `protocol`: @sil_unmanaged Protocol
  func setClasses(_ classes: Set<AnyHashable>, for sel: Selector, argumentIndex arg: Int, ofReply: Bool)
  func classes(for sel: Selector, argumentIndex arg: Int, ofReply: Bool) -> Set<AnyHashable>
  func setInterface(_ ifc: NSXPCInterface, for sel: Selector, argumentIndex arg: Int, ofReply: Bool)
  func forSelector(_ sel: Selector, argumentIndex arg: Int, ofReply: Bool) -> NSXPCInterface?
}
@available(watchOS 2.0, *)
class NSXPCListenerEndpoint : NSObject, NSSecureCoding {
}
@available(watchOS 2.0, *)
class NSXPCCoder : NSCoder {
  var userInfo: NSObjectProtocol?
  @available(watchOS 3.0, *)
  var connection: NSXPCConnection? { get }
}
