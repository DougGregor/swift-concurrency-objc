
@available(macOS 10.14, *)
struct UNNotificationCategoryOptions : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var customDismissAction: UNNotificationCategoryOptions { get }
  @available(macOS 10.14, *)
  static var hiddenPreviewsShowTitle: UNNotificationCategoryOptions { get }
  @available(macOS 10.14, *)
  static var hiddenPreviewsShowSubtitle: UNNotificationCategoryOptions { get }
}
@available(macOS 10.14, *)
class UNNotificationCategory : NSObject, NSCopying, NSSecureCoding {
  var identifier: String { get }
  var actions: [UNNotificationAction] { get }
  var intentIdentifiers: [String] { get }
  var options: UNNotificationCategoryOptions { get }
  var hiddenPreviewsBodyPlaceholder: String { get }
  var categorySummaryFormat: String { get }
  convenience init(identifier: String, actions: [UNNotificationAction], intentIdentifiers: [String], options: UNNotificationCategoryOptions = [])
  convenience init(identifier: String, actions: [UNNotificationAction], intentIdentifiers: [String], hiddenPreviewsBodyPlaceholder: String, options: UNNotificationCategoryOptions = [])
  convenience init(identifier: String, actions: [UNNotificationAction], intentIdentifiers: [String], hiddenPreviewsBodyPlaceholder: String?, categorySummaryFormat: String?, options: UNNotificationCategoryOptions = [])
}
