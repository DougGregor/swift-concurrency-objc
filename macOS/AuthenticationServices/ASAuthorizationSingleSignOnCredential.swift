
@available(macOS 10.15, *)
class ASAuthorizationSingleSignOnCredential : NSObject, ASAuthorizationCredential {
  var state: String? { get }
  var accessToken: Data? { get }
  var identityToken: Data? { get }
  var authorizedScopes: [ASAuthorization.Scope] { get }
  @NSCopying var authenticatedResponse: HTTPURLResponse? { get }
}
