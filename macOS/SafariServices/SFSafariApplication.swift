
let SFExtensionMessageKey: String
class SFSafariApplication : NSObject {
  class func getActiveWindow(completionHandler: @escaping (SFSafariWindow?) -> Void)
  class func getAllWindows(completionHandler: @escaping ([SFSafariWindow]) -> Void)
  class func openWindow(with url: URL, completionHandler: ((SFSafariWindow?) -> Void)? = nil)
  class func setToolbarItemsNeedUpdate()
  class func getHostApplication(completionHandler: @escaping (NSRunningApplication) -> Void)
  class func showPreferencesForExtension(withIdentifier identifier: String, completionHandler: ((Error?) -> Void)? = nil)
  class func dispatchMessage(withName messageName: String, toExtensionWithIdentifier identifier: String, userInfo: [String : Any]? = nil, completionHandler: ((Error?) -> Void)? = nil)
}
