
typealias SocketNativeHandle = Int32
extension Port {
  class let didBecomeInvalidNotification: NSNotification.Name
}
class Port : NSObject, NSCopying, NSCoding {
  func invalidate()
  var isValid: Bool { get }
  func setDelegate(_ anObject: PortDelegate?)
  func delegate() -> PortDelegate?
  func schedule(in runLoop: RunLoop, forMode mode: RunLoop.Mode)
  func remove(from runLoop: RunLoop, forMode mode: RunLoop.Mode)
  var reservedSpaceLength: Int { get }
  func send(before limitDate: Date, components: NSMutableArray?, from receivePort: Port?, reserved headerSpaceReserved: Int) -> Bool
  func send(before limitDate: Date, msgid msgID: Int, components: NSMutableArray?, from receivePort: Port?, reserved headerSpaceReserved: Int) -> Bool
}
protocol PortDelegate : NSObjectProtocol {
  optional func handle(_ message: PortMessage)
}
class NSMachPort : Port {
  class func port(withMachPort machPort: UInt32) -> Port
  init(machPort: UInt32)
  @available(macOS 10.5, *)
  class func port(withMachPort machPort: UInt32, options f: NSMachPort.Options = []) -> Port
  @available(macOS 10.5, *)
  init(machPort: UInt32, options f: NSMachPort.Options = [])
  var machPort: UInt32 { get }
}
extension NSMachPort {
  @available(macOS 10.5, *)
  struct Options : OptionSet {
    init(rawValue: UInt)
    let rawValue: UInt
    static var deallocateSendRight: NSMachPort.Options { get }
    static var deallocateReceiveRight: NSMachPort.Options { get }
  }
}
protocol NSMachPortDelegate : PortDelegate {
  optional func handleMachMessage(_ msg: UnsafeMutableRawPointer)
}
class MessagePort : Port {
}
class SocketPort : Port {
  convenience init?(tcpPort port: UInt16)
  init?(protocolFamily family: Int32, socketType type: Int32, protocol: Int32, address: Data)
  init?(protocolFamily family: Int32, socketType type: Int32, protocol: Int32, socket sock: SocketNativeHandle)
  convenience init?(remoteWithTCPPort port: UInt16, host hostName: String?)
  init(remoteWithProtocolFamily family: Int32, socketType type: Int32, protocol: Int32, address: Data)
  var protocolFamily: Int32 { get }
  var socketType: Int32 { get }
  var `protocol`: Int32 { get }
  var address: Data { get }
  var socket: SocketNativeHandle { get }
}
