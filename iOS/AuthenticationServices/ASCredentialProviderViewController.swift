
@available(iOS 12.0, *)
class ASCredentialProviderViewController : UIViewController {
  func prepareCredentialList(for serviceIdentifiers: [ASCredentialServiceIdentifier])
  func provideCredentialWithoutUserInteraction(for credentialIdentity: ASPasswordCredentialIdentity)
  func prepareInterfaceToProvideCredential(for credentialIdentity: ASPasswordCredentialIdentity)
  func prepareInterfaceForExtensionConfiguration()
}
