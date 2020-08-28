
@available(macOS 10.4, *)
enum PDFDisplayBox : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case mediaBox
  case cropBox
  case bleedBox
  case trimBox
  case artBox
}
@available(macOS 10.4, *)
class PDFPage : NSObject, NSCopying {
  @available(macOS 10.5, *)
  init?(image: NSImage)
  weak var document: @sil_weak PDFDocument? { get }
  var pageRef: CGPDFPage? { get }
  var label: String? { get }
  func bounds(for box: PDFDisplayBox) -> NSRect
  func setBounds(_ bounds: NSRect, for box: PDFDisplayBox)
  var rotation: Int
  var annotations: [PDFAnnotation] { get }
  var displaysAnnotations: Bool
  func addAnnotation(_ annotation: PDFAnnotation)
  func removeAnnotation(_ annotation: PDFAnnotation)
  func annotation(at point: NSPoint) -> PDFAnnotation?
  @available(macOS 10.12, *)
  func transform(for box: PDFDisplayBox) -> CGAffineTransform
  @available(macOS 10.12, *)
  func draw(with box: PDFDisplayBox, to context: CGContext)
  @available(macOS 10.12, *)
  func transform(_ context: CGContext, for box: PDFDisplayBox)
  @available(macOS 10.13, *)
  func thumbnail(of size: NSSize, for box: PDFDisplayBox) -> NSImage
  var numberOfCharacters: Int { get }
  var string: String? { get }
  var attributedString: NSAttributedString? { get }
  func characterBounds(at index: Int) -> NSRect
  func characterIndex(at point: NSPoint) -> Int
  func selection(for rect: NSRect) -> PDFSelection?
  func selectionForWord(at point: NSPoint) -> PDFSelection?
  func selectionForLine(at point: NSPoint) -> PDFSelection?
  func selection(from startPoint: NSPoint, to endPoint: NSPoint) -> PDFSelection?
  func selection(for range: NSRange) -> PDFSelection?
  var dataRepresentation: Data? { get }
}
extension PDFPage {
  @available(macOS, introduced: 10.4, deprecated: 10.12)
  func draw(with box: PDFDisplayBox)
  @available(macOS, introduced: 10.5, deprecated: 10.12)
  func transformContext(for box: PDFDisplayBox)
}
