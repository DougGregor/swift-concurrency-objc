
extension ASAuthorizationAppleIDButton {
  @available(macOS 10.15, *)
  enum ButtonType : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case signIn
    case `continue`
    @available(macOS 10.15.1, *)
    case signUp
    static var `default`: ASAuthorizationAppleIDButton.ButtonType { get }
  }
  @available(macOS 10.15, *)
  enum Style : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case white
    case whiteOutline
    case black
  }
}
@available(macOS 10.15, *)
class ASAuthorizationAppleIDButton : NSControl, NSAccessibilityButton {
  convenience init(type: ASAuthorizationAppleIDButton.ButtonType, style: ASAuthorizationAppleIDButton.Style)
  init(authorizationButtonType type: ASAuthorizationAppleIDButton.ButtonType, authorizationButtonStyle style: ASAuthorizationAppleIDButton.Style)
  var cornerRadius: CGFloat
}
