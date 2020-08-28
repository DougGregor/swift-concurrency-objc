
@available(watchOS 3.0, *)
class CBManager : NSObject {
  var state: CBManagerState { get }
  @available(watchOS, introduced: 6.0, deprecated: 6.1)
  var authorization: CBManagerAuthorization { get }
  @available(watchOS 6.0, *)
  class var authorization: CBManagerAuthorization { get }
}
@available(watchOS 3.0, *)
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
@available(watchOS 6.0, *)
enum CBManagerAuthorization : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notDetermined
  case restricted
  case denied
  case allowedAlways
}
