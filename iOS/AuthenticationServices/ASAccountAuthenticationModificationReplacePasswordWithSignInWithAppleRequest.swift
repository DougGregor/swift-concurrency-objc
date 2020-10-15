
@available(iOS 14.0, *)
class ASAccountAuthenticationModificationReplacePasswordWithSignInWithAppleRequest : ASAccountAuthenticationModificationRequest {
  init(user: String, serviceIdentifier: ASCredentialServiceIdentifier, userInfo: [AnyHashable : Any]? = nil)
  var user: String { get }
  var serviceIdentifier: ASCredentialServiceIdentifier { get }
  var userInfo: [AnyHashable : Any]? { get }
}
