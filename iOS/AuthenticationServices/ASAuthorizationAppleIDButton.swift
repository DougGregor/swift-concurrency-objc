
extension ASAuthorizationAppleIDButton {
  @available(iOS 13.0, *)
  enum ButtonType : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case signIn
    case `continue`
    @available(iOS 13.2, *)
    case signUp
    static var `default`: ASAuthorizationAppleIDButton.ButtonType { get }
  }
  @available(iOS 13.0, *)
  enum Style : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case white
    case whiteOutline
    case black
  }
}
@available(iOS 13.0, *)
class ASAuthorizationAppleIDButton : UIControl {
  convenience init(type: ASAuthorizationAppleIDButton.ButtonType, style: ASAuthorizationAppleIDButton.Style)
  init(authorizationButtonType type: ASAuthorizationAppleIDButton.ButtonType, authorizationButtonStyle style: ASAuthorizationAppleIDButton.Style)
  var cornerRadius: CGFloat
}
