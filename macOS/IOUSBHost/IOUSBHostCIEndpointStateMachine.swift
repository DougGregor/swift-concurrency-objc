
class IOUSBHostCIEndpointStateMachine : NSObject {
  init(__interface interface: IOUSBHostControllerInterface, command: UnsafePointer<IOUSBHostCIMessage>) throws
  func inspectCommand(_ command: UnsafePointer<IOUSBHostCIMessage>) throws
  func respond(toCommand command: UnsafePointer<IOUSBHostCIMessage>, status: IOUSBHostCIMessageStatus) throws
  func processDoorbell(_ doorbell: IOUSBHostCIDoorbell) throws
  func enqueueTransferCompletion(for message: UnsafePointer<IOUSBHostCIMessage>, status: IOUSBHostCIMessageStatus, transferLength: Int) throws
  var endpointState: IOUSBHostCIEndpointState { get }
  var deviceAddress: Int { get }
  var endpointAddress: Int { get }
  var currentTransferMessage: UnsafePointer<IOUSBHostCIMessage> { get }
  var controllerInterface: IOUSBHostControllerInterface { get }
}
