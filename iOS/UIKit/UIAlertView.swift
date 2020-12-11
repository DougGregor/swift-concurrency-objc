
enum UIAlertViewStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case `default`
  case secureTextInput
  case plainTextInput
  case loginAndPasswordInput
}
@available(iOS, introduced: 2.0, deprecated: 9.0, message: "UIAlertView is deprecated. Use UIAlertController with a preferredStyle of UIAlertControllerStyleAlert instead")
class UIAlertView : UIView {
  convenience init(title: String?, message: String?, delegate: Any?, cancelButtonTitle: String?)
  weak var delegate: @sil_weak AnyObject?
  var title: String
  var message: String?
  func addButton(withTitle title: String?) -> Int
  func buttonTitle(at buttonIndex: Int) -> String?
  var numberOfButtons: Int { get }
  var cancelButtonIndex: Int
  var firstOtherButtonIndex: Int { get }
  var isVisible: Bool { get }
  func show()
  func dismiss(withClickedButtonIndex buttonIndex: Int, animated: Bool)
  @available(iOS 5.0, *)
  var alertViewStyle: UIAlertViewStyle
  @available(iOS 5.0, *)
  func textField(at textFieldIndex: Int) -> UITextField?
}

extension UIAlertView {
  convenience init(title: String, message: String, delegate: UIAlertViewDelegate?, cancelButtonTitle: String?, otherButtonTitles firstButtonTitle: String, _ moreButtonTitles: String...)
}
protocol UIAlertViewDelegate : NSObjectProtocol {
  @available(iOS, introduced: 2.0, deprecated: 9.0, message: "Use UIAlertController instead.")
  optional func alertView(_ alertView: UIAlertView, clickedButtonAt buttonIndex: Int)
  @available(iOS, introduced: 2.0, deprecated: 9.0, message: "Use UIAlertController instead.")
  optional func alertViewCancel(_ alertView: UIAlertView)
  @available(iOS, introduced: 2.0, deprecated: 9.0, message: "Use UIAlertController instead.")
  optional func willPresent(_ alertView: UIAlertView)
  @available(iOS, introduced: 2.0, deprecated: 9.0, message: "Use UIAlertController instead.")
  optional func didPresent(_ alertView: UIAlertView)
  @available(iOS, introduced: 2.0, deprecated: 9.0, message: "Use UIAlertController instead.")
  optional func alertView(_ alertView: UIAlertView, willDismissWithButtonIndex buttonIndex: Int)
  @available(iOS, introduced: 2.0, deprecated: 9.0, message: "Use UIAlertController instead.")
  optional func alertView(_ alertView: UIAlertView, didDismissWithButtonIndex buttonIndex: Int)
  @available(iOS, introduced: 2.0, deprecated: 9.0, message: "Use UIAlertController instead.")
  optional func alertViewShouldEnableFirstOtherButton(_ alertView: UIAlertView) -> Bool
}
