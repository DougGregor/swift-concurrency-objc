
struct NSAffineTransformStruct {
  var m11: CGFloat
  var m12: CGFloat
  var m21: CGFloat
  var m22: CGFloat
  var tX: CGFloat
  var tY: CGFloat
  init()
  init(m11: CGFloat, m12: CGFloat, m21: CGFloat, m22: CGFloat, tX: CGFloat, tY: CGFloat)
}
class NSAffineTransform : NSObject, NSCopying, NSSecureCoding {
  convenience init(transform: AffineTransform)
  func translateX(by deltaX: CGFloat, yBy deltaY: CGFloat)
  func rotate(byDegrees angle: CGFloat)
  func rotate(byRadians angle: CGFloat)
  func scale(by scale: CGFloat)
  func scaleX(by scaleX: CGFloat, yBy scaleY: CGFloat)
  func invert()
  func append(_ transform: AffineTransform)
  func prepend(_ transform: AffineTransform)
  func transform(_ aPoint: NSPoint) -> NSPoint
  func transform(_ aSize: NSSize) -> NSSize
  var transformStruct: NSAffineTransformStruct
}

extension NSAffineTransform : _HasCustomAnyHashableRepresentation {
}
