
@available(iOS 11.0, *)
enum PDFDisplayBox : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case mediaBox
  case cropBox
  case bleedBox
  case trimBox
  case artBox
}
@available(iOS 11.0, *)
class PDFPage : NSObject, NSCopying {
  @available(iOS 11.0, *)
  init?(image: UIImage)
  weak var document: @sil_weak PDFDocument? { get }
  var pageRef: CGPDFPage? { get }
  var label: String? { get }
  func bounds(for box: PDFDisplayBox) -> CGRect
  func setBounds(_ bounds: CGRect, for box: PDFDisplayBox)
  var rotation: Int
  var annotations: [PDFAnnotation] { get }
  var displaysAnnotations: Bool
  func addAnnotation(_ annotation: PDFAnnotation)
  func removeAnnotation(_ annotation: PDFAnnotation)
  func annotation(at point: CGPoint) -> PDFAnnotation?
  @available(iOS 11.0, *)
  func transform(for box: PDFDisplayBox) -> CGAffineTransform
  @available(iOS 11.0, *)
  func draw(with box: PDFDisplayBox, to context: CGContext)
  @available(iOS 11.0, *)
  func transform(_ context: CGContext, for box: PDFDisplayBox)
  @available(iOS 11.0, *)
  func thumbnail(of size: CGSize, for box: PDFDisplayBox) -> UIImage
  var numberOfCharacters: Int { get }
  var string: String? { get }
  var attributedString: NSAttributedString? { get }
  func characterBounds(at index: Int) -> CGRect
  func characterIndex(at point: CGPoint) -> Int
  func selection(for rect: CGRect) -> PDFSelection?
  func selectionForWord(at point: CGPoint) -> PDFSelection?
  func selectionForLine(at point: CGPoint) -> PDFSelection?
  func selection(from startPoint: CGPoint, to endPoint: CGPoint) -> PDFSelection?
  func selection(for range: NSRange) -> PDFSelection?
  var dataRepresentation: Data? { get }
}
