
class IOUSBHostCIDeviceStateMachine : NSObject {
  init(__interface interface: IOUSBHostControllerInterface, command: UnsafePointer<IOUSBHostCIMessage>) throws
  func inspectCommand(_ command: UnsafePointer<IOUSBHostCIMessage>) throws
  func respond(toCommand command: UnsafePointer<IOUSBHostCIMessage>, status: IOUSBHostCIMessageStatus) throws
  func respond(toCommand command: UnsafePointer<IOUSBHostCIMessage>, status: IOUSBHostCIMessageStatus, deviceAddress: Int) throws
  var deviceState: IOUSBHostCIDeviceState { get }
  var completeRoute: Int { get }
  var deviceAddress: Int { get }
  var controllerInterface: IOUSBHostControllerInterface { get }
}
