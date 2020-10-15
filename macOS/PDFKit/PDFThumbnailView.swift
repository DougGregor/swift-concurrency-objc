
extension NSNotification.Name {
  @available(macOS 10.4, *)
  static let PDFThumbnailViewDocumentEdited: NSNotification.Name
}
@available(macOS 10.5, *)
class PDFThumbnailView : NSView, NSCoding {
  weak var pdfView: @sil_weak PDFView?
  @NSCopying var backgroundColor: NSColor?
  var selectedPages: [PDFPage]? { get }
  var thumbnailSize: NSSize
  var maximumNumberOfColumns: Int
  @NSCopying var labelFont: NSFont?
  var allowsDragging: Bool
  var allowsMultipleSelection: Bool
}
