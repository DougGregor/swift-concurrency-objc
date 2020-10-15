
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
@available(tvOS 2.0, *)
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
@available(tvOS 12.0, *)
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
@available(tvOS 2.0, *)
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
  @available(tvOS 2.0, *)
  class var typeID: CFTypeID { get }
  @available(tvOS 2.0, *)
  /*not inherited*/ init?(width: Int, height: Int, bitsPerComponent: Int, bitsPerPixel: Int, bytesPerRow: Int, space: CGColorSpace, bitmapInfo: CGBitmapInfo, provider: CGDataProvider, decode: UnsafePointer<CGFloat>?, shouldInterpolate: Bool, intent: CGColorRenderingIntent)
  @available(tvOS 2.0, *)
  /*not inherited*/ init?(maskWidth width: Int, height: Int, bitsPerComponent: Int, bitsPerPixel: Int, bytesPerRow: Int, provider: CGDataProvider, decode: UnsafePointer<CGFloat>?, shouldInterpolate: Bool)
  @available(tvOS 2.0, *)
  func copy() -> CGImage?
  @available(tvOS 2.0, *)
  /*not inherited*/ init?(jpegDataProviderSource source: CGDataProvider, decode: UnsafePointer<CGFloat>?, shouldInterpolate: Bool, intent: CGColorRenderingIntent)
  @available(tvOS 2.0, *)
  /*not inherited*/ init?(pngDataProviderSource source: CGDataProvider, decode: UnsafePointer<CGFloat>?, shouldInterpolate: Bool, intent: CGColorRenderingIntent)
  @available(tvOS 2.0, *)
  func cropping(to rect: CGRect) -> CGImage?
  @available(tvOS 2.0, *)
  func masking(_ mask: CGImage) -> CGImage?
  @available(tvOS 2.0, *)
  func __copy(maskingColorComponents components: UnsafePointer<CGFloat>) -> CGImage?
  @available(tvOS 2.0, *)
  func copy(colorSpace space: CGColorSpace) -> CGImage?
  @available(tvOS 2.0, *)
  var isMask: Bool { get }
  @available(tvOS 2.0, *)
  var width: Int { get }
  @available(tvOS 2.0, *)
  var height: Int { get }
  @available(tvOS 2.0, *)
  var bitsPerComponent: Int { get }
  @available(tvOS 2.0, *)
  var bitsPerPixel: Int { get }
  @available(tvOS 2.0, *)
  var bytesPerRow: Int { get }
  @available(tvOS 2.0, *)
  var colorSpace: CGColorSpace? { get }
  @available(tvOS 2.0, *)
  var alphaInfo: CGImageAlphaInfo { get }
  @available(tvOS 2.0, *)
  var dataProvider: CGDataProvider? { get }
  @available(tvOS 2.0, *)
  var decode: UnsafePointer<CGFloat>? { get }
  @available(tvOS 2.0, *)
  var shouldInterpolate: Bool { get }
  @available(tvOS 2.0, *)
  var renderingIntent: CGColorRenderingIntent { get }
  @available(tvOS 2.0, *)
  var bitmapInfo: CGBitmapInfo { get }
  @available(tvOS 12.0, *)
  var byteOrderInfo: CGImageByteOrderInfo { get }
  @available(tvOS 12.0, *)
  var pixelFormatInfo: CGImagePixelFormatInfo { get }
  @available(tvOS 9.0, *)
  var utType: CFString? { get }
}
