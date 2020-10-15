
extension UIContextualAction {
  typealias Handler = (UIContextualAction, UIView, @escaping (Bool) -> Void) -> Void
  @available(iOS 11.0, *)
  enum Style : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case normal
    case destructive
  }
}
@available(iOS 11.0, *)
class UIContextualAction : NSObject {
  convenience init(style: UIContextualAction.Style, title: String?, handler: @escaping UIContextualAction.Handler)
  var style: UIContextualAction.Style { get }
  var handler: UIContextualAction.Handler { get }
  var title: String?
  @NSCopying var backgroundColor: UIColor!
  @NSCopying var image: UIImage?
}
