
@available(iOS 11.0, *)
class UIAccessibilityLocationDescriptor : NSObject {
  convenience init(name: String, view: UIView)
  convenience init(name: String, point: CGPoint, in view: UIView)
  init(attributedName: NSAttributedString, point: CGPoint, in view: UIView)
  weak var view: @sil_weak UIView? { get }
  var point: CGPoint { get }
  var name: String { get }
  var attributedName: NSAttributedString { get }
}
