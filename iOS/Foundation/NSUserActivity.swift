
typealias NSUserActivityPersistentIdentifier = String
@available(iOS 8.0, *)
class NSUserActivity : NSObject {
  init(activityType: String)
  var activityType: String { get }
  var title: String?
  var userInfo: [AnyHashable : Any]?
  func addUserInfoEntries(from otherDictionary: [AnyHashable : Any])
  @available(iOS 9.0, *)
  var requiredUserInfoKeys: Set<String>?
  var needsSave: Bool
  var webpageURL: URL?
  @available(iOS 11.0, *)
  var referrerURL: URL?
  @available(iOS 9.0, *)
  var expirationDate: Date?
  @available(iOS 9.0, *)
  var keywords: Set<String>
  var supportsContinuationStreams: Bool
  weak var delegate: @sil_weak NSUserActivityDelegate?
  @available(iOS 13.0, *)
  var targetContentIdentifier: String?
  func becomeCurrent()
  @available(iOS 9.0, *)
  func resignCurrent()
  func invalidate()
  func getContinuationStreams(completionHandler: @escaping (InputStream?, OutputStream?, Error?) -> Void)
  func continuationStreams() async throws -> (InputStream, OutputStream)
  @available(iOS 9.0, *)
  var isEligibleForHandoff: Bool
  @available(iOS 9.0, *)
  var isEligibleForSearch: Bool
  @available(iOS 9.0, *)
  var isEligibleForPublicIndexing: Bool
  @available(iOS 12.0, *)
  var isEligibleForPrediction: Bool
  @available(iOS 12.0, *)
  var persistentIdentifier: NSUserActivityPersistentIdentifier?
  @available(iOS 12.0, *)
  class func deleteSavedUserActivities(withPersistentIdentifiers persistentIdentifiers: [NSUserActivityPersistentIdentifier], completionHandler handler: @escaping () -> Void)
  @available(iOS 12.0, *)
  class func deleteSavedUserActivities(withPersistentIdentifiers persistentIdentifiers: [NSUserActivityPersistentIdentifier]) async
  @available(iOS 12.0, *)
  class func deleteAllSavedUserActivities(completionHandler handler: @escaping () -> Void)
  @available(iOS 12.0, *)
  class func deleteAllSavedUserActivities() async
}
let NSUserActivityTypeBrowsingWeb: String
@available(iOS 8.0, *)
protocol NSUserActivityDelegate : NSObjectProtocol {
  optional func userActivityWillSave(_ userActivity: NSUserActivity)
  optional func userActivityWasContinued(_ userActivity: NSUserActivity)
  optional func userActivity(_ userActivity: NSUserActivity, didReceive inputStream: InputStream, outputStream: OutputStream)
}
