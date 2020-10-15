
extension UIWindow {
  struct Level : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
    init(_ rawValue: CGFloat)
    init(rawValue: CGFloat)
    let rawValue: CGFloat
  }
  class let didBecomeVisibleNotification: NSNotification.Name
  class let didBecomeHiddenNotification: NSNotification.Name
  class let didBecomeKeyNotification: NSNotification.Name
  class let didResignKeyNotification: NSNotification.Name
}
@available(tvOS 2.0, *)
class UIWindow : UIView {
  @available(tvOS 13.0, *)
  init(windowScene: UIWindowScene)
  @available(tvOS 13.0, *)
  weak var windowScene: @sil_weak UIWindowScene?
  var canResizeToFitContent: Bool
  @available(tvOS 3.2, *)
  var screen: UIScreen
  var windowLevel: UIWindow.Level
  var isKeyWindow: Bool { get }
  func becomeKey()
  func resignKey()
  func makeKey()
  func makeKeyAndVisible()
  @available(tvOS 4.0, *)
  var rootViewController: UIViewController?
  func sendEvent(_ event: UIEvent)
  func convert(_ point: CGPoint, to window: UIWindow?) -> CGPoint
  func convert(_ point: CGPoint, from window: UIWindow?) -> CGPoint
  func convert(_ rect: CGRect, to window: UIWindow?) -> CGRect
  func convert(_ rect: CGRect, from window: UIWindow?) -> CGRect
}
extension UIWindow.Level {
  static let normal: UIWindow.Level
  static let alert: UIWindow.Level
}
extension UIResponder {
}
