
@available(iOS 14.0, *)
class ASAccountAuthenticationModificationExtensionContext : NSExtensionContext {
  func getSignInWithAppleUpgradeAuthorization(state: String?, nonce: String?, completionHandler: @escaping (ASAuthorizationAppleIDCredential?, Error?) -> Void)
  func completeUpgradeToSignInWithApple(userInfo: [AnyHashable : Any]? = nil)
  func completeChangePasswordRequest(updatedCredential: ASPasswordCredential, userInfo: [AnyHashable : Any]? = nil)
}
