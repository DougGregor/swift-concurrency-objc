
@available(macOS 10.14, *)
struct UNNotificationActionOptions : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var authenticationRequired: UNNotificationActionOptions { get }
  static var destructive: UNNotificationActionOptions { get }
  static var foreground: UNNotificationActionOptions { get }
}
@available(macOS 10.14, *)
class UNNotificationAction : NSObject, NSCopying, NSSecureCoding {
  var identifier: String { get }
  var title: String { get }
  var options: UNNotificationActionOptions { get }
  convenience init(identifier: String, title: String, options: UNNotificationActionOptions = [])
}
@available(macOS 10.14, *)
class UNTextInputNotificationAction : UNNotificationAction {
  convenience init(identifier: String, title: String, options: UNNotificationActionOptions = [], textInputButtonTitle: String, textInputPlaceholder: String)
  var textInputButtonTitle: String { get }
  var textInputPlaceholder: String { get }
}
