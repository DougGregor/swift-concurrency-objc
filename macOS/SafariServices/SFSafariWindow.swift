
class SFSafariWindow : NSObject, NSCopying, NSSecureCoding {
  func getActiveTab(completionHandler: @escaping (SFSafariTab?) -> Void)
  func getAllTabs(completionHandler: @escaping ([SFSafariTab]) -> Void)
  func openTab(with url: URL, makeActiveIfPossible activateTab: Bool, completionHandler: ((SFSafariTab?) -> Void)? = nil)
  func getToolbarItem(completionHandler: @escaping (SFSafariToolbarItem?) -> Void)
  func close()
}
