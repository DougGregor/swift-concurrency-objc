
class SFSafariWindow : NSObject, NSCopying, NSSecureCoding {
  func getActiveTab(completionHandler: @escaping (SFSafariTab?) -> Void)
  func activeTab() async -> SFSafariTab?
  func getAllTabs(completionHandler: @escaping ([SFSafariTab]) -> Void)
  func allTabs() async -> [SFSafariTab]
  func openTab(with url: URL, makeActiveIfPossible activateTab: Bool, completionHandler: ((SFSafariTab?) -> Void)? = nil)
  func openTabAsync(with url: URL, makeActiveIfPossible activateTab: Bool) async -> SFSafariTab?
  func getToolbarItem(completionHandler: @escaping (SFSafariToolbarItem?) -> Void)
  func toolbarItem() async -> SFSafariToolbarItem?
  func close()
}
