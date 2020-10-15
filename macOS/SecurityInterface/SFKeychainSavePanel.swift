
class SFKeychainSavePanel : NSSavePanel {
  @available(macOS 10.3, *)
  class func shared() -> SFKeychainSavePanel!
  @available(macOS 10.3, *)
  func setPassword(_ password: String!)
  @available(macOS 10.3, *)
  func keychain() -> Unmanaged<SecKeychain>!
  @available(macOS 10.5, *)
  func error() -> Error!
}
