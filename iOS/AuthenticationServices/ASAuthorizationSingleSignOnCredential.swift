
@available(iOS 13.0, *)
class ASAuthorizationSingleSignOnCredential : NSObject, ASAuthorizationCredential {
  var state: String? { get }
  var accessToken: Data? { get }
  var identityToken: Data? { get }
  var authorizedScopes: [ASAuthorization.Scope] { get }
  @NSCopying var authenticatedResponse: HTTPURLResponse? { get }
}
