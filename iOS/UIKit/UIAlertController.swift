
extension UIAlertAction {
  @available(iOS 8.0, *)
  enum Style : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case `default`
    case cancel
    case destructive
  }
}
extension UIAlertController {
  @available(iOS 8.0, *)
  enum Style : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case actionSheet
    case alert
  }
}
@available(iOS 8.0, *)
class UIAlertAction : NSObject, NSCopying {
  convenience init(title: String?, style: UIAlertAction.Style, handler: ((UIAlertAction) -> Void)? = nil)
  var title: String? { get }
  var style: UIAlertAction.Style { get }
  var isEnabled: Bool
}
@available(iOS 8.0, *)
class UIAlertController : UIViewController {
  convenience init(title: String?, message: String?, preferredStyle: UIAlertController.Style)
  func addAction(_ action: UIAlertAction)
  var actions: [UIAlertAction] { get }
  @available(iOS 9.0, *)
  var preferredAction: UIAlertAction?
  func addTextField(configurationHandler: ((UITextField) -> Void)? = nil)
  var textFields: [UITextField]? { get }
  var message: String?
  var preferredStyle: UIAlertController.Style { get }
}
extension UIAlertController : UISpringLoadedInteractionSupporting {
}
