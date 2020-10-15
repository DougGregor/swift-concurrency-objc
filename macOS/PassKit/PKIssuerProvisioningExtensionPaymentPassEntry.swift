
class PKIssuerProvisioningExtensionPaymentPassEntry : PKIssuerProvisioningExtensionPassEntry {
  init?(identifier: String, title: String, art: CGImage, addRequestConfiguration configuration: PKAddPaymentPassRequestConfiguration)
  var addRequestConfiguration: PKAddPaymentPassRequestConfiguration { get }
}
