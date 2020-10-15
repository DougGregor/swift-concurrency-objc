
@available(watchOS 3.0, *)
struct UNNotificationCategoryOptions : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var customDismissAction: UNNotificationCategoryOptions { get }
  static var allowInCarPlay: UNNotificationCategoryOptions { get }
  @available(watchOS 6.0, *)
  static var allowAnnouncement: UNNotificationCategoryOptions { get }
}
@available(watchOS 3.0, *)
class UNNotificationCategory : NSObject, NSCopying, NSSecureCoding {
  var identifier: String { get }
  var actions: [UNNotificationAction] { get }
  var intentIdentifiers: [String] { get }
  var options: UNNotificationCategoryOptions { get }
  convenience init(identifier: String, actions: [UNNotificationAction], intentIdentifiers: [String], options: UNNotificationCategoryOptions = [])
}
