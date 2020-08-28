
@available(macOS 11.0, *)
class ASCredentialProviderExtensionContext : NSExtensionContext {
  func completeRequest(withSelectedCredential credential: ASPasswordCredential, completionHandler: ((Bool) -> Void)? = nil)
  func completeExtensionConfigurationRequest()
}
