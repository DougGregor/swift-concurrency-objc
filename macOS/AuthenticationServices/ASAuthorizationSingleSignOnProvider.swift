
@available(macOS 10.15, *)
class ASAuthorizationSingleSignOnProvider : NSObject, ASAuthorizationProvider {
  convenience init(identityProvider url: URL)
  func createRequest() -> ASAuthorizationSingleSignOnRequest
  var url: URL { get }
  var canPerformAuthorization: Bool { get }
}
