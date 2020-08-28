
class SFSafariWindow : NSObject, NSCopying, NSSecureCoding {
  func getActiveTab(completionHandler: @escaping (SFSafariTab?) -> Void)
  func getActiveTab() async -> SFSafariTab?
  func getAllTabs(completionHandler: @escaping ([SFSafariTab]) -> Void)
  func getAllTabs() async -> [SFSafariTab]
  func openTab(with url: URL, makeActiveIfPossible activateTab: Bool, completionHandler: ((SFSafariTab?) -> Void)? = nil)
  func openTab(with url: URL, makeActiveIfPossible activateTab: Bool) async -> SFSafariTab?
  func getToolbarItem(completionHandler: @escaping (SFSafariToolbarItem?) -> Void)
  func getToolbarItem() async -> SFSafariToolbarItem?
  func close()
}
