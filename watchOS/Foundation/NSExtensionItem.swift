
@available(watchOS 2.0, *)
class NSExtensionItem : NSObject, NSCopying, NSSecureCoding {
  @NSCopying var attributedTitle: NSAttributedString?
  @NSCopying var attributedContentText: NSAttributedString?
  var attachments: [NSItemProvider]?
  var userInfo: [AnyHashable : Any]?
}
@available(watchOS 2.0, *)
let NSExtensionItemAttributedTitleKey: String
@available(watchOS 2.0, *)
let NSExtensionItemAttributedContentTextKey: String
@available(watchOS 2.0, *)
let NSExtensionItemAttachmentsKey: String
