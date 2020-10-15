
class SFCertificateTrustPanel : SFCertificatePanel {
  @available(macOS 10.3, *)
  class func shared() -> SFCertificateTrustPanel!
  @available(macOS 10.3, *)
  func runModal(for trust: SecTrust!, message: String!) -> Int
  @available(macOS 10.3, *)
  func beginSheet(for docWindow: NSWindow!, modalDelegate delegate: Any!, didEnd didEndSelector: Selector!, contextInfo: UnsafeMutableRawPointer!, trust: SecTrust!, message: String!)
  @available(macOS 10.5, *)
  func setInformativeText(_ informativeText: String!)
  @available(macOS 10.5, *)
  func informativeText() -> String!
}
