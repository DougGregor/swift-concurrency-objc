
@available(macOS 11.0, *)
class ASCredentialProviderViewController : NSViewController {
  func prepareCredentialList(for serviceIdentifiers: [ASCredentialServiceIdentifier])
  func provideCredentialWithoutUserInteraction(for credentialIdentity: ASPasswordCredentialIdentity)
  func prepareInterfaceToProvideCredential(for credentialIdentity: ASPasswordCredentialIdentity)
  func prepareInterfaceForExtensionConfiguration()
}
