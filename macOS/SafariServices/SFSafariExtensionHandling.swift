
protocol SFSafariExtensionHandling : NSObjectProtocol {
  optional func messageReceived(withName messageName: String, from page: SFSafariPage, userInfo: [String : Any]? = nil)
  optional func messageReceivedFromContainingApp(withName messageName: String, userInfo: [String : Any]? = nil)
  optional func toolbarItemClicked(in window: SFSafariWindow)
  optional func validateToolbarItem(in window: SFSafariWindow, validationHandler: @escaping (Bool, String) -> Void)
  optional func contextMenuItemSelected(withCommand command: String, in page: SFSafariPage, userInfo: [String : Any]? = nil)
  optional func validateContextMenuItem(withCommand command: String, in page: SFSafariPage, userInfo: [String : Any]? = nil, validationHandler: @escaping (Bool, String?) -> Void)
  optional func popoverWillShow(in window: SFSafariWindow)
  @asyncHandler optional func popoverDidClose(in window: SFSafariWindow)
  optional func popoverViewController() -> SFSafariExtensionViewController
  optional func additionalRequestHeaders(for url: URL, completionHandler: @escaping ([String : String]?) -> Void)
  optional func additionalRequestHeaders(for url: URL) async -> [String : String]?
  optional func contentBlocker(withIdentifier contentBlockerIdentifier: String, blockedResourcesWith urls: [URL], on page: SFSafariPage)
  optional func page(_ page: SFSafariPage, willNavigateTo url: URL?)
}
