
@available(tvOS 5.0, *)
class CIColor : NSObject, NSSecureCoding, NSCopying {
  convenience init(red r: CGFloat, green g: CGFloat, blue b: CGFloat)
  convenience init(string representation: String)
  init(cgColor c: CGColor)
  convenience init(red r: CGFloat, green g: CGFloat, blue b: CGFloat, alpha a: CGFloat)
  @available(tvOS 10.0, *)
  convenience init?(red r: CGFloat, green g: CGFloat, blue b: CGFloat, alpha a: CGFloat, colorSpace: CGColorSpace)
  @available(tvOS 10.0, *)
  convenience init?(red r: CGFloat, green g: CGFloat, blue b: CGFloat, colorSpace: CGColorSpace)
  var numberOfComponents: Int { get }
  var components: UnsafePointer<CGFloat> { get }
  var alpha: CGFloat { get }
  var colorSpace: CGColorSpace { get }
  var red: CGFloat { get }
  var green: CGFloat { get }
  var blue: CGFloat { get }
  var stringRepresentation: String { get }
  @available(tvOS 10.0, *)
  class var black: CIColor { get }
  @available(tvOS 10.0, *)
  class var white: CIColor { get }
  @available(tvOS 10.0, *)
  class var gray: CIColor { get }
  @available(tvOS 10.0, *)
  class var red: CIColor { get }
  @available(tvOS 10.0, *)
  class var green: CIColor { get }
  @available(tvOS 10.0, *)
  class var blue: CIColor { get }
  @available(tvOS 10.0, *)
  class var cyan: CIColor { get }
  @available(tvOS 10.0, *)
  class var magenta: CIColor { get }
  @available(tvOS 10.0, *)
  class var yellow: CIColor { get }
  @available(tvOS 10.0, *)
  class var clear: CIColor { get }
}
