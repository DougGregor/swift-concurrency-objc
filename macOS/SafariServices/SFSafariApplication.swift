
let SFExtensionMessageKey: String
class SFSafariApplication : NSObject {
  class func getActiveWindow(completionHandler: @escaping (SFSafariWindow?) -> Void)
  class func getActiveWindow() async -> SFSafariWindow?
  class func getAllWindows(completionHandler: @escaping ([SFSafariWindow]) -> Void)
  class func getAllWindows() async -> [SFSafariWindow]
  class func openWindow(with url: URL, completionHandler: ((SFSafariWindow?) -> Void)? = nil)
  class func openWindow(with url: URL) async -> SFSafariWindow?
  class func setToolbarItemsNeedUpdate()
  class func getHostApplication(completionHandler: @escaping (NSRunningApplication) -> Void)
  class func getHostApplication() async -> NSRunningApplication
  class func showPreferencesForExtension(withIdentifier identifier: String, completionHandler: ((Error?) -> Void)? = nil)
  class func showPreferencesForExtension(withIdentifier identifier: String) async throws
  class func dispatchMessage(withName messageName: String, toExtensionWithIdentifier identifier: String, userInfo: [String : Any]? = nil, completionHandler: ((Error?) -> Void)? = nil)
  class func dispatchMessage(withName messageName: String, toExtensionWithIdentifier identifier: String, userInfo: [String : Any]? = nil) async throws
}
