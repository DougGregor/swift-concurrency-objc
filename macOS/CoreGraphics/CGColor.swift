
class CGColor : _CFObject {
}

extension CGColor {
  @available(macOS 10.3, iOS 2.0, *)
  var components: [CGFloat]? { get }
  class var white: CGColor { get }
  class var black: CGColor { get }
  class var clear: CGColor { get }
}

extension CGColor : _CGColorInitTrampoline, _ExpressibleByColorLiteral {
}
extension CGColor {
  @available(macOS 10.3, *)
  /*not inherited*/ init?(colorSpace space: CGColorSpace, components: UnsafePointer<CGFloat>)
  @available(macOS 10.5, *)
  /*not inherited*/ init(gray: CGFloat, alpha: CGFloat)
  @available(macOS 10.5, *)
  /*not inherited*/ init(genericCMYKCyan cyan: CGFloat, magenta: CGFloat, yellow: CGFloat, black: CGFloat, alpha: CGFloat)
  @available(macOS 10.15, *)
  /*not inherited*/ init(genericGrayGamma2_2Gray gray: CGFloat, alpha: CGFloat)
  @available(macOS 10.15, *)
  /*not inherited*/ init(srgbRed red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)
  @available(macOS 10.5, *)
  class func __constantColor(for colorName: CFString) -> CGColor?
  @available(macOS 10.3, *)
  /*not inherited*/ init?(patternSpace space: CGColorSpace, pattern: CGPattern, components: UnsafePointer<CGFloat>)
  @available(macOS 10.3, *)
  func copy() -> CGColor?
  @available(macOS 10.3, *)
  func copy(alpha: CGFloat) -> CGColor?
  @available(macOS 10.11, *)
  func converted(to _: CGColorSpace, intent: CGColorRenderingIntent, options: CFDictionary?) -> CGColor?
  @available(macOS 10.3, *)
  func __equalTo(_ color2: CGColor) -> Bool
  @available(macOS 10.3, *)
  var numberOfComponents: Int { get }
  @available(macOS 10.3, *)
  var __unsafeComponents: UnsafePointer<CGFloat>? { get }
  @available(macOS 10.3, *)
  var alpha: CGFloat { get }
  @available(macOS 10.3, *)
  var colorSpace: CGColorSpace? { get }
  @available(macOS 10.3, *)
  var pattern: CGPattern? { get }
  @available(macOS 10.3, *)
  class var typeID: CFTypeID { get }
  @available(macOS 10.5, *)
  class let __whiteColorName: CFString
  @available(macOS 10.5, *)
  class let __blackColorName: CFString
  @available(macOS 10.5, *)
  class let __clearColorName: CFString
}
