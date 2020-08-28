
class CGImage : _CFObject {
}

extension CGImage {
  func copy(maskingColorComponents components: [CGFloat]) -> CGImage?
}
enum CGImageAlphaInfo : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case none
  case premultipliedLast
  case premultipliedFirst
  case last
  case first
  case noneSkipLast
  case noneSkipFirst
  case alphaOnly
}
@available(macOS 10.0, *)
enum CGImageByteOrderInfo : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case orderMask
  case orderDefault
  case order16Little
  case order32Little
  case order16Big
  case order32Big
}
@available(macOS 10.14, *)
enum CGImagePixelFormatInfo : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case mask
  case packed
  case RGB555
  case RGB565
  case RGB101010
  case RGBCIF10
}
@available(macOS 10.0, *)
struct CGBitmapInfo : OptionSet {
  init(rawValue: UInt32)
  let rawValue: UInt32
  static var alphaInfoMask: CGBitmapInfo { get }
  static var floatInfoMask: CGBitmapInfo { get }
  static var floatComponents: CGBitmapInfo { get }
  static var byteOrderMask: CGBitmapInfo { get }
  static var byteOrder16Little: CGBitmapInfo { get }
  static var byteOrder32Little: CGBitmapInfo { get }
  static var byteOrder16Big: CGBitmapInfo { get }
  static var byteOrder32Big: CGBitmapInfo { get }
}
extension CGImage {
  @available(macOS 10.2, *)
  class var typeID: CFTypeID { get }
  @available(macOS 10.0, *)
  /*not inherited*/ init?(width: Int, height: Int, bitsPerComponent: Int, bitsPerPixel: Int, bytesPerRow: Int, space: CGColorSpace, bitmapInfo: CGBitmapInfo, provider: CGDataProvider, decode: UnsafePointer<CGFloat>?, shouldInterpolate: Bool, intent: CGColorRenderingIntent)
  @available(macOS 10.0, *)
  /*not inherited*/ init?(maskWidth width: Int, height: Int, bitsPerComponent: Int, bitsPerPixel: Int, bytesPerRow: Int, provider: CGDataProvider, decode: UnsafePointer<CGFloat>?, shouldInterpolate: Bool)
  @available(macOS 10.4, *)
  func copy() -> CGImage?
  @available(macOS 10.1, *)
  /*not inherited*/ init?(jpegDataProviderSource source: CGDataProvider, decode: UnsafePointer<CGFloat>?, shouldInterpolate: Bool, intent: CGColorRenderingIntent)
  @available(macOS 10.2, *)
  /*not inherited*/ init?(pngDataProviderSource source: CGDataProvider, decode: UnsafePointer<CGFloat>?, shouldInterpolate: Bool, intent: CGColorRenderingIntent)
  @available(macOS 10.4, *)
  func cropping(to rect: CGRect) -> CGImage?
  @available(macOS 10.4, *)
  func masking(_ mask: CGImage) -> CGImage?
  @available(macOS 10.4, *)
  func __copy(maskingColorComponents components: UnsafePointer<CGFloat>) -> CGImage?
  @available(macOS 10.3, *)
  func copy(colorSpace space: CGColorSpace) -> CGImage?
  @available(macOS 10.0, *)
  var isMask: Bool { get }
  @available(macOS 10.0, *)
  var width: Int { get }
  @available(macOS 10.0, *)
  var height: Int { get }
  @available(macOS 10.0, *)
  var bitsPerComponent: Int { get }
  @available(macOS 10.0, *)
  var bitsPerPixel: Int { get }
  @available(macOS 10.0, *)
  var bytesPerRow: Int { get }
  @available(macOS 10.0, *)
  var colorSpace: CGColorSpace? { get }
  @available(macOS 10.0, *)
  var alphaInfo: CGImageAlphaInfo { get }
  @available(macOS 10.0, *)
  var dataProvider: CGDataProvider? { get }
  @available(macOS 10.0, *)
  var decode: UnsafePointer<CGFloat>? { get }
  @available(macOS 10.0, *)
  var shouldInterpolate: Bool { get }
  @available(macOS 10.0, *)
  var renderingIntent: CGColorRenderingIntent { get }
  @available(macOS 10.4, *)
  var bitmapInfo: CGBitmapInfo { get }
  @available(macOS 10.14, *)
  var byteOrderInfo: CGImageByteOrderInfo { get }
  @available(macOS 10.14, *)
  var pixelFormatInfo: CGImagePixelFormatInfo { get }
  @available(macOS 10.11, *)
  var utType: CFString? { get }
}
