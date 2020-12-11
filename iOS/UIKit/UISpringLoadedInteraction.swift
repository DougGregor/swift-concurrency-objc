
@available(iOS 11.0, *)
enum UISpringLoadedInteractionEffectState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case inactive
  case possible
  case activating
  case activated
}
@available(iOS 11.0, *)
class UISpringLoadedInteraction : NSObject, UIInteraction {
  init(interactionBehavior: UISpringLoadedInteractionBehavior?, interactionEffect: UISpringLoadedInteractionEffect?, activationHandler handler: @escaping (UISpringLoadedInteraction, UISpringLoadedInteractionContext) -> Void)
  convenience init(activationHandler handler: @escaping (UISpringLoadedInteraction, UISpringLoadedInteractionContext) -> Void)
  var interactionBehavior: UISpringLoadedInteractionBehavior { get }
  var interactionEffect: UISpringLoadedInteractionEffect { get }
}
@available(iOS 11.0, *)
protocol UISpringLoadedInteractionBehavior : NSObjectProtocol {
  func shouldAllow(_ interaction: UISpringLoadedInteraction, with context: UISpringLoadedInteractionContext) -> Bool
  optional func interactionDidFinish(_ interaction: UISpringLoadedInteraction)
}
@available(iOS 11.0, *)
protocol UISpringLoadedInteractionEffect : NSObjectProtocol {
  func interaction(_ interaction: UISpringLoadedInteraction, didChangeWith context: UISpringLoadedInteractionContext)
}
@available(iOS 11.0, *)
protocol UISpringLoadedInteractionContext : NSObjectProtocol {
  var state: UISpringLoadedInteractionEffectState { get }
  var targetView: UIView? { get set }
  var targetItem: Any? { get set }
  func location(in view: UIView?) -> CGPoint
}
