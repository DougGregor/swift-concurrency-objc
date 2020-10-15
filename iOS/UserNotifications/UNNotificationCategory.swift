
@available(iOS 10.0, *)
struct UNNotificationCategoryOptions : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var customDismissAction: UNNotificationCategoryOptions { get }
  static var allowInCarPlay: UNNotificationCategoryOptions { get }
  @available(iOS 11.0, *)
  static var hiddenPreviewsShowTitle: UNNotificationCategoryOptions { get }
  @available(iOS 11.0, *)
  static var hiddenPreviewsShowSubtitle: UNNotificationCategoryOptions { get }
  @available(iOS 13.0, *)
  static var allowAnnouncement: UNNotificationCategoryOptions { get }
}
@available(iOS 10.0, *)
class UNNotificationCategory : NSObject, NSCopying, NSSecureCoding {
  var identifier: String { get }
  var actions: [UNNotificationAction] { get }
  var intentIdentifiers: [String] { get }
  var options: UNNotificationCategoryOptions { get }
  @available(iOS 11.0, *)
  var hiddenPreviewsBodyPlaceholder: String { get }
  @available(iOS 12.0, *)
  var categorySummaryFormat: String { get }
  convenience init(identifier: String, actions: [UNNotificationAction], intentIdentifiers: [String], options: UNNotificationCategoryOptions = [])
  @available(iOS 11.0, *)
  convenience init(identifier: String, actions: [UNNotificationAction], intentIdentifiers: [String], hiddenPreviewsBodyPlaceholder: String, options: UNNotificationCategoryOptions = [])
  @available(iOS 12.0, *)
  convenience init(identifier: String, actions: [UNNotificationAction], intentIdentifiers: [String], hiddenPreviewsBodyPlaceholder: String?, categorySummaryFormat: String?, options: UNNotificationCategoryOptions = [])
}
