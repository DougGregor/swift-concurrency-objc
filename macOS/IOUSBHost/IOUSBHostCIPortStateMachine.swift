
class IOUSBHostCIPortStateMachine : NSObject {
  init(__interface interface: IOUSBHostControllerInterface, portNumber: Int) throws
  func inspectCommand(_ command: UnsafePointer<IOUSBHostCIMessage>) throws
  func respond(toCommand command: UnsafePointer<IOUSBHostCIMessage>, status: IOUSBHostCIMessageStatus) throws
  var portNumber: Int { get }
  var portState: IOUSBHostCIPortState { get }
  var portStatus: IOUSBHostCIPortStatus { get }
  var controllerInterface: IOUSBHostControllerInterface { get }
  var powered: Bool
  var connected: Bool
  var overcurrent: Bool
  func updateLinkState(_ linkState: IOUSBHostCILinkState, speed: IOUSBHostCIDeviceSpeed, inhibitLinkStateChange: Bool) throws
  var linkState: IOUSBHostCILinkState { get }
  var speed: IOUSBHostCIDeviceSpeed { get }
}
