
extension NSTextAttachment {
  @available(tvOS 7.0, *)
  class var character: Int { get }
}
protocol NSTextAttachmentContainer : NSObjectProtocol {
  @available(tvOS 7.0, *)
  func image(forBounds imageBounds: CGRect, textContainer: NSTextContainer?, characterIndex charIndex: Int) -> UIImage?
  @available(tvOS 7.0, *)
  func attachmentBounds(for textContainer: NSTextContainer?, proposedLineFragment lineFrag: CGRect, glyphPosition position: CGPoint, characterIndex charIndex: Int) -> CGRect
}
@available(tvOS 7.0, *)
class NSTextAttachment : NSObject, NSTextAttachmentContainer, NSSecureCoding {
  @available(tvOS 7.0, *)
  init(data contentData: Data?, ofType uti: String?)
  @available(tvOS 7.0, *)
  var contents: Data?
  @available(tvOS 7.0, *)
  var fileType: String?
  @available(tvOS 7.0, *)
  var image: UIImage?
  @available(tvOS 7.0, *)
  var bounds: CGRect
  var fileWrapper: FileWrapper?
}
extension NSAttributedString {
  @available(tvOS 7.0, *)
  /*not inherited*/ init(attachment: NSTextAttachment)
}
