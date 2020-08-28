
@available(macOS 10.4, *)
class CIColor : NSObject, NSSecureCoding, NSCopying {
  convenience init(red r: CGFloat, green g: CGFloat, blue b: CGFloat)
  convenience init(string representation: String)
  init(cgColor c: CGColor)
  convenience init(red r: CGFloat, green g: CGFloat, blue b: CGFloat, alpha a: CGFloat)
  @available(macOS 10.12, *)
  convenience init?(red r: CGFloat, green g: CGFloat, blue b: CGFloat, alpha a: CGFloat, colorSpace: CGColorSpace)
  @available(macOS 10.12, *)
  convenience init?(red r: CGFloat, green g: CGFloat, blue b: CGFloat, colorSpace: CGColorSpace)
  var numberOfComponents: Int { get }
  var components: UnsafePointer<CGFloat> { get }
  var alpha: CGFloat { get }
  var colorSpace: CGColorSpace { get }
  var red: CGFloat { get }
  var green: CGFloat { get }
  var blue: CGFloat { get }
  var stringRepresentation: String { get }
  @available(macOS 10.12, *)
  class var black: CIColor { get }
  @available(macOS 10.12, *)
  class var white: CIColor { get }
  @available(macOS 10.12, *)
  class var gray: CIColor { get }
  @available(macOS 10.12, *)
  class var red: CIColor { get }
  @available(macOS 10.12, *)
  class var green: CIColor { get }
  @available(macOS 10.12, *)
  class var blue: CIColor { get }
  @available(macOS 10.12, *)
  class var cyan: CIColor { get }
  @available(macOS 10.12, *)
  class var magenta: CIColor { get }
  @available(macOS 10.12, *)
  class var yellow: CIColor { get }
  @available(macOS 10.12, *)
  class var clear: CIColor { get }
}
