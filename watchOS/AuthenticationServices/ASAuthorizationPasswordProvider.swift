
@available(watchOS 6.0, *)
class ASAuthorizationPasswordProvider : NSObject, ASAuthorizationProvider {
  func createRequest() -> ASAuthorizationPasswordRequest
}
