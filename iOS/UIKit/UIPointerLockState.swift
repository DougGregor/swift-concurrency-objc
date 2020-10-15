
@available(iOS 14.0, *)
class UIPointerLockState : NSObject {
  var isLocked: Bool { get }
}
extension UIScene {
  @available(iOS 14.0, *)
  var pointerLockState: UIPointerLockState? { get }
}
extension UIPointerLockState {
  @available(iOS 14.0, *)
  class let didChangeNotification: NSNotification.Name
  @available(iOS 14.0, *)
  class let sceneUserInfoKey: String
}
