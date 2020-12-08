
extension CXCallDirectoryManager {
  @available(iOS 10.0, *)
  enum EnabledStatus : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case unknown
    case disabled
    case enabled
  }
}
@available(iOS 10.0, *)
class CXCallDirectoryManager : NSObject {
  class var sharedInstance: CXCallDirectoryManager { get }
  func reloadExtension(withIdentifier identifier: String, completionHandler completion: ((Error?) -> Void)? = nil)
  func reloadExtension(withIdentifier identifier: String) async throws
  func getEnabledStatusForExtension(withIdentifier identifier: String, completionHandler completion: @escaping (CXCallDirectoryManager.EnabledStatus, Error?) -> Void)
  func enabledStatusForExtension(withIdentifier identifier: String) async throws -> CXCallDirectoryManager.EnabledStatus
  @available(iOS 13.4, *)
  func openSettings(completionHandler completion: ((Error?) -> Void)? = nil)
  @available(iOS 13.4, *)
  func openSettings() async throws
}
