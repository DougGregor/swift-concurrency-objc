
@available(macOS 10.4, *)
class PDFSelection : NSObject, NSCopying {
  @available(macOS 10.5, *)
  init(document: PDFDocument)
  var pages: [PDFPage] { get }
  @available(macOS 10.5, *)
  @NSCopying var color: NSColor?
  var string: String? { get }
  var attributedString: NSAttributedString? { get }
  func bounds(for page: PDFPage) -> NSRect
  @available(macOS 10.7, *)
  func numberOfTextRanges(on page: PDFPage) -> Int
  @available(macOS 10.7, *)
  func range(at index: Int, on page: PDFPage) -> NSRange
  @available(macOS 10.5, *)
  func selectionsByLine() -> [PDFSelection]
  func add(_ selection: PDFSelection)
  @available(macOS 10.5, *)
  func add(_ selections: [PDFSelection])
  func extend(atEnd succeed: Int)
  func extend(atStart precede: Int)
  @available(macOS 10.13, *)
  func extendForLineBoundaries()
  func draw(for page: PDFPage, active: Bool)
  func draw(for page: PDFPage, with box: PDFDisplayBox, active: Bool)
}
