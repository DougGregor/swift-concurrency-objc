
class SFChooseIdentityPanel : NSPanel {
  @available(macOS 10.3, *)
  class func shared() -> SFChooseIdentityPanel!
  @available(macOS 10.3, *)
  func runModal(forIdentities identities: [Any]!, message: String!) -> Int
  @available(macOS 10.3, *)
  func beginSheet(for docWindow: NSWindow!, modalDelegate delegate: Any!, didEnd didEndSelector: Selector!, contextInfo: UnsafeMutableRawPointer!, identities: [Any]!, message: String!)
  @available(macOS 10.3, *)
  func identity() -> Unmanaged<SecIdentity>!
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
  @available(macOS 10.5, *)
  func setInformativeText(_ informativeText: String!)
  @available(macOS 10.5, *)
  func informativeText() -> String!
  @available(macOS 10.5, *)
  func setDomain(_ domainString: String!)
  @available(macOS 10.5, *)
  func domain() -> String!
}
extension NSObject {
  @available(macOS 10.4, *)
  class func chooseIdentityPanelShowHelp(_ sender: SFChooseIdentityPanel!) -> Bool
  @available(macOS 10.4, *)
  func chooseIdentityPanelShowHelp(_ sender: SFChooseIdentityPanel!) -> Bool
}
