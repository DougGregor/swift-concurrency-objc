
enum ASUserDetectionStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unsupported
  case unknown
  case likelyReal
}
@available(tvOS 13.0, *)
class ASAuthorizationAppleIDCredential : NSObject, ASAuthorizationCredential {
  var user: String { get }
  var state: String? { get }
  var authorizedScopes: [ASAuthorization.Scope] { get }
  var authorizationCode: Data? { get }
  var identityToken: Data? { get }
  var email: String? { get }
  var fullName: PersonNameComponents? { get }
  var realUserStatus: ASUserDetectionStatus { get }
}
