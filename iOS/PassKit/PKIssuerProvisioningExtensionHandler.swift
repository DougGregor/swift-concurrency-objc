
@available(iOS 14.0, *)
class PKIssuerProvisioningExtensionHandler : NSObject {
  func status(completion: @escaping (PKIssuerProvisioningExtensionStatus) -> Void)
  func status() async -> PKIssuerProvisioningExtensionStatus
  func passEntries(completion: @escaping ([PKIssuerProvisioningExtensionPassEntry]) -> Void)
  func passEntries() async -> [PKIssuerProvisioningExtensionPassEntry]
  func remotePassEntries(completion: @escaping ([PKIssuerProvisioningExtensionPassEntry]) -> Void)
  func remotePassEntries() async -> [PKIssuerProvisioningExtensionPassEntry]
  func generateAddPaymentPassRequestForPassEntryWithIdentifier(_ identifier: String, configuration: PKAddPaymentPassRequestConfiguration, certificateChain certificates: [Data], nonce: Data, nonceSignature: Data, completionHandler completion: @escaping (PKAddPaymentPassRequest?) -> Void)
  func generateAddPaymentPassRequestForPassEntryWithIdentifier(_ identifier: String, configuration: PKAddPaymentPassRequestConfiguration, certificateChain certificates: [Data], nonce: Data, nonceSignature: Data) async -> PKAddPaymentPassRequest?
}
