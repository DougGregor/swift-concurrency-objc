
@available(iOS 9.0, *)
class UIFocusGuide : UILayoutGuide {
  var isEnabled: Bool
  @available(iOS 10.0, *)
  var preferredFocusEnvironments: [UIFocusEnvironment]!
  @available(iOS, introduced: 9.0, deprecated: 10.0)
  weak var preferredFocusedView: @sil_weak UIView?
}
