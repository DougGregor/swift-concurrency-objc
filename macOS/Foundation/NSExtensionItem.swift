
@available(macOS 10.10, *)
class NSExtensionItem : NSObject, NSCopying, NSSecureCoding {
  @NSCopying var attributedTitle: NSAttributedString?
  @NSCopying var attributedContentText: NSAttributedString?
  var attachments: [NSItemProvider]?
  var userInfo: [AnyHashable : Any]?
}
@available(macOS 10.10, *)
let NSExtensionItemAttributedTitleKey: String
@available(macOS 10.10, *)
let NSExtensionItemAttributedContentTextKey: String
@available(macOS 10.10, *)
let NSExtensionItemAttachmentsKey: String
