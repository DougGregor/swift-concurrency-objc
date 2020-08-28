
@available(iOS 14.0, *)
class ASAccountAuthenticationModificationViewController : UIViewController {
  func convertAccountToSignInWithAppleWithoutUserInteraction(for serviceIdentifier: ASCredentialServiceIdentifier, existingCredential: ASPasswordCredential, userInfo: [AnyHashable : Any]? = nil)
  func prepareInterfaceToConvertAccountToSignInWithApple(for serviceIdentifier: ASCredentialServiceIdentifier, existingCredential: ASPasswordCredential, userInfo: [AnyHashable : Any]? = nil)
  func changePasswordWithoutUserInteraction(for serviceIdentifier: ASCredentialServiceIdentifier, existingCredential: ASPasswordCredential, newPassword: String, userInfo: [AnyHashable : Any]? = nil)
  func prepareInterfaceToChangePassword(for serviceIdentifier: ASCredentialServiceIdentifier, existingCredential: ASPasswordCredential, newPassword: String, userInfo: [AnyHashable : Any]? = nil)
  func cancelRequest()
}
