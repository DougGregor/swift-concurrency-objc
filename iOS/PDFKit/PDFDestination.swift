
@available(iOS 11.0, *)
let kPDFDestinationUnspecifiedValue: CGFloat
@available(iOS 11.0, *)
class PDFDestination : NSObject, NSCopying {
  init(page: PDFPage, at point: CGPoint)
  weak var page: @sil_weak PDFPage? { get }
  var point: CGPoint { get }
  @available(iOS 11.0, *)
  var zoom: CGFloat
  @available(iOS 11.0, *)
  func compare(_ destination: PDFDestination) -> ComparisonResult
}
