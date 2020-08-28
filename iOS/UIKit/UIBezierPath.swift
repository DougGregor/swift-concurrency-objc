
@available(iOS 3.2, *)
class UIBezierPath : NSObject, NSCopying, NSSecureCoding {
  convenience init(rect: CGRect)
  convenience init(ovalIn rect: CGRect)
  convenience init(roundedRect rect: CGRect, cornerRadius: CGFloat)
  convenience init(roundedRect rect: CGRect, byRoundingCorners corners: UIRectCorner, cornerRadii: CGSize)
  convenience init(arcCenter center: CGPoint, radius: CGFloat, startAngle: CGFloat, endAngle: CGFloat, clockwise: Bool)
  convenience init(cgPath CGPath: CGPath)
  var cgPath: CGPath
  func move(to point: CGPoint)
  func addLine(to point: CGPoint)
  func addCurve(to endPoint: CGPoint, controlPoint1: CGPoint, controlPoint2: CGPoint)
  func addQuadCurve(to endPoint: CGPoint, controlPoint: CGPoint)
  @available(iOS 4.0, *)
  func addArc(withCenter center: CGPoint, radius: CGFloat, startAngle: CGFloat, endAngle: CGFloat, clockwise: Bool)
  func close()
  func removeAllPoints()
  func append(_ bezierPath: UIBezierPath)
  @available(iOS 6.0, *)
  func reversing() -> UIBezierPath
  func apply(_ transform: CGAffineTransform)
  var isEmpty: Bool { get }
  var bounds: CGRect { get }
  var currentPoint: CGPoint { get }
  func contains(_ point: CGPoint) -> Bool
  var lineWidth: CGFloat
  var lineCapStyle: CGLineCap
  var lineJoinStyle: CGLineJoin
  var miterLimit: CGFloat
  var flatness: CGFloat
  var usesEvenOddFillRule: Bool
  func setLineDash(_ pattern: UnsafePointer<CGFloat>?, count: Int, phase: CGFloat)
  func getLineDash(_ pattern: UnsafeMutablePointer<CGFloat>?, count: UnsafeMutablePointer<Int>?, phase: UnsafeMutablePointer<CGFloat>?)
  func fill()
  func stroke()
  func fill(with blendMode: CGBlendMode, alpha: CGFloat)
  func stroke(with blendMode: CGBlendMode, alpha: CGFloat)
  func addClip()
}
