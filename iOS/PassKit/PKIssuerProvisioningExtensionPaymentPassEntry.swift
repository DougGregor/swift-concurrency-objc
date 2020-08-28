
@available(iOS 14.0, *)
class PKIssuerProvisioningExtensionPaymentPassEntry : PKIssuerProvisioningExtensionPassEntry {
  init?(identifier: String, title: String, art: CGImage, addRequestConfiguration configuration: PKAddPaymentPassRequestConfiguration)
  var addRequestConfiguration: PKAddPaymentPassRequestConfiguration { get }
}
