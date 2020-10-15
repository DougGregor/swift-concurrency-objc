
class CGColor : _CFObject {
}

extension CGColor {
  @available(macOS 10.3, iOS 2.0, *)
  var components: [CGFloat]? { get }
}

extension CGColor : _CGColorInitTrampoline, _ExpressibleByColorLiteral {
}
extension CGColor {
  @available(iOS 13.0, *)
  /*not inherited*/ init(gray: CGFloat, alpha: CGFloat)
  @available(iOS 13.0, *)
  /*not inherited*/ init(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)
  @available(iOS 13.0, *)
  /*not inherited*/ init(genericCMYKCyan cyan: CGFloat, magenta: CGFloat, yellow: CGFloat, black: CGFloat, alpha: CGFloat)
  @available(iOS 13.0, *)
  /*not inherited*/ init(genericGrayGamma2_2Gray gray: CGFloat, alpha: CGFloat)
  @available(iOS 13.0, *)
  /*not inherited*/ init(srgbRed red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)
  @available(iOS 14.0, *)
  class func __constantColor(for colorName: CFString) -> CGColor?
  @available(iOS 2.0, *)
  /*not inherited*/ init?(patternSpace space: CGColorSpace, pattern: CGPattern, components: UnsafePointer<CGFloat>)
  @available(iOS 2.0, *)
  func copy() -> CGColor?
  @available(iOS 2.0, *)
  func copy(alpha: CGFloat) -> CGColor?
  @available(iOS 9.0, *)
  func converted(to _: CGColorSpace, intent: CGColorRenderingIntent, options: CFDictionary?) -> CGColor?
  @available(iOS 2.0, *)
  func __equalTo(_ color2: CGColor) -> Bool
  @available(iOS 2.0, *)
  var numberOfComponents: Int { get }
  @available(iOS 2.0, *)
  var __unsafeComponents: UnsafePointer<CGFloat>? { get }
  @available(iOS 2.0, *)
  var alpha: CGFloat { get }
  @available(iOS 2.0, *)
  var colorSpace: CGColorSpace? { get }
  @available(iOS 2.0, *)
  var pattern: CGPattern? { get }
  @available(iOS 2.0, *)
  class var typeID: CFTypeID { get }
  @available(iOS 14.0, *)
  class let __whiteColorName: CFString
  @available(iOS 14.0, *)
  class let __blackColorName: CFString
  @available(iOS 14.0, *)
  class let __clearColorName: CFString
}
