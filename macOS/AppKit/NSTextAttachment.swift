
extension NSTextAttachment {
  @available(macOS 10.0, *)
  class var character: Int { get }
}
protocol NSTextAttachmentContainer : NSObjectProtocol {
  @available(macOS 10.11, *)
  func image(forBounds imageBounds: NSRect, textContainer: NSTextContainer?, characterIndex charIndex: Int) -> NSImage?
  @available(macOS 10.11, *)
  func attachmentBounds(for textContainer: NSTextContainer?, proposedLineFragment lineFrag: NSRect, glyphPosition position: CGPoint, characterIndex charIndex: Int) -> NSRect
}
@available(macOS 10.0, *)
class NSTextAttachment : NSObject, NSTextAttachmentContainer, NSSecureCoding {
  @available(macOS 10.11, *)
  init(data contentData: Data?, ofType uti: String?)
  convenience init(fileWrapper: FileWrapper?)
  @available(macOS 10.11, *)
  var contents: Data?
  @available(macOS 10.11, *)
  var fileType: String?
  @available(macOS 10.11, *)
  var image: NSImage?
  @available(macOS 10.11, *)
  var bounds: NSRect
  var fileWrapper: FileWrapper?
  @available(macOS 10.0, *)
  var attachmentCell: NSTextAttachmentCellProtocol?
}
extension NSAttributedString {
  @available(macOS 10.0, *)
  /*not inherited*/ init(attachment: NSTextAttachment)
}
extension NSMutableAttributedString {
  func updateAttachments(fromPath path: String)
}
protocol NSTextAttachmentCellProtocol : NSObjectProtocol {
  func draw(withFrame cellFrame: NSRect, in controlView: NSView?)
  func wantsToTrackMouse() -> Bool
  func highlight(_ flag: Bool, withFrame cellFrame: NSRect, in controlView: NSView?)
  func trackMouse(with theEvent: NSEvent, in cellFrame: NSRect, of controlView: NSView?, untilMouseUp flag: Bool) -> Bool
  func cellSize() -> NSSize
  func cellBaselineOffset() -> NSPoint
  @available(macOS 10.0, *)
  unowned(unsafe) var attachment: @sil_unmanaged NSTextAttachment? { get set }
  func draw(withFrame cellFrame: NSRect, in controlView: NSView?, characterIndex charIndex: Int)
  @available(macOS 10.7, *)
  func draw(withFrame cellFrame: NSRect, in controlView: NSView?, characterIndex charIndex: Int, layoutManager: NSLayoutManager)
  func wantsToTrackMouse(for theEvent: NSEvent, in cellFrame: NSRect, of controlView: NSView?, atCharacterIndex charIndex: Int) -> Bool
  func trackMouse(with theEvent: NSEvent, in cellFrame: NSRect, of controlView: NSView?, atCharacterIndex charIndex: Int, untilMouseUp flag: Bool) -> Bool
  @available(macOS 10.0, *)
  func cellFrame(for textContainer: NSTextContainer, proposedLineFragment lineFrag: NSRect, glyphPosition position: NSPoint, characterIndex charIndex: Int) -> NSRect
}
class NSTextAttachmentCell : NSCell, NSTextAttachmentCellProtocol {
}
