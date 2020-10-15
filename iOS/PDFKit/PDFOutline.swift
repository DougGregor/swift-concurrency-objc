
@available(iOS 11.0, *)
class PDFOutline : NSObject {
  weak var document: @sil_weak PDFDocument? { get }
  @available(iOS 11.0, *)
  var parent: PDFOutline? { get }
  var numberOfChildren: Int { get }
  @available(iOS 11.0, *)
  var index: Int { get }
  func child(at index: Int) -> PDFOutline?
  @available(iOS 11.0, *)
  func insertChild(_ child: PDFOutline, at index: Int)
  @available(iOS 11.0, *)
  func removeFromParent()
  var label: String?
  @available(iOS 11.0, *)
  var isOpen: Bool
  var destination: PDFDestination?
  @available(iOS 11.0, *)
  var action: PDFAction?
}
