
protocol NSXPCProxyCreating {
  func remoteObjectProxy() -> Any
  func remoteObjectProxyWithErrorHandler(_ handler: @escaping (Error) -> Void) -> Any
  @available(macOS 10.11, *)
  optional func synchronousRemoteObjectProxyWithErrorHandler(_ handler: @escaping (Error) -> Void) -> Any
}
extension NSXPCConnection {
  @available(macOS 10.8, *)
  struct Options : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var privileged: NSXPCConnection.Options { get }
  }
}
@available(macOS 10.8, *)
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
  @available(macOS 10.8, *)
  class func current() -> NSXPCConnection?
  @available(macOS 10.15, *)
  func scheduleSendBarrierBlock(_ block: @escaping () -> Void)
}
@available(macOS 10.8, *)
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
  @available(macOS 10.8, *)
  optional func listener(_ listener: NSXPCListener, shouldAcceptNewConnection newConnection: NSXPCConnection) -> Bool
}
@available(macOS 10.8, *)
class NSXPCInterface : NSObject {
  /*not inherited*/ init(with protocol: Protocol)
  unowned(unsafe) var `protocol`: @sil_unmanaged Protocol
  func setClasses(_ classes: Set<AnyHashable>, for sel: Selector, argumentIndex arg: Int, ofReply: Bool)
  func classes(for sel: Selector, argumentIndex arg: Int, ofReply: Bool) -> Set<AnyHashable>
  func setInterface(_ ifc: NSXPCInterface, for sel: Selector, argumentIndex arg: Int, ofReply: Bool)
  func forSelector(_ sel: Selector, argumentIndex arg: Int, ofReply: Bool) -> NSXPCInterface?
  @available(macOS 10.15, *)
  func setXPCType(_ type: xpc_type_t, for sel: Selector, argumentIndex arg: Int, ofReply: Bool)
  @available(macOS 10.15, *)
  func xpcType(for sel: Selector, argumentIndex arg: Int, ofReply: Bool) -> xpc_type_t?
}
@available(macOS 10.8, *)
class NSXPCListenerEndpoint : NSObject, NSSecureCoding {
}
@available(macOS 10.8, *)
class NSXPCCoder : NSCoder {
  func encodeXPCObject(_ xpcObject: xpc_object_t, forKey key: String)
  @available(macOS 10.9, *)
  func decodeXPCObject(ofType type: xpc_type_t, forKey key: String) -> xpc_object_t?
  var userInfo: NSObjectProtocol?
  @available(macOS 10.12, *)
  var connection: NSXPCConnection? { get }
}
