
@available(macOS 10.14, *)
class UNNotificationAttachment : NSObject, NSCopying, NSSecureCoding {
  var identifier: String { get }
  var url: URL { get }
  var type: String { get }
  convenience init(identifier: String, url URL: URL, options: [AnyHashable : Any]? = nil) throws
}
@available(macOS 10.14, *)
let UNNotificationAttachmentOptionsTypeHintKey: String
@available(macOS 10.14, *)
let UNNotificationAttachmentOptionsThumbnailHiddenKey: String
@available(macOS 10.14, *)
let UNNotificationAttachmentOptionsThumbnailClippingRectKey: String
@available(macOS 10.14, *)
let UNNotificationAttachmentOptionsThumbnailTimeKey: String
