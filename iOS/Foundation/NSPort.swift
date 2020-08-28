
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
}
class NSMachPort : Port {
  class func port(withMachPort machPort: UInt32) -> Port
  init(machPort: UInt32)
  @available(iOS 2.0, *)
  class func port(withMachPort machPort: UInt32, options f: NSMachPort.Options = []) -> Port
  @available(iOS 2.0, *)
  init(machPort: UInt32, options f: NSMachPort.Options = [])
  var machPort: UInt32 { get }
}
extension NSMachPort {
  @available(iOS 2.0, *)
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
