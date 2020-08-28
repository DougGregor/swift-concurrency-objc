
@available(macOS 10.10, *)
enum LAPolicy : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(macOS 10.12.2, *)
  case deviceOwnerAuthenticationWithBiometrics
  @available(macOS 10.11, *)
  case deviceOwnerAuthentication
  @available(macOS 10.15, *)
  case deviceOwnerAuthenticationWithWatch
  @available(macOS 10.15, *)
  case deviceOwnerAuthenticationWithBiometricsOrWatch
}
@available(macOS 10.12, *)
let LATouchIDAuthenticationMaximumAllowableReuseDuration: TimeInterval
@available(macOS 10.10, *)
class LAContext : NSObject {
  @available(macOS 10.10, *)
  func canEvaluatePolicy(_ policy: LAPolicy, error: NSErrorPointer) -> Bool
  @available(macOS 10.10, *)
  func evaluatePolicy(_ policy: LAPolicy, localizedReason: String, reply: @escaping (Bool, Error?) -> Void)
  @available(macOS 10.11, *)
  func invalidate()
  @available(macOS 10.11, *)
  func setCredential(_ credential: Data?, type: LACredentialType) -> Bool
  @available(macOS 10.11, *)
  func isCredentialSet(_ type: LACredentialType) -> Bool
  @available(macOS 10.11, *)
  func evaluateAccessControl(_ accessControl: SecAccessControl, operation: LAAccessControlOperation, localizedReason: String, reply: @escaping (Bool, Error?) -> Void)
  @available(macOS 10.10, *)
  var localizedFallbackTitle: String?
  @available(macOS 10.12, *)
  var localizedCancelTitle: String?
  @available(macOS 10.11, *)
  var evaluatedPolicyDomainState: Data? { get }
  @available(macOS 10.12, *)
  var touchIDAuthenticationAllowableReuseDuration: TimeInterval
  @available(macOS 10.13, *)
  var localizedReason: String
  @available(macOS 10.13, *)
  var interactionNotAllowed: Bool
  @available(macOS 10.13.2, *)
  var biometryType: LABiometryType { get }
}
@available(macOS 10.11, *)
enum LACredentialType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case applicationPassword
  @available(macOS 10.15.4, *)
  case smartCardPIN
}
@available(macOS 10.11, *)
enum LAAccessControlOperation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case createItem
  case useItem
  case createKey
  case useKeySign
  @available(macOS 10.12, *)
  case useKeyDecrypt
  @available(macOS 10.12, *)
  case useKeyKeyExchange
}
@available(macOS 10.13.2, *)
enum LABiometryType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(macOS 10.13.2, *)
  case none
  @available(macOS, introduced: 10.13, deprecated: 10.13.2, renamed: "LABiometryType.none")
  static var LABiometryNone: LABiometryType { get }
  case touchID
  @available(macOS 10.15, *)
  case faceID
}
