
typealias UIContextMenuActionProvider = ([UIMenuElement]) -> UIMenu?
typealias UIContextMenuContentPreviewProvider = () -> UIViewController?
@available(iOS 13.0, *)
class UIContextMenuConfiguration : NSObject {
  var identifier: NSCopying { get }
  convenience init(identifier: NSCopying?, previewProvider: UIContextMenuContentPreviewProvider?, actionProvider: UIContextMenuActionProvider? = nil)
}
