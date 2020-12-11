
@available(watchOS 3.0, *)
struct UNAuthorizationOptions : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var badge: UNAuthorizationOptions { get }
  static var sound: UNAuthorizationOptions { get }
  static var alert: UNAuthorizationOptions { get }
  static var carPlay: UNAuthorizationOptions { get }
  @available(watchOS 5.0, *)
  static var criticalAlert: UNAuthorizationOptions { get }
  @available(watchOS 5.0, *)
  static var providesAppNotificationSettings: UNAuthorizationOptions { get }
  @available(watchOS 5.0, *)
  static var provisional: UNAuthorizationOptions { get }
  @available(watchOS 6.0, *)
  static var announcement: UNAuthorizationOptions { get }
}
@available(watchOS 3.0, *)
class UNUserNotificationCenter : NSObject {
  weak var delegate: @sil_weak UNUserNotificationCenterDelegate?
  var supportsContentExtensions: Bool { get }
  class func current() -> UNUserNotificationCenter
  func requestAuthorization(options: UNAuthorizationOptions = [], completionHandler: @escaping (Bool, Error?) -> Void)
  func requestAuthorization(options: UNAuthorizationOptions = []) async throws -> Bool
  func setNotificationCategories(_ categories: Set<UNNotificationCategory>)
  func getNotificationCategories(completionHandler: @escaping (Set<UNNotificationCategory>) -> Void)
  func notificationCategories() async -> Set<UNNotificationCategory>
  func getNotificationSettings(completionHandler: @escaping (UNNotificationSettings) -> Void)
  func notificationSettings() async -> UNNotificationSettings
  func add(_ request: UNNotificationRequest, withCompletionHandler completionHandler: ((Error?) -> Void)? = nil)
  func add(_ request: UNNotificationRequest) async throws
  func getPendingNotificationRequests(completionHandler: @escaping ([UNNotificationRequest]) -> Void)
  func pendingNotificationRequests() async -> [UNNotificationRequest]
  func removePendingNotificationRequests(withIdentifiers identifiers: [String])
  func removeAllPendingNotificationRequests()
  func getDeliveredNotifications(completionHandler: @escaping ([UNNotification]) -> Void)
  func deliveredNotifications() async -> [UNNotification]
  func removeDeliveredNotifications(withIdentifiers identifiers: [String])
  func removeAllDeliveredNotifications()
}
@available(watchOS 3.0, *)
struct UNNotificationPresentationOptions : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var badge: UNNotificationPresentationOptions { get }
  static var sound: UNNotificationPresentationOptions { get }
  @available(watchOS, introduced: 3.0, deprecated: 7.0, message: "Use UNNotificationPresentationOptionList | UNNotificationPresentationOptionBanner")
  static var alert: UNNotificationPresentationOptions { get }
  @available(watchOS 7.0, *)
  static var list: UNNotificationPresentationOptions { get }
  @available(watchOS 7.0, *)
  static var banner: UNNotificationPresentationOptions { get }
}
@available(watchOS 3.0, *)
protocol UNUserNotificationCenterDelegate : NSObjectProtocol {
  @available(watchOS 3.0, *)
  optional func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void)
  @available(watchOS 3.0, *)
  optional func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification) async -> UNNotificationPresentationOptions
  @available(watchOS 3.0, *)
  optional func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void)
  @available(watchOS 3.0, *)
  optional func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse) async
}
