
class SFSafariExtensionManager : NSObject {
  class func getStateOfSafariExtension(withIdentifier identifier: String, completionHandler: @escaping (SFSafariExtensionState?, Error?) -> Void)
}
