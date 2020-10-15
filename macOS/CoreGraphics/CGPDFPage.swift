
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
  @available(macOS 10.3, *)
  var document: CGPDFDocument? { get }
  @available(macOS 10.3, *)
  var pageNumber: Int { get }
  @available(macOS 10.3, *)
  func getBoxRect(_ box: CGPDFBox) -> CGRect
  @available(macOS 10.3, *)
  var rotationAngle: Int32 { get }
  @available(macOS 10.3, *)
  func getDrawingTransform(_ box: CGPDFBox, rect: CGRect, rotate: Int32, preserveAspectRatio: Bool) -> CGAffineTransform
  @available(macOS 10.3, *)
  var dictionary: CGPDFDictionaryRef? { get }
  @available(macOS 10.3, *)
  class var typeID: CFTypeID { get }
}
