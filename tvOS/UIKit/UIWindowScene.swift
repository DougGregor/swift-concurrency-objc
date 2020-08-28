
@available(tvOS 13.0, *)
class UIWindowScene : UIScene {
  var screen: UIScreen { get }
  var interfaceOrientation: UIInterfaceOrientation { get }
  var coordinateSpace: UICoordinateSpace { get }
  var traitCollection: UITraitCollection { get }
  @available(tvOS 13.0, *)
  var sizeRestrictions: UISceneSizeRestrictions? { get }
  var windows: [UIWindow] { get }
}
@available(tvOS 13.0, *)
protocol UIWindowSceneDelegate : UISceneDelegate {
  optional var window: UIWindow? { get set }
  optional func windowScene(_ windowScene: UIWindowScene, didUpdate previousCoordinateSpace: UICoordinateSpace, interfaceOrientation previousInterfaceOrientation: UIInterfaceOrientation, traitCollection previousTraitCollection: UITraitCollection)
  optional func windowScene(_ windowScene: UIWindowScene, performActionFor shortcutItem: UIApplicationShortcutItem, completionHandler: @escaping (Bool) -> Void)
}
extension UISceneSession.Role {
  @available(tvOS 13.0, *)
  static let windowApplication: UISceneSession.Role
  @available(tvOS 13.0, *)
  static let windowExternalDisplay: UISceneSession.Role
}
extension UIWindowScene {
  @available(tvOS 13.0, *)
  enum DismissalAnimation : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case standard
    case commit
    case decline
  }
}
@available(tvOS 13.0, *)
class UIWindowSceneDestructionRequestOptions : UISceneDestructionRequestOptions {
  var windowDismissalAnimation: UIWindowScene.DismissalAnimation
}
@available(tvOS 13.0, *)
class UISceneSizeRestrictions : NSObject {
  var minimumSize: CGSize
  var maximumSize: CGSize
}
