
class CGColor : _CFObject {
}

extension CGColor {
  @available(macOS 10.3, iOS 2.0, *)
  var components: [CGFloat]? { get }
}

extension CGColor : _CGColorInitTrampoline, _ExpressibleByColorLiteral {
}
extension CGColor {
  @available(tvOS 13.0, *)
  /*not inherited*/ init(gray: CGFloat, alpha: CGFloat)
  @available(tvOS 13.0, *)
  /*not inherited*/ init(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)
  @available(tvOS 13.0, *)
  /*not inherited*/ init(genericCMYKCyan cyan: CGFloat, magenta: CGFloat, yellow: CGFloat, black: CGFloat, alpha: CGFloat)
  @available(tvOS 13.0, *)
  /*not inherited*/ init(genericGrayGamma2_2Gray gray: CGFloat, alpha: CGFloat)
  @available(tvOS 13.0, *)
  /*not inherited*/ init(srgbRed red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)
  @available(tvOS 14.0, *)
  class func __constantColor(for colorName: CFString) -> CGColor?
  @available(tvOS 2.0, *)
  /*not inherited*/ init?(patternSpace space: CGColorSpace, pattern: CGPattern, components: UnsafePointer<CGFloat>)
  @available(tvOS 2.0, *)
  func copy() -> CGColor?
  @available(tvOS 2.0, *)
  func copy(alpha: CGFloat) -> CGColor?
  @available(tvOS 9.0, *)
  func converted(to _: CGColorSpace, intent: CGColorRenderingIntent, options: CFDictionary?) -> CGColor?
  @available(tvOS 2.0, *)
  func __equalTo(_ color2: CGColor) -> Bool
  @available(tvOS 2.0, *)
  var numberOfComponents: Int { get }
  @available(tvOS 2.0, *)
  var __unsafeComponents: UnsafePointer<CGFloat>? { get }
  @available(tvOS 2.0, *)
  var alpha: CGFloat { get }
  @available(tvOS 2.0, *)
  var colorSpace: CGColorSpace? { get }
  @available(tvOS 2.0, *)
  var pattern: CGPattern? { get }
  @available(tvOS 2.0, *)
  class var typeID: CFTypeID { get }
  @available(tvOS 14.0, *)
  class let __whiteColorName: CFString
  @available(tvOS 14.0, *)
  class let __blackColorName: CFString
  @available(tvOS 14.0, *)
  class let __clearColorName: CFString
}
