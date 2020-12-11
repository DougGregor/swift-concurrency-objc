
protocol VZVirtualMachineDelegate : NSObjectProtocol {
  @available(macOS 11.0, *)
  optional func guestDidStop(_ virtualMachine: VZVirtualMachine)
  @available(macOS 11.0, *)
  optional func virtualMachine(_ virtualMachine: VZVirtualMachine, didStopWithError error: Error)
}
