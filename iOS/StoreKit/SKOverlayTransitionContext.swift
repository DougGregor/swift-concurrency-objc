
extension SKOverlay {
  @available(iOS 14.0, *)
  class TransitionContext : NSObject {
    func addAnimation(_ block: @escaping () -> Void)
    var startFrame: CGRect { get }
    var endFrame: CGRect { get }
  }
}
