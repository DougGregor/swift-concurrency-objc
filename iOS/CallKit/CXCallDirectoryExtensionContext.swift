
@available(iOS 10.0, *)
protocol CXCallDirectoryExtensionContextDelegate : NSObjectProtocol {
  func requestFailed(for extensionContext: CXCallDirectoryExtensionContext, withError error: Error)
}
@available(iOS 10.0, *)
class CXCallDirectoryExtensionContext : NSExtensionContext {
  weak var delegate: @sil_weak CXCallDirectoryExtensionContextDelegate?
  @available(iOS 11.0, *)
  var isIncremental: Bool { get }
  func addBlockingEntry(withNextSequentialPhoneNumber phoneNumber: CXCallDirectoryPhoneNumber)
  @available(iOS 11.0, *)
  func removeBlockingEntry(withPhoneNumber phoneNumber: CXCallDirectoryPhoneNumber)
  @available(iOS 11.0, *)
  func removeAllBlockingEntries()
  func addIdentificationEntry(withNextSequentialPhoneNumber phoneNumber: CXCallDirectoryPhoneNumber, label: String)
  @available(iOS 11.0, *)
  func removeIdentificationEntry(withPhoneNumber phoneNumber: CXCallDirectoryPhoneNumber)
  @available(iOS 11.0, *)
  func removeAllIdentificationEntries()
  func completeRequest(completionHandler completion: ((Bool) -> Void)? = nil)
  func completeRequestAsync() async -> Bool
}
