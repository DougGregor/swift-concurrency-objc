
typealias CGBitmapContextReleaseDataCallback = @convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?) -> Void
extension CGContext {
  @available(macOS 10.6, *)
  /*not inherited*/ init?(data: UnsafeMutableRawPointer?, width: Int, height: Int, bitsPerComponent: Int, bytesPerRow: Int, space: CGColorSpace, bitmapInfo: UInt32, releaseCallback: CGBitmapContextReleaseDataCallback?, releaseInfo: UnsafeMutableRawPointer?)
  @available(macOS 10.0, *)
  /*not inherited*/ init?(data: UnsafeMutableRawPointer?, width: Int, height: Int, bitsPerComponent: Int, bytesPerRow: Int, space: CGColorSpace, bitmapInfo: UInt32)
  @available(macOS 10.2, *)
  var data: UnsafeMutableRawPointer? { get }
  @available(macOS 10.2, *)
  var width: Int { get }
  @available(macOS 10.2, *)
  var height: Int { get }
  @available(macOS 10.2, *)
  var bitsPerComponent: Int { get }
  @available(macOS 10.2, *)
  var bitsPerPixel: Int { get }
  @available(macOS 10.2, *)
  var bytesPerRow: Int { get }
  @available(macOS 10.2, *)
  var colorSpace: CGColorSpace? { get }
  @available(macOS 10.2, *)
  var alphaInfo: CGImageAlphaInfo { get }
  @available(macOS 10.4, *)
  var bitmapInfo: CGBitmapInfo { get }
  @available(macOS 10.4, *)
  func makeImage() -> CGImage?
}
