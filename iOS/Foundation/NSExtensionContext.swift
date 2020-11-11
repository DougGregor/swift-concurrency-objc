
@available(iOS 8.0, *)
class NSExtensionContext : NSObject {
  var inputItems: [Any] { get }
  func completeRequest(returningItems items: [Any]?, completionHandler: ((Bool) -> Void)? = nil)
  func completeRequest(returningItems items: [Any]?) async -> Bool
  func cancelRequest(withError error: Error)
  func open(_ URL: URL, completionHandler: ((Bool) -> Void)? = nil)
  func openURLAsync(_ URL: URL) async -> Bool
}
@available(iOS 8.0, *)
let NSExtensionItemsAndErrorsKey: String
extension NSNotification.Name {
  @available(iOS 8.2, *)
  static let NSExtensionHostWillEnterForeground: NSNotification.Name
  @available(iOS 8.2, *)
  static let NSExtensionHostDidEnterBackground: NSNotification.Name
  @available(iOS 8.2, *)
  static let NSExtensionHostWillResignActive: NSNotification.Name
  @available(iOS 8.2, *)
  static let NSExtensionHostDidBecomeActive: NSNotification.Name
}
