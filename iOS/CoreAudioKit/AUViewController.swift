
@available(iOS 9.0, *)
class AUViewController : UIViewController, NSExtensionRequestHandling {
}
@available(iOS 11.0, *)
class AUAudioUnitViewConfiguration : NSObject, NSSecureCoding {
  init(width: CGFloat, height: CGFloat, hostHasController: Bool)
  var width: CGFloat { get }
  var height: CGFloat { get }
  var hostHasController: Bool { get }
}
@available(iOS 9.0, *)
extension AUAudioUnit {
  func requestViewController(completionHandler: @escaping (UIViewController?) -> Void)
  @available(iOS 11.0, *)
  func supportedViewConfigurations(_ availableViewConfigurations: [AUAudioUnitViewConfiguration]) -> IndexSet
  @available(iOS 11.0, *)
  func select(_ viewConfiguration: AUAudioUnitViewConfiguration)
}
