
class SFCertificateView : NSVisualEffectView {
  @available(macOS 10.3, *)
  func setCertificate(_ certificate: SecCertificate!)
  @available(macOS 10.3, *)
  func certificate() -> Unmanaged<SecCertificate>!
  @available(macOS 10.4, *)
  func setPolicies(_ policies: Any!)
  @available(macOS 10.4, *)
  func policies() -> [Any]!
  @available(macOS 10.3, *)
  func setEditableTrust(_ editable: Bool)
  @available(macOS 10.3, *)
  func isEditable() -> Bool
  @available(macOS 10.3, *)
  func setDisplayTrust(_ display: Bool)
  @available(macOS 10.3, *)
  func isTrustDisplayed() -> Bool
  @available(macOS 10.3, *)
  func saveTrustSettings()
  @available(macOS 10.4, *)
  func setDisplayDetails(_ display: Bool)
  @available(macOS 10.4, *)
  func detailsDisplayed() -> Bool
  @available(macOS 10.5, *)
  func setDetailsDisclosed(_ disclosed: Bool)
  @available(macOS 10.5, *)
  func detailsDisclosed() -> Bool
  @available(macOS 10.5, *)
  func setPoliciesDisclosed(_ disclosed: Bool)
  @available(macOS 10.5, *)
  func policiesDisclosed() -> Bool
}
let SFCertificateViewDisclosureStateDidChange: String
