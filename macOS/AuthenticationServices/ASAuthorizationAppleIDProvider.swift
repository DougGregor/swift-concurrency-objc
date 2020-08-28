
extension ASAuthorizationAppleIDProvider {
  @available(macOS 10.15, *)
  enum CredentialState : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case revoked
    case authorized
    case notFound
    case transferred
  }
  @available(macOS 10.15, *)
  class let credentialRevokedNotification: NSNotification.Name
}
@available(macOS 10.15, *)
class ASAuthorizationAppleIDProvider : NSObject, ASAuthorizationProvider {
  func createRequest() -> ASAuthorizationAppleIDRequest
  func getCredentialState(forUserID userID: String, completion: @escaping (ASAuthorizationAppleIDProvider.CredentialState, Error?) -> Void)
}
