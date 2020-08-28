
@available(tvOS 9.0, *)
class UIFocusGuide : UILayoutGuide {
  var isEnabled: Bool
  @available(tvOS 10.0, *)
  var preferredFocusEnvironments: [UIFocusEnvironment]!
  @available(tvOS, introduced: 9.0, deprecated: 10.0)
  weak var preferredFocusedView: @sil_weak UIView?
}
