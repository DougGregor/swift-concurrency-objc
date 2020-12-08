
@available(iOS 8.0, *)
enum LAPolicy : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(iOS 8.0, *)
  case deviceOwnerAuthenticationWithBiometrics
  @available(iOS 9.0, *)
  case deviceOwnerAuthentication
}
@available(iOS 9.0, *)
let LATouchIDAuthenticationMaximumAllowableReuseDuration: TimeInterval
@available(iOS 8.0, *)
class LAContext : NSObject {
  @available(iOS 8.0, *)
  func canEvaluatePolicy(_ policy: LAPolicy, error: NSErrorPointer) -> Bool
  @available(iOS 8.0, *)
  func evaluatePolicy(_ policy: LAPolicy, localizedReason: String, reply: @escaping (Bool, Error?) -> Void)
  @available(iOS 8.0, *)
  func evaluatePolicy(_ policy: LAPolicy, localizedReason: String) async throws -> Bool
  @available(iOS 9.0, *)
  func invalidate()
  @available(iOS 9.0, *)
  func setCredential(_ credential: Data?, type: LACredentialType) -> Bool
  @available(iOS 9.0, *)
  func isCredentialSet(_ type: LACredentialType) -> Bool
  @available(iOS 9.0, *)
  func evaluateAccessControl(_ accessControl: SecAccessControl, operation: LAAccessControlOperation, localizedReason: String, reply: @escaping (Bool, Error?) -> Void)
  @available(iOS 9.0, *)
  func evaluateAccessControl(_ accessControl: SecAccessControl, operation: LAAccessControlOperation, localizedReason: String) async throws -> Bool
  @available(iOS 8.0, *)
  var localizedFallbackTitle: String?
  @available(iOS, introduced: 8.3, deprecated: 9.0)
  var maxBiometryFailures: NSNumber?
  @available(iOS 10.0, *)
  var localizedCancelTitle: String?
  @available(iOS 9.0, *)
  var evaluatedPolicyDomainState: Data? { get }
  @available(iOS 9.0, *)
  var touchIDAuthenticationAllowableReuseDuration: TimeInterval
  @available(iOS 11.0, *)
  var localizedReason: String
  @available(iOS 11.0, *)
  var interactionNotAllowed: Bool
  @available(iOS 11.0, *)
  var biometryType: LABiometryType { get }
}
@available(iOS 9.0, *)
enum LACredentialType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case applicationPassword
  @available(iOS 13.4, *)
  case smartCardPIN
}
@available(iOS 9.0, *)
enum LAAccessControlOperation : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case createItem
  case useItem
  case createKey
  case useKeySign
  @available(iOS 10.0, *)
  case useKeyDecrypt
  @available(iOS 10.0, *)
  case useKeyKeyExchange
}
@available(iOS 11.0, *)
enum LABiometryType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(iOS 11.2, *)
  case none
  @available(iOS, introduced: 11.0, deprecated: 11.2, renamed: "LABiometryType.none")
  static var LABiometryNone: LABiometryType { get }
  case touchID
  case faceID
}
