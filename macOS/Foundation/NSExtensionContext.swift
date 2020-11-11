
@available(macOS 10.10, *)
class NSExtensionContext : NSObject {
  var inputItems: [Any] { get }
  func completeRequest(returningItems items: [Any]?, completionHandler: ((Bool) -> Void)? = nil)
  func completeRequest(returningItems items: [Any]?) async -> Bool
  func cancelRequest(withError error: Error)
  func open(_ URL: URL, completionHandler: ((Bool) -> Void)? = nil)
  func openURLAsync(_ URL: URL) async -> Bool
}
@available(macOS 10.10, *)
let NSExtensionItemsAndErrorsKey: String
extension NSNotification.Name {
}
