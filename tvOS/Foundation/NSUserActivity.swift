
typealias NSUserActivityPersistentIdentifier = String
@available(tvOS 9.0, *)
class NSUserActivity : NSObject {
  init(activityType: String)
  var activityType: String { get }
  var title: String?
  var userInfo: [AnyHashable : Any]?
  func addUserInfoEntries(from otherDictionary: [AnyHashable : Any])
  @available(tvOS 10.0, *)
  var requiredUserInfoKeys: Set<String>?
  var needsSave: Bool
  var webpageURL: URL?
  @available(tvOS 11.0, *)
  var referrerURL: URL?
  @available(tvOS 10.0, *)
  var expirationDate: Date?
  @available(tvOS 10.0, *)
  var keywords: Set<String>
  var supportsContinuationStreams: Bool
  weak var delegate: @sil_weak NSUserActivityDelegate?
  @available(tvOS 13.0, *)
  var targetContentIdentifier: String?
  func becomeCurrent()
  @available(tvOS 10.0, *)
  func resignCurrent()
  func invalidate()
  func getContinuationStreams(completionHandler: @escaping (InputStream?, OutputStream?, Error?) -> Void)
  func getContinuationStreams() async throws -> (InputStream?, OutputStream?)
  @available(tvOS 10.0, *)
  var isEligibleForHandoff: Bool
  @available(tvOS 10.0, *)
  var isEligibleForSearch: Bool
  @available(tvOS 10.0, *)
  var isEligibleForPublicIndexing: Bool
}
let NSUserActivityTypeBrowsingWeb: String
@available(tvOS 9.0, *)
protocol NSUserActivityDelegate : NSObjectProtocol {
  optional func userActivityWillSave(_ userActivity: NSUserActivity)
  optional func userActivityWasContinued(_ userActivity: NSUserActivity)
  optional func userActivity(_ userActivity: NSUserActivity, didReceive inputStream: InputStream, outputStream: OutputStream)
}
