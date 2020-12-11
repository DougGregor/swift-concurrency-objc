
class SFSafariPage : NSObject, NSCopying, NSSecureCoding {
  func dispatchMessageToScript(withName messageName: String, userInfo: [String : Any]? = nil)
  func reload()
  func getPropertiesWithCompletionHandler(_ completionHandler: @escaping (SFSafariPageProperties?) -> Void)
  func properties() async -> SFSafariPageProperties?
  func getContainingTab(completionHandler: @escaping (SFSafariTab) -> Void)
  func containingTab() async -> SFSafariTab
  func getScreenshotOfVisibleArea(completionHandler: @escaping (NSImage?) -> Void)
  func screenshotOfVisibleArea() async -> NSImage?
}
