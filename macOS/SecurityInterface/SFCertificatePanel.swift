
class SFCertificatePanel : NSPanel {
  @available(macOS 10.3, *)
  class func shared() -> SFCertificatePanel!
  @available(macOS 10.4, *)
  func runModal(for trust: SecTrust!, showGroup: Bool) -> Int
  @available(macOS 10.3, *)
  func runModal(forCertificates certificates: [Any]!, showGroup: Bool) -> Int
  @available(macOS 10.4, *)
  func beginSheet(for docWindow: NSWindow!, modalDelegate delegate: Any!, didEnd didEndSelector: Selector!, contextInfo: UnsafeMutableRawPointer!, trust: SecTrust!, showGroup: Bool)
  @available(macOS 10.3, *)
  func beginSheet(for docWindow: NSWindow!, modalDelegate delegate: Any!, didEnd didEndSelector: Selector!, contextInfo: UnsafeMutableRawPointer!, certificates: [Any]!, showGroup: Bool)
  @available(macOS 10.4, *)
  func setPolicies(_ policies: Any!)
  @available(macOS 10.4, *)
  func policies() -> [Any]!
  @available(macOS 10.4, *)
  func setDefaultButtonTitle(_ title: String!)
  @available(macOS 10.4, *)
  func setAlternateButtonTitle(_ title: String!)
  @available(macOS 10.4, *)
  func setShowsHelp(_ showsHelp: Bool)
  @available(macOS 10.4, *)
  func showsHelp() -> Bool
  @available(macOS 10.4, *)
  func setHelpAnchor(_ anchor: String!)
  @available(macOS 10.4, *)
  func helpAnchor() -> String!
  @available(macOS 10.4, *)
  func certificateView() -> SFCertificateView!
}
extension NSObject {
  @available(macOS 10.4, *)
  class func certificatePanelShowHelp(_ sender: SFCertificatePanel!) -> Bool
  @available(macOS 10.4, *)
  func certificatePanelShowHelp(_ sender: SFCertificatePanel!) -> Bool
}
