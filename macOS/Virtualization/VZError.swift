
@available(macOS 11.0, *)
let VZErrorDomain: String
struct VZError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var `internal`: VZError.Code { get }
  static var invalidVirtualMachineConfiguration: VZError.Code { get }
  static var invalidVirtualMachineState: VZError.Code { get }
  static var invalidVirtualMachineStateTransition: VZError.Code { get }
  static var invalidDiskImage: VZError.Code { get }
}
