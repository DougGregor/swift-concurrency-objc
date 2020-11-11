
@available(tvOS 10.0, *)
struct UNAuthorizationOptions : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var badge: UNAuthorizationOptions { get }
  static var sound: UNAuthorizationOptions { get }
  static var alert: UNAuthorizationOptions { get }
  static var carPlay: UNAuthorizationOptions { get }
  @available(tvOS 12.0, *)
  static var criticalAlert: UNAuthorizationOptions { get }
  @available(tvOS 12.0, *)
  static var providesAppNotificationSettings: UNAuthorizationOptions { get }
  @available(tvOS 12.0, *)
  static var provisional: UNAuthorizationOptions { get }
}
@available(tvOS 10.0, *)
class UNUserNotificationCenter : NSObject {
  weak var delegate: @sil_weak UNUserNotificationCenterDelegate?
  var supportsContentExtensions: Bool { get }
  class func current() -> UNUserNotificationCenter
  func requestAuthorization(options: UNAuthorizationOptions = [], completionHandler: @escaping (Bool, Error?) -> Void)
  func requestAuthorization(options: UNAuthorizationOptions = []) async throws -> Bool
  func getNotificationSettings(completionHandler: @escaping (UNNotificationSettings) -> Void)
  func notificationSettings() async -> UNNotificationSettings
  func add(_ request: UNNotificationRequest, withCompletionHandler completionHandler: ((Error?) -> Void)? = nil)
  func addNotificationRequestAsync(_ request: UNNotificationRequest) async throws
  func getPendingNotificationRequests(completionHandler: @escaping ([UNNotificationRequest]) -> Void)
  func pendingNotificationRequests() async -> [UNNotificationRequest]
  func removePendingNotificationRequests(withIdentifiers identifiers: [String])
  func removeAllPendingNotificationRequests()
}
@available(tvOS 10.0, *)
struct UNNotificationPresentationOptions : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var badge: UNNotificationPresentationOptions { get }
  static var sound: UNNotificationPresentationOptions { get }
  @available(tvOS, introduced: 10.0, deprecated: 14.0, message: "Use UNNotificationPresentationOptionList | UNNotificationPresentationOptionBanner")
  static var alert: UNNotificationPresentationOptions { get }
  @available(tvOS 14.0, *)
  static var list: UNNotificationPresentationOptions { get }
  @available(tvOS 14.0, *)
  static var banner: UNNotificationPresentationOptions { get }
}
@available(tvOS 10.0, *)
protocol UNUserNotificationCenterDelegate : NSObjectProtocol {
  @available(tvOS 10.0, *)
  optional func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void)
  @available(tvOS 10.0, *)
  optional func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification) async -> UNNotificationPresentationOptions
}
