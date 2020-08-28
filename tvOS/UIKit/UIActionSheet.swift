
@available(tvOS, introduced: 2.0, deprecated: 13.0, message: "UIActionSheet is deprecated. Use UIAlertController with a preferredStyle of UIAlertControllerStyleActionSheet instead.")
enum UIActionSheetStyle : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case automatic
  case `default`
  case blackTranslucent
  case blackOpaque
}
@available(tvOS, introduced: 2.0, deprecated: 8.3, message: "UIActionSheet is deprecated. Use UIAlertController with a preferredStyle of UIAlertControllerStyleActionSheet instead")
class UIActionSheet : UIView {
  init(title: String?, delegate: UIActionSheetDelegate?, cancelButtonTitle: String?, destructiveButtonTitle: String?)
  weak var delegate: @sil_weak UIActionSheetDelegate?
  var title: String
  var actionSheetStyle: UIActionSheetStyle
  func addButton(withTitle title: String?) -> Int
  func buttonTitle(at buttonIndex: Int) -> String?
  var numberOfButtons: Int { get }
  var cancelButtonIndex: Int
  var destructiveButtonIndex: Int
  var firstOtherButtonIndex: Int { get }
  var isVisible: Bool { get }
  func show(from view: UIToolbar)
  func show(from view: UITabBar)
  @available(tvOS 3.2, *)
  func show(from item: UIBarButtonItem, animated: Bool)
  @available(tvOS 3.2, *)
  func show(from rect: CGRect, in view: UIView, animated: Bool)
  func show(in view: UIView)
  func dismiss(withClickedButtonIndex buttonIndex: Int, animated: Bool)
}
protocol UIActionSheetDelegate : NSObjectProtocol {
  @available(tvOS, introduced: 2.0, deprecated: 8.3, message: "Use UIAlertController instead.")
  optional func actionSheet(_ actionSheet: UIActionSheet, clickedButtonAt buttonIndex: Int)
  @available(tvOS, introduced: 2.0, deprecated: 8.3, message: "Use UIAlertController instead.")
  optional func actionSheetCancel(_ actionSheet: UIActionSheet)
  @available(tvOS, introduced: 2.0, deprecated: 8.3, message: "Use UIAlertController instead.")
  optional func willPresent(_ actionSheet: UIActionSheet)
  @available(tvOS, introduced: 2.0, deprecated: 8.3, message: "Use UIAlertController instead.")
  optional func didPresent(_ actionSheet: UIActionSheet)
  @available(tvOS, introduced: 2.0, deprecated: 8.3, message: "Use UIAlertController instead.")
  optional func actionSheet(_ actionSheet: UIActionSheet, willDismissWithButtonIndex buttonIndex: Int)
  @available(tvOS, introduced: 2.0, deprecated: 8.3, message: "Use UIAlertController instead.")
  optional func actionSheet(_ actionSheet: UIActionSheet, didDismissWithButtonIndex buttonIndex: Int)
}
