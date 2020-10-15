
class SFKeychainSettingsPanel : NSPanel {
  @available(macOS 10.3, *)
  class func shared() -> SFKeychainSettingsPanel!
  @available(macOS 10.3, *)
  func runModal(for settings: UnsafeMutablePointer<SecKeychainSettings>!, keychain: SecKeychain!) -> Int
  @available(macOS 10.3, *)
  func beginSheet(for docWindow: NSWindow!, modalDelegate delegate: Any!, didEnd didEndSelector: Selector!, contextInfo: UnsafeMutableRawPointer!, settings: UnsafeMutablePointer<SecKeychainSettings>!, keychain: SecKeychain!)
}
