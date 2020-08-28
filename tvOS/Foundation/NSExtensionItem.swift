
@available(tvOS 9.0, *)
class NSExtensionItem : NSObject, NSCopying, NSSecureCoding {
  @NSCopying var attributedTitle: NSAttributedString?
  @NSCopying var attributedContentText: NSAttributedString?
  var attachments: [NSItemProvider]?
  var userInfo: [AnyHashable : Any]?
}
@available(tvOS 9.0, *)
let NSExtensionItemAttributedTitleKey: String
@available(tvOS 9.0, *)
let NSExtensionItemAttributedContentTextKey: String
@available(tvOS 9.0, *)
let NSExtensionItemAttachmentsKey: String
