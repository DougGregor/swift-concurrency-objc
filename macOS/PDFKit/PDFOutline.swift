
@available(macOS 10.4, *)
class PDFOutline : NSObject {
  weak var document: @sil_weak PDFDocument? { get }
  @available(macOS 10.5, *)
  var parent: PDFOutline? { get }
  var numberOfChildren: Int { get }
  @available(macOS 10.5, *)
  var index: Int { get }
  func child(at index: Int) -> PDFOutline?
  @available(macOS 10.5, *)
  func insertChild(_ child: PDFOutline, at index: Int)
  @available(macOS 10.5, *)
  func removeFromParent()
  var label: String?
  @available(macOS 10.5, *)
  var isOpen: Bool
  var destination: PDFDestination?
  @available(macOS 10.5, *)
  var action: PDFAction?
}
