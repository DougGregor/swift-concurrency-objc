
@available(iOS 14.0, *)
class PKIssuerProvisioningExtensionHandler : NSObject {
  func status(completion: @escaping (PKIssuerProvisioningExtensionStatus) -> Void)
  func passEntries(completion: @escaping ([PKIssuerProvisioningExtensionPassEntry]) -> Void)
  func remotePassEntries(completion: @escaping ([PKIssuerProvisioningExtensionPassEntry]) -> Void)
  func generateAddPaymentPassRequestForPassEntryWithIdentifier(_ identifier: String, configuration: PKAddPaymentPassRequestConfiguration, certificateChain certificates: [Data], nonce: Data, nonceSignature: Data, completionHandler completion: @escaping (PKAddPaymentPassRequest?) -> Void)
}
