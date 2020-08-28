
@available(macOS 10.10, *)
class NSTitlebarAccessoryViewController : NSViewController, NSAnimationDelegate, NSAnimatablePropertyContainer {
  var layoutAttribute: NSLayoutConstraint.Attribute
  var fullScreenMinHeight: CGFloat
  @available(macOS 10.12, *)
  var isHidden: Bool
  @available(macOS 11.0, *)
  var automaticallyAdjustsSize: Bool
}
