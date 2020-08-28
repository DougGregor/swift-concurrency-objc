
@available(iOS 11.0, *)
let ILMessageFilterErrorDomain: String
@available(iOS 11.0, *)
struct ILMessageFilterError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var system: ILMessageFilterError.Code { get }
  static var invalidNetworkURL: ILMessageFilterError.Code { get }
  static var networkURLUnauthorized: ILMessageFilterError.Code { get }
  static var networkRequestFailed: ILMessageFilterError.Code { get }
  static var redundantNetworkDeferral: ILMessageFilterError.Code { get }
}
