
@available(macOS 10.15, *)
class ASAuthorizationPasswordProvider : NSObject, ASAuthorizationProvider {
  func createRequest() -> ASAuthorizationPasswordRequest
}
