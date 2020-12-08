
@available(tvOS 9.0, *)
class NSExtensionContext : NSObject {
  var inputItems: [Any] { get }
  func completeRequest(returningItems items: [Any]?, completionHandler: ((Bool) -> Void)? = nil)
  func completeRequest(returningItems items: [Any]?) async -> Bool
  func cancelRequest(withError error: Error)
  func open(_ URL: URL, completionHandler: ((Bool) -> Void)? = nil)
  func open(_ URL: URL) async -> Bool
}
@available(tvOS 9.0, *)
let NSExtensionItemsAndErrorsKey: String
extension NSNotification.Name {
  @available(tvOS 9.0, *)
  static let NSExtensionHostWillEnterForeground: NSNotification.Name
  @available(tvOS 9.0, *)
  static let NSExtensionHostDidEnterBackground: NSNotification.Name
  @available(tvOS 9.0, *)
  static let NSExtensionHostWillResignActive: NSNotification.Name
  @available(tvOS 9.0, *)
  static let NSExtensionHostDidBecomeActive: NSNotification.Name
}
