
@available(iOS 12.0, *)
class ASCredentialProviderExtensionContext : NSExtensionContext {
  func completeRequest(withSelectedCredential credential: ASPasswordCredential, completionHandler: ((Bool) -> Void)? = nil)
  func completeRequest(withSelectedCredential credential: ASPasswordCredential) async -> Bool
  func completeExtensionConfigurationRequest()
}
