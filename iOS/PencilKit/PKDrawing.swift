
@available(iOS 13.0, *)
let PKAppleDrawingTypeIdentifier: CFString
@available(iOS 13.0, *)
class PKDrawingReference : NSObject, NSCopying, NSSecureCoding {
  @available(iOS 14.0, *)
  convenience init(strokes: [PKStroke])
  init(data: Data) throws
  func dataRepresentation() -> Data
  @available(iOS 14.0, *)
  var strokes: [PKStroke] { get }
  var bounds: CGRect { get }
  func image(from rect: CGRect, scale: CGFloat) -> UIImage
  func applying(_ transform: CGAffineTransform) -> PKDrawing
  func appending(_ drawing: PKDrawing) -> PKDrawing
  @available(iOS 14.0, *)
  func appendingStrokes(_ strokes: [PKStroke]) -> PKDrawing
}
