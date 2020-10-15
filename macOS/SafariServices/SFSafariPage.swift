
class SFSafariPage : NSObject, NSCopying, NSSecureCoding {
  func dispatchMessageToScript(withName messageName: String, userInfo: [String : Any]? = nil)
  func reload()
  func getPropertiesWithCompletionHandler(_ completionHandler: @escaping (SFSafariPageProperties?) -> Void)
  func getProperties() async -> SFSafariPageProperties?
  func getContainingTab(completionHandler: @escaping (SFSafariTab) -> Void)
  func getContainingTab() async -> SFSafariTab
  func getScreenshotOfVisibleArea(completionHandler: @escaping (NSImage?) -> Void)
  func getScreenshotOfVisibleArea() async -> NSImage?
}
