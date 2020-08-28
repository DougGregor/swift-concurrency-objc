
class NSRulerMarker : NSObject, NSCopying, NSCoding {
  init(rulerView ruler: NSRulerView, markerLocation location: CGFloat, image: NSImage, imageOrigin: NSPoint)
  weak var ruler: @sil_weak NSRulerView? { get }
  var markerLocation: CGFloat
  var image: NSImage
  var imageOrigin: NSPoint
  var isMovable: Bool
  var isRemovable: Bool
  var isDragging: Bool { get }
  var representedObject: NSCopying?
  var imageRectInRuler: NSRect { get }
  var thicknessRequiredInRuler: CGFloat { get }
  func draw(_ rect: NSRect)
  func trackMouse(with mouseDownEvent: NSEvent, adding isAdding: Bool) -> Bool
}
