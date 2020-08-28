
@available(tvOS 3.0, *)
class UIMenuController : NSObject {
  class var shared: UIMenuController { get }
  var isMenuVisible: Bool
  @available(tvOS, introduced: 3.0, deprecated: 13.0, message: "Use showMenuFromView:rect: or hideMenuFromView: instead.")
  func setMenuVisible(_ menuVisible: Bool, animated: Bool)
  @available(tvOS, introduced: 3.0, deprecated: 13.0, message: "Use showMenuFromView:rect: instead.")
  func setTargetRect(_ targetRect: CGRect, in targetView: UIView)
  @available(tvOS 13.0, *)
  func showMenu(from targetView: UIView, rect targetRect: CGRect)
  @available(tvOS 13.0, *)
  func hideMenu(from targetView: UIView)
  @available(tvOS 13.0, *)
  func hideMenu()
  @available(tvOS 3.2, *)
  var arrowDirection: UIMenuController.ArrowDirection
  @available(tvOS 3.2, *)
  var menuItems: [UIMenuItem]?
  func update()
  var menuFrame: CGRect { get }
}
extension UIMenuController {
  class let willShowMenuNotification: NSNotification.Name
  class let didShowMenuNotification: NSNotification.Name
  class let willHideMenuNotification: NSNotification.Name
  class let didHideMenuNotification: NSNotification.Name
  class let menuFrameDidChangeNotification: NSNotification.Name
  enum ArrowDirection : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case `default`
    @available(tvOS 3.2, *)
    case up
    @available(tvOS 3.2, *)
    case down
    @available(tvOS 3.2, *)
    case left
    @available(tvOS 3.2, *)
    case right
  }
}
@available(tvOS 3.2, *)
class UIMenuItem : NSObject {
  init(title: String, action: Selector)
  var title: String
  var action: Selector
}
