
extension ASAuthorizationAppleIDButton {
  @available(tvOS 13.0, *)
  enum ButtonType : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case signIn
    case `continue`
    @available(tvOS 13.1, *)
    case signUp
    static var `default`: ASAuthorizationAppleIDButton.ButtonType { get }
  }
  @available(tvOS 13.0, *)
  enum Style : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case white
    case whiteOutline
    case black
  }
}
@available(tvOS 13.0, *)
class ASAuthorizationAppleIDButton : UIControl {
  convenience init(type: ASAuthorizationAppleIDButton.ButtonType, style: ASAuthorizationAppleIDButton.Style)
  init(authorizationButtonType type: ASAuthorizationAppleIDButton.ButtonType, authorizationButtonStyle style: ASAuthorizationAppleIDButton.Style)
}
