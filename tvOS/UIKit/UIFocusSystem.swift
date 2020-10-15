
@available(tvOS 11.0, *)
class UIFocusSystem : NSObject {
  @available(tvOS 12.0, *)
  weak var focusedItem: @sil_weak UIFocusItem? { get }
  @available(tvOS 12.0, *)
  /*not inherited*/ init?(for environment: UIFocusEnvironment)
  @available(tvOS 12.0, *)
  func requestFocusUpdate(to environment: UIFocusEnvironment)
  @available(tvOS 12.0, *)
  func updateFocusIfNeeded()
  @available(tvOS 11.0, *)
  class func register(_ soundFileURL: URL, forSoundIdentifier identifier: UIFocusSoundIdentifier)
}
