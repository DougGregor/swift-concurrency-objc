
@available(macOS 10.4, *)
let kPDFDestinationUnspecifiedValue: CGFloat
@available(macOS 10.4, *)
class PDFDestination : NSObject, NSCopying {
  init(page: PDFPage, at point: NSPoint)
  weak var page: @sil_weak PDFPage? { get }
  var point: NSPoint { get }
  @available(macOS 10.7, *)
  var zoom: CGFloat
  @available(macOS 10.5, *)
  func compare(_ destination: PDFDestination) -> ComparisonResult
}
