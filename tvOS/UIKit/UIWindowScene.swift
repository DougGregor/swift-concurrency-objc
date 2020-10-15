
@available(tvOS 13.0, *)
class UIWindowScene : UIScene {
  var screen: UIScreen { get }
  var coordinateSpace: UICoordinateSpace { get }
  var traitCollection: UITraitCollection { get }
  @available(tvOS 13.0, *)
  var sizeRestrictions: UISceneSizeRestrictions? { get }
  var windows: [UIWindow] { get }
}
@available(tvOS 13.0, *)
protocol UIWindowSceneDelegate : UISceneDelegate {
  optional var window: UIWindow? { get set }
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
