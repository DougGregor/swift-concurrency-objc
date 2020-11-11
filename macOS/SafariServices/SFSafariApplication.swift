
let SFExtensionMessageKey: String
class SFSafariApplication : NSObject {
  class func getActiveWindow(completionHandler: @escaping (SFSafariWindow?) -> Void)
  class func activeWindow() async -> SFSafariWindow?
  class func getAllWindows(completionHandler: @escaping ([SFSafariWindow]) -> Void)
  class func allWindows() async -> [SFSafariWindow]
  class func openWindow(with url: URL, completionHandler: ((SFSafariWindow?) -> Void)? = nil)
  class func openWindowAsync(with url: URL) async -> SFSafariWindow?
  class func setToolbarItemsNeedUpdate()
  class func getHostApplication(completionHandler: @escaping (NSRunningApplication) -> Void)
  class func hostApplication() async -> NSRunningApplication
  class func showPreferencesForExtension(withIdentifier identifier: String, completionHandler: ((Error?) -> Void)? = nil)
  class func showPreferencesForExtensionAsync(withIdentifier identifier: String) async throws
  class func dispatchMessage(withName messageName: String, toExtensionWithIdentifier identifier: String, userInfo: [String : Any]? = nil, completionHandler: ((Error?) -> Void)? = nil)
  class func dispatchMessageAsync(withName messageName: String, toExtensionWithIdentifier identifier: String, userInfo: [String : Any]? = nil) async throws
}
