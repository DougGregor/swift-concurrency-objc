
class IOUSBHostCIControllerStateMachine : NSObject {
  init(__interface interface: IOUSBHostControllerInterface) throws
  func inspectCommand(_ command: UnsafePointer<IOUSBHostCIMessage>) throws
  func respond(toCommand command: UnsafePointer<IOUSBHostCIMessage>, status: IOUSBHostCIMessageStatus) throws
  func respond(toCommand command: UnsafePointer<IOUSBHostCIMessage>, status: IOUSBHostCIMessageStatus, frame: UInt64, timestamp: UInt64) throws
  func enqueueUpdatedFrame(_ frame: UInt64, timestamp: UInt64) throws
  var controllerState: IOUSBHostCIControllerState { get }
  var controllerInterface: IOUSBHostControllerInterface { get }
}
