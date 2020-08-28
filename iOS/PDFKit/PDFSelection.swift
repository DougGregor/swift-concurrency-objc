
@available(iOS 11.0, *)
class PDFSelection : NSObject, NSCopying {
  @available(iOS 11.0, *)
  init(document: PDFDocument)
  var pages: [PDFPage] { get }
  @available(iOS 11.0, *)
  @NSCopying var color: UIColor?
  var string: String? { get }
  var attributedString: NSAttributedString? { get }
  func bounds(for page: PDFPage) -> CGRect
  @available(iOS 11.0, *)
  func numberOfTextRanges(on page: PDFPage) -> Int
  @available(iOS 11.0, *)
  func range(at index: Int, on page: PDFPage) -> NSRange
  @available(iOS 11.0, *)
  func selectionsByLine() -> [PDFSelection]
  func add(_ selection: PDFSelection)
  @available(iOS 11.0, *)
  func add(_ selections: [PDFSelection])
  func extend(atEnd succeed: Int)
  func extend(atStart precede: Int)
  @available(iOS 11.0, *)
  func extendForLineBoundaries()
  func draw(for page: PDFPage, active: Bool)
  func draw(for page: PDFPage, with box: PDFDisplayBox, active: Bool)
}
