
class SFSafariTab : NSObject, NSCopying, NSSecureCoding {
  func getActivePage(completionHandler: @escaping (SFSafariPage?) -> Void)
  func getPagesWithCompletionHandler(_ completionHandler: @escaping ([SFSafariPage]?) -> Void)
  func getContainingWindow(completionHandler: @escaping (SFSafariWindow?) -> Void)
  func activate(completionHandler: (() -> Void)? = nil)
  func navigate(to url: URL)
  func close()
}
