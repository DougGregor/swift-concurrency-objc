
@available(macOS 10.13, *)
class CBManager : NSObject {
  var state: CBManagerState { get }
  var authorization: CBManagerAuthorization { get }
  @available(macOS 10.15, *)
  class var authorization: CBManagerAuthorization { get }
}
@available(macOS 10.13, *)
enum CBManagerState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case resetting
  case unsupported
  case unauthorized
  case poweredOff
  case poweredOn
}
@available(macOS 10.15, *)
enum CBManagerAuthorization : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notDetermined
  case restricted
  case denied
  case allowedAlways
}
