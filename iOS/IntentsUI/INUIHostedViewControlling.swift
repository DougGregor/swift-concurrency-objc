
@available(iOS 10.0, *)
enum INUIHostedViewContext : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case siriSnippet
  case mapsCard
}
@available(iOS 11.0, *)
enum INUIInteractiveBehavior : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case none
  case nextView
  case launch
  case genericAction
}
@available(iOS 10.0, *)
protocol INUIHostedViewControlling : NSObjectProtocol {
  optional func configure(with interaction: INInteraction, context: INUIHostedViewContext, completion: @escaping (CGSize) -> Void)
  @available(iOS 11.0, *)
  optional func configureView(for parameters: Set<INParameter>, of interaction: INInteraction, interactiveBehavior: INUIInteractiveBehavior, context: INUIHostedViewContext, completion: @escaping (Bool, Set<INParameter>, CGSize) -> Void)
}
extension NSExtensionContext {
  @available(iOS 10.0, *)
  var hostedViewMinimumAllowedSize: CGSize { get }
  @available(iOS 10.0, *)
  var hostedViewMaximumAllowedSize: CGSize { get }
  @available(iOS 11.0, *)
  func interfaceParametersDescription() -> String
}
