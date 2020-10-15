
extension ASAuthorizationAppleIDProvider {
  @available(watchOS 6.0, *)
  enum CredentialState : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case revoked
    case authorized
    case notFound
    case transferred
  }
  @available(watchOS 6.0, *)
  class let credentialRevokedNotification: NSNotification.Name
}
@available(watchOS 6.0, *)
class ASAuthorizationAppleIDProvider : NSObject, ASAuthorizationProvider {
  func createRequest() -> ASAuthorizationAppleIDRequest
  func getCredentialState(forUserID userID: String, completion: @escaping (ASAuthorizationAppleIDProvider.CredentialState, Error?) -> Void)
  func getCredentialState(forUserID userID: String) async throws -> ASAuthorizationAppleIDProvider.CredentialState
}
