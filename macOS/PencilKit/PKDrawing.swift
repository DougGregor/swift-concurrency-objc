
@available(macOS 10.15, *)
let PKAppleDrawingTypeIdentifier: CFString
@available(macOS 10.15, *)
class PKDrawingReference : NSObject, NSCopying, NSSecureCoding {
  @available(macOS 11.0, *)
  convenience init(strokes: [PKStroke])
  init(data: Data) throws
  func dataRepresentation() -> Data
  @available(macOS 11.0, *)
  var strokes: [PKStroke] { get }
  var bounds: CGRect { get }
  func image(from rect: CGRect, scale: CGFloat) -> NSImage
  func applying(_ transform: CGAffineTransform) -> PKDrawing
  func appending(_ drawing: PKDrawing) -> PKDrawing
  @available(macOS 11.0, *)
  func appendingStrokes(_ strokes: [PKStroke]) -> PKDrawing
}
