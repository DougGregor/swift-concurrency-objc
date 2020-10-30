
class SFSafariExtensionManager : NSObject {
  class func getStateOfSafariExtension(withIdentifier identifier: String, completionHandler: @escaping (SFSafariExtensionState?, Error?) -> Void)
  class func stateOfSafariExtension(withIdentifier identifier: String) async throws -> SFSafariExtensionState
}
