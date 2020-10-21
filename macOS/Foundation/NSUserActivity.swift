
typealias NSUserActivityPersistentIdentifier = String
@available(macOS 10.10, *)
class NSUserActivity : NSObject {
  init(activityType: String)
  var activityType: String { get }
  var title: String?
  var userInfo: [AnyHashable : Any]?
  func addUserInfoEntries(from otherDictionary: [AnyHashable : Any])
  @available(macOS 10.11, *)
  var requiredUserInfoKeys: Set<String>?
  var needsSave: Bool
  var webpageURL: URL?
  @available(macOS 10.13, *)
  var referrerURL: URL?
  @available(macOS 10.11, *)
  var expirationDate: Date?
  @available(macOS 10.11, *)
  var keywords: Set<String>
  var supportsContinuationStreams: Bool
  weak var delegate: @sil_weak NSUserActivityDelegate?
  @available(macOS 10.15, *)
  var targetContentIdentifier: String?
  func becomeCurrent()
  @available(macOS 10.11, *)
  func resignCurrent()
  func invalidate()
  func getContinuationStreams(completionHandler: @escaping (InputStream?, OutputStream?, Error?) -> Void)
  func continuationStreams() async throws -> (InputStream?, OutputStream?)
  @available(macOS 10.11, *)
  var isEligibleForHandoff: Bool
  @available(macOS 10.11, *)
  var isEligibleForSearch: Bool
  @available(macOS 10.11, *)
  var isEligibleForPublicIndexing: Bool
  @available(macOS 10.15, *)
  var persistentIdentifier: NSUserActivityPersistentIdentifier?
  @available(macOS 10.15, *)
  class func deleteSavedUserActivities(withPersistentIdentifiers persistentIdentifiers: [NSUserActivityPersistentIdentifier], completionHandler handler: @escaping () -> Void)
  @available(macOS 10.15, *)
  class func deleteSavedUserActivities(withPersistentIdentifiers persistentIdentifiers: [NSUserActivityPersistentIdentifier]) async
  @available(macOS 10.15, *)
  class func deleteAllSavedUserActivities(completionHandler handler: @escaping () -> Void)
  @available(macOS 10.15, *)
  class func deleteAllSavedUserActivities() async
}
let NSUserActivityTypeBrowsingWeb: String
@available(macOS 10.10, *)
protocol NSUserActivityDelegate : NSObjectProtocol {
  optional func userActivityWillSave(_ userActivity: NSUserActivity)
  optional func userActivityWasContinued(_ userActivity: NSUserActivity)
  @asyncHandler optional func userActivity(_ userActivity: NSUserActivity, didReceive inputStream: InputStream, outputStream: OutputStream)
}
