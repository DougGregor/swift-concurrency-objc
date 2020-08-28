
@available(watchOS 2.0, *)
class UIColor : NSObject, NSSecureCoding, NSCopying {
  init(white: CGFloat, alpha: CGFloat)
  init(hue: CGFloat, saturation: CGFloat, brightness: CGFloat, alpha: CGFloat)
  init(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)
  @available(watchOS 3.0, *)
  init(displayP3Red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)
  init(cgColor: CGColor)
  init(patternImage image: UIImage)
  class var black: UIColor { get }
  class var darkGray: UIColor { get }
  class var lightGray: UIColor { get }
  class var white: UIColor { get }
  class var gray: UIColor { get }
  class var red: UIColor { get }
  class var green: UIColor { get }
  class var blue: UIColor { get }
  class var cyan: UIColor { get }
  class var yellow: UIColor { get }
  class var magenta: UIColor { get }
  class var orange: UIColor { get }
  class var purple: UIColor { get }
  class var brown: UIColor { get }
  class var clear: UIColor { get }
  func set()
  func setFill()
  func setStroke()
  @available(watchOS 2.0, *)
  func getWhite(_ white: UnsafeMutablePointer<CGFloat>?, alpha: UnsafeMutablePointer<CGFloat>?) -> Bool
  @available(watchOS 2.0, *)
  func getHue(_ hue: UnsafeMutablePointer<CGFloat>?, saturation: UnsafeMutablePointer<CGFloat>?, brightness: UnsafeMutablePointer<CGFloat>?, alpha: UnsafeMutablePointer<CGFloat>?) -> Bool
  @available(watchOS 2.0, *)
  func getRed(_ red: UnsafeMutablePointer<CGFloat>?, green: UnsafeMutablePointer<CGFloat>?, blue: UnsafeMutablePointer<CGFloat>?, alpha: UnsafeMutablePointer<CGFloat>?) -> Bool
  func withAlphaComponent(_ alpha: CGFloat) -> UIColor
  var cgColor: CGColor { get }
}

extension UIColor : _ExpressibleByColorLiteral {
}
extension UIColor : NSItemProviderReading, NSItemProviderWriting {
}
extension UIColor {
  @available(watchOS 4.0, *)
  /*not inherited*/ init?(named name: String)
}
extension UIColor {
}
