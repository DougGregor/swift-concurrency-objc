
typealias NSUserActivityPersistentIdentifier = String
@available(watchOS 2.0, *)
class NSUserActivity : NSObject {
  init(activityType: String)
  var activityType: String { get }
  var title: String?
  var userInfo: [AnyHashable : Any]?
  func addUserInfoEntries(from otherDictionary: [AnyHashable : Any])
  @available(watchOS 3.0, *)
  var requiredUserInfoKeys: Set<String>?
  var needsSave: Bool
  var webpageURL: URL?
  @available(watchOS 4.0, *)
  var referrerURL: URL?
  @available(watchOS 3.0, *)
  var expirationDate: Date?
  @available(watchOS 3.0, *)
  var keywords: Set<String>
  var supportsContinuationStreams: Bool
  weak var delegate: @sil_weak NSUserActivityDelegate?
  @available(watchOS 6.0, *)
  var targetContentIdentifier: String?
  func becomeCurrent()
  @available(watchOS 3.0, *)
  func resignCurrent()
  func invalidate()
  func getContinuationStreams(completionHandler: @escaping (InputStream?, OutputStream?, Error?) -> Void)
  func getContinuationStreams() async throws -> (InputStream?, OutputStream?)
  @available(watchOS 3.0, *)
  var isEligibleForHandoff: Bool
  @available(watchOS 3.0, *)
  var isEligibleForSearch: Bool
  @available(watchOS 3.0, *)
  var isEligibleForPublicIndexing: Bool
  @available(watchOS 5.0, *)
  var isEligibleForPrediction: Bool
  @available(watchOS 5.0, *)
  var persistentIdentifier: NSUserActivityPersistentIdentifier?
  @available(watchOS 5.0, *)
  class func deleteSavedUserActivities(withPersistentIdentifiers persistentIdentifiers: [NSUserActivityPersistentIdentifier], completionHandler handler: @escaping () -> Void)
  @available(watchOS 5.0, *)
  class func deleteSavedUserActivities(withPersistentIdentifiers persistentIdentifiers: [NSUserActivityPersistentIdentifier]) async
  @available(watchOS 5.0, *)
  class func deleteAllSavedUserActivities(completionHandler handler: @escaping () -> Void)
  @available(watchOS 5.0, *)
  class func deleteAllSavedUserActivities() async
}
let NSUserActivityTypeBrowsingWeb: String
@available(watchOS 3.0, *)
protocol NSUserActivityDelegate : NSObjectProtocol {
  optional func userActivityWillSave(_ userActivity: NSUserActivity)
  optional func userActivityWasContinued(_ userActivity: NSUserActivity)
  optional func userActivity(_ userActivity: NSUserActivity, didReceive inputStream: InputStream, outputStream: OutputStream)
}
