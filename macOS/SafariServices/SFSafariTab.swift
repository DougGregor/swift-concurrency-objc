
class SFSafariTab : NSObject, NSCopying, NSSecureCoding {
  func getActivePage(completionHandler: @escaping (SFSafariPage?) -> Void)
  func activePage() async -> SFSafariPage?
  func getPagesWithCompletionHandler(_ completionHandler: @escaping ([SFSafariPage]?) -> Void)
  func pages() async -> [SFSafariPage]?
  func getContainingWindow(completionHandler: @escaping (SFSafariWindow?) -> Void)
  func containingWindow() async -> SFSafariWindow?
  func activate(completionHandler: (() -> Void)? = nil)
  func activate() async
  func navigate(to url: URL)
  func close()
}
