
@available(watchOS 3.0, *)
struct UNNotificationCategoryOptions : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var customDismissAction: UNNotificationCategoryOptions { get }
  static var allowInCarPlay: UNNotificationCategoryOptions { get }
  @available(watchOS 4.0, *)
  static var hiddenPreviewsShowTitle: UNNotificationCategoryOptions { get }
  @available(watchOS 4.0, *)
  static var hiddenPreviewsShowSubtitle: UNNotificationCategoryOptions { get }
  @available(watchOS 6.0, *)
  static var allowAnnouncement: UNNotificationCategoryOptions { get }
}
@available(watchOS 3.0, *)
class UNNotificationCategory : NSObject, NSCopying, NSSecureCoding {
  var identifier: String { get }
  var actions: [UNNotificationAction] { get }
  var intentIdentifiers: [String] { get }
  var options: UNNotificationCategoryOptions { get }
  @available(watchOS 4.0, *)
  var hiddenPreviewsBodyPlaceholder: String { get }
  @available(watchOS 5.0, *)
  var categorySummaryFormat: String { get }
  convenience init(identifier: String, actions: [UNNotificationAction], intentIdentifiers: [String], options: UNNotificationCategoryOptions = [])
  @available(watchOS 4.0, *)
  convenience init(identifier: String, actions: [UNNotificationAction], intentIdentifiers: [String], hiddenPreviewsBodyPlaceholder: String, options: UNNotificationCategoryOptions = [])
  @available(watchOS 5.0, *)
  convenience init(identifier: String, actions: [UNNotificationAction], intentIdentifiers: [String], hiddenPreviewsBodyPlaceholder: String?, categorySummaryFormat: String?, options: UNNotificationCategoryOptions = [])
}
