
@available(macOS 10.4, *)
class CIVector : NSObject, NSCopying, NSSecureCoding {
  init(values: UnsafePointer<CGFloat>, count: Int)
  convenience init(x: CGFloat)
  convenience init(x: CGFloat, y: CGFloat)
  convenience init(x: CGFloat, y: CGFloat, z: CGFloat)
  convenience init(x: CGFloat, y: CGFloat, z: CGFloat, w: CGFloat)
  @available(macOS 10.9, *)
  convenience init(cgPoint p: CGPoint)
  @available(macOS 10.9, *)
  convenience init(cgRect r: CGRect)
  @available(macOS 10.9, *)
  convenience init(cgAffineTransform r: CGAffineTransform)
  convenience init(string representation: String)
  func value(at index: Int) -> CGFloat
  var count: Int { get }
  var x: CGFloat { get }
  var y: CGFloat { get }
  var z: CGFloat { get }
  var w: CGFloat { get }
  @available(macOS 10.9, *)
  var cgPointValue: CGPoint { get }
  @available(macOS 10.9, *)
  var cgRectValue: CGRect { get }
  @available(macOS 10.9, *)
  var cgAffineTransformValue: CGAffineTransform { get }
  var stringRepresentation: String { get }
}
