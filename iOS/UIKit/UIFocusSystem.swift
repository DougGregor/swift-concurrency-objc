
@available(iOS 11.0, *)
class UIFocusSystem : NSObject {
  @available(iOS 12.0, *)
  weak var focusedItem: @sil_weak UIFocusItem? { get }
  @available(iOS 12.0, *)
  /*not inherited*/ init?(for environment: UIFocusEnvironment)
  @available(iOS 12.0, *)
  func requestFocusUpdate(to environment: UIFocusEnvironment)
  @available(iOS 12.0, *)
  func updateFocusIfNeeded()
}
