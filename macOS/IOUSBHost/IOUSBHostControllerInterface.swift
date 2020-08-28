
class IOUSBHostControllerInterface : NSObject {
  init?(__capabilities capabilities: Data, queue: DispatchQueue?, interruptRateHz: Int, error: NSErrorPointer, commandHandler: @escaping IOUSBHostControllerInterfaceCommandHandler, doorbellHandler: @escaping IOUSBHostControllerInterfaceDoorbellHandler, interestHandler: IOServiceInterestCallback? = nil)
  func destroy()
  var queue: DispatchQueue { get }
  func enqueueInterrupt(_ interrupt: UnsafePointer<IOUSBHostCIMessage>) throws
  func enqueueInterrupt(_ interrupt: UnsafePointer<IOUSBHostCIMessage>, expedite: Bool) throws
  func enqueueInterrupts(_ interrupts: UnsafePointer<IOUSBHostCIMessage>, count: Int) throws
  func enqueueInterrupts(_ interrupts: UnsafePointer<IOUSBHostCIMessage>, count: Int, expedite: Bool) throws
  var interruptRateHz: Int
  var controllerStateMachine: IOUSBHostCIControllerStateMachine { get }
  func getPortStateMachine(forCommand command: UnsafePointer<IOUSBHostCIMessage>, error: NSErrorPointer) -> IOUSBHostCIPortStateMachine
  var capabilities: UnsafePointer<IOUSBHostCIMessage> { get }
  func capabilities(forPort port: Int) -> UnsafePointer<IOUSBHostCIMessage>
  var uuid: UUID { get }
}
typealias IOUSBHostControllerInterfaceCommandHandler = (IOUSBHostControllerInterface, IOUSBHostCIMessage) -> Void
typealias IOUSBHostControllerInterfaceDoorbellHandler = (IOUSBHostControllerInterface, UnsafeMutablePointer<IOUSBHostCIDoorbell>, UInt32) -> Void
