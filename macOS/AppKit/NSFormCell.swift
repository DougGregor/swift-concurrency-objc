
class NSFormCell : NSActionCell {
  func titleWidth(_ size: NSSize) -> CGFloat
  var titleWidth: CGFloat
  var titleFont: NSFont
  var placeholderString: String?
  @NSCopying var placeholderAttributedString: NSAttributedString?
  var titleAlignment: NSTextAlignment
  var titleBaseWritingDirection: NSWritingDirection
  @available(macOS 10.8, *)
  var preferredTextFieldWidth: CGFloat
}
extension NSFormCell {
}
extension NSFormCell {
  @NSCopying var attributedTitle: NSAttributedString
}
