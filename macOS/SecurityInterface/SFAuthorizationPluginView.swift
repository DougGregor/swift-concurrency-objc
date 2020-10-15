
struct SFButtonType : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var SFButtonTypeCancel: SFButtonType { get }
var SFButtonTypeOK: SFButtonType { get }
var SFButtonTypeBack: SFButtonType { get }
var SFButtonTypeLogin: SFButtonType { get }
struct SFViewType : Equatable, RawRepresentable {
  init(_ rawValue: UInt32)
  init(rawValue: UInt32)
  var rawValue: UInt32
}
var SFViewTypeIdentityAndCredentials: SFViewType { get }
var SFViewTypeCredentials: SFViewType { get }
class SFAuthorizationPluginView : NSObject {
  @available(macOS 10.5, *)
  init!(callbacks: UnsafePointer<AuthorizationCallbacks>!, andEngineRef engineRef: AuthorizationEngineRef!)
  @available(macOS 10.5, *)
  func engineRef() -> AuthorizationEngineRef!
  @available(macOS 10.5, *)
  func callbacks() -> UnsafePointer<AuthorizationCallbacks>!
  @available(macOS 10.5, *)
  func buttonPressed(_ inButtonType: SFButtonType)
  @available(macOS 10.5, *)
  func lastError() -> Error!
  @available(macOS 10.5, *)
  func didActivate()
  @available(macOS 10.5, *)
  func willActivate(withUser inUserInformation: [AnyHashable : Any]!)
  @available(macOS 10.5, *)
  func didDeactivate()
  @available(macOS 10.5, *)
  func firstKeyView() -> NSView!
  @available(macOS 10.5, *)
  func firstResponder() -> NSResponder!
  @available(macOS 10.5, *)
  func lastKeyView() -> NSView!
  @available(macOS 10.5, *)
  func setEnabled(_ inEnabled: Bool)
  @available(macOS 10.5, *)
  func view(for inType: SFViewType) -> NSView!
}
extension SFAuthorizationPluginView {
  @available(macOS 10.5, *)
  func display()
  @available(macOS 10.5, *)
  func setButton(_ inButtonType: SFButtonType, enabled inEnabled: Bool)
  @available(macOS 10.5, *)
  func update()
}
let SFAuthorizationPluginViewUserNameKey: String
let SFAuthorizationPluginViewUserShortNameKey: String
let SFDisplayViewException: String
