
@available(iOS 14.0, *)
protocol SKOverlayDelegate : NSObjectProtocol {
  optional func storeOverlayDidFailToLoad(_ overlay: SKOverlay, error: Error)
  optional func storeOverlayWillStartPresentation(_ overlay: SKOverlay, transitionContext: SKOverlay.TransitionContext)
  optional func storeOverlayDidFinishPresentation(_ overlay: SKOverlay, transitionContext: SKOverlay.TransitionContext)
  optional func storeOverlayWillStartDismissal(_ overlay: SKOverlay, transitionContext: SKOverlay.TransitionContext)
  optional func storeOverlayDidFinishDismissal(_ overlay: SKOverlay, transitionContext: SKOverlay.TransitionContext)
}
@available(iOS 14.0, *)
class SKOverlay : NSObject {
  init(configuration: SKOverlay.Configuration)
  @available(iOS 14.0, *)
  func present(in scene: UIWindowScene)
  @available(iOS 14.0, *)
  class func dismiss(in scene: UIWindowScene)
  weak var delegate: @sil_weak SKOverlayDelegate?
  @NSCopying var configuration: SKOverlay.Configuration { get }
}
