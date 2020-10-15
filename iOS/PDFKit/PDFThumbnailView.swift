
@available(iOS 11.0, *)
enum PDFThumbnailLayoutMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case vertical
  case horizontal
}
extension NSNotification.Name {
  @available(iOS 11.0, *)
  static let PDFThumbnailViewDocumentEdited: NSNotification.Name
}
@available(iOS 11.0, *)
class PDFThumbnailView : UIView, NSCoding {
  weak var pdfView: @sil_weak PDFView?
  var selectedPages: [PDFPage]? { get }
  var thumbnailSize: CGSize
  @available(iOS 11.0, *)
  var layoutMode: PDFThumbnailLayoutMode
  @available(iOS 11.0, *)
  var contentInset: UIEdgeInsets
}
