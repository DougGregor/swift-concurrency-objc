
@available(macOS 10.11, *)
class AUViewController : NSViewController, NSExtensionRequestHandling {
}
@available(macOS 10.13, *)
class AUAudioUnitViewConfiguration : NSObject, NSSecureCoding {
  init(width: CGFloat, height: CGFloat, hostHasController: Bool)
  var width: CGFloat { get }
  var height: CGFloat { get }
  var hostHasController: Bool { get }
}
@available(macOS 10.12, *)
extension AUAudioUnit {
  func requestViewController(completionHandler: @escaping (NSViewController?) -> Void)
  func requestViewController() async -> NSViewController?
  @available(macOS 10.13, *)
  func supportedViewConfigurations(_ availableViewConfigurations: [AUAudioUnitViewConfiguration]) -> IndexSet
  @available(macOS 10.13, *)
  func select(_ viewConfiguration: AUAudioUnitViewConfiguration)
}
