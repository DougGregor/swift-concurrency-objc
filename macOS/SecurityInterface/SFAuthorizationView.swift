
struct SFAuthorizationViewState : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var SFAuthorizationStartupState: SFAuthorizationViewState { get }
var SFAuthorizationViewLockedState: SFAuthorizationViewState { get }
var SFAuthorizationViewInProgressState: SFAuthorizationViewState { get }
var SFAuthorizationViewUnlockedState: SFAuthorizationViewState { get }
class SFAuthorizationView : NSView {
  @available(macOS 10.3, *)
  func setString(_ authorizationString: AuthorizationString!)
  @available(macOS 10.3, *)
  func setAuthorizationRights(_ authorizationRights: UnsafePointer<AuthorizationRights>!)
  @available(macOS 10.3, *)
  func authorizationRights() -> UnsafeMutablePointer<AuthorizationRights>!
  @available(macOS 10.3, *)
  func authorization() -> SFAuthorization!
  @available(macOS 10.3, *)
  func updateStatus(_ inSender: Any!) -> Bool
  @available(macOS 10.3, *)
  func setAutoupdate(_ autoupdate: Bool)
  @available(macOS 10.3, *)
  func setAutoupdate(_ autoupdate: Bool, interval: TimeInterval)
  @available(macOS 10.3, *)
  func authorizationState() -> SFAuthorizationViewState
  @available(macOS 10.3, *)
  func setEnabled(_ enabled: Bool)
  @available(macOS 10.3, *)
  func isEnabled() -> Bool
  @available(macOS 10.3, *)
  func setFlags(_ flags: AuthorizationFlags)
  @available(macOS 10.3, *)
  func setDelegate(_ delegate: Any!)
  @available(macOS 10.3, *)
  func delegate() -> Any!
  @available(macOS 10.3, *)
  func authorize(_ inSender: Any!) -> Bool
  @available(macOS 10.3, *)
  func deauthorize(_ inSender: Any!) -> Bool
}
extension NSObject {
  @available(macOS 10.3, *)
  class func authorizationViewDidAuthorize(_ view: SFAuthorizationView!)
  @available(macOS 10.3, *)
  func authorizationViewDidAuthorize(_ view: SFAuthorizationView!)
  @available(macOS 10.3, *)
  class func authorizationViewDidDeauthorize(_ view: SFAuthorizationView!)
  @available(macOS 10.3, *)
  func authorizationViewDidDeauthorize(_ view: SFAuthorizationView!)
  @available(macOS 10.3, *)
  class func authorizationViewShouldDeauthorize(_ view: SFAuthorizationView!) -> Bool
  @available(macOS 10.3, *)
  func authorizationViewShouldDeauthorize(_ view: SFAuthorizationView!) -> Bool
  @available(macOS 10.3, *)
  class func authorizationViewCreatedAuthorization(_ view: SFAuthorizationView!)
  @available(macOS 10.3, *)
  func authorizationViewCreatedAuthorization(_ view: SFAuthorizationView!)
  @available(macOS 10.3, *)
  class func authorizationViewReleasedAuthorization(_ view: SFAuthorizationView!)
  @available(macOS 10.3, *)
  func authorizationViewReleasedAuthorization(_ view: SFAuthorizationView!)
  @available(macOS 10.3, *)
  class func authorizationViewDidHide(_ view: SFAuthorizationView!)
  @available(macOS 10.3, *)
  func authorizationViewDidHide(_ view: SFAuthorizationView!)
}
