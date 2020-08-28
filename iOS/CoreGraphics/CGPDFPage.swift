
class CGPDFPage : _CFObject {
}
enum CGPDFBox : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case mediaBox
  case cropBox
  case bleedBox
  case trimBox
  case artBox
}
extension CGPDFPage {
  @available(iOS 2.0, *)
  var document: CGPDFDocument? { get }
  @available(iOS 2.0, *)
  var pageNumber: Int { get }
  @available(iOS 2.0, *)
  func getBoxRect(_ box: CGPDFBox) -> CGRect
  @available(iOS 2.0, *)
  var rotationAngle: Int32 { get }
  @available(iOS 2.0, *)
  func getDrawingTransform(_ box: CGPDFBox, rect: CGRect, rotate: Int32, preserveAspectRatio: Bool) -> CGAffineTransform
  @available(iOS 2.0, *)
  var dictionary: CGPDFDictionaryRef? { get }
  @available(iOS 2.0, *)
  class var typeID: CFTypeID { get }
}
