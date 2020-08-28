
class SFSafariTab : NSObject, NSCopying, NSSecureCoding {
  func getActivePage(completionHandler: @escaping (SFSafariPage?) -> Void)
  func getActivePage() async -> SFSafariPage?
  func getPagesWithCompletionHandler(_ completionHandler: @escaping ([SFSafariPage]?) -> Void)
  func getPages() async -> [SFSafariPage]?
  func getContainingWindow(completionHandler: @escaping (SFSafariWindow?) -> Void)
  func getContainingWindow() async -> SFSafariWindow?
  func activate(completionHandler: (() -> Void)? = nil)
  func activate() async
  func navigate(to url: URL)
  func close()
}
