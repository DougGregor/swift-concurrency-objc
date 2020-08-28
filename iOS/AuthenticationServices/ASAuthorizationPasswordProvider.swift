
@available(iOS 13.0, *)
class ASAuthorizationPasswordProvider : NSObject, ASAuthorizationProvider {
  func createRequest() -> ASAuthorizationPasswordRequest
}
