
typealias CGBitmapContextReleaseDataCallback = @convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?) -> Void
extension CGContext {
  @available(iOS 4.0, *)
  /*not inherited*/ init?(data: UnsafeMutableRawPointer?, width: Int, height: Int, bitsPerComponent: Int, bytesPerRow: Int, space: CGColorSpace, bitmapInfo: UInt32, releaseCallback: CGBitmapContextReleaseDataCallback?, releaseInfo: UnsafeMutableRawPointer?)
  @available(iOS 2.0, *)
  /*not inherited*/ init?(data: UnsafeMutableRawPointer?, width: Int, height: Int, bitsPerComponent: Int, bytesPerRow: Int, space: CGColorSpace, bitmapInfo: UInt32)
  @available(iOS 2.0, *)
  var data: UnsafeMutableRawPointer? { get }
  @available(iOS 2.0, *)
  var width: Int { get }
  @available(iOS 2.0, *)
  var height: Int { get }
  @available(iOS 2.0, *)
  var bitsPerComponent: Int { get }
  @available(iOS 2.0, *)
  var bitsPerPixel: Int { get }
  @available(iOS 2.0, *)
  var bytesPerRow: Int { get }
  @available(iOS 2.0, *)
  var colorSpace: CGColorSpace? { get }
  @available(iOS 2.0, *)
  var alphaInfo: CGImageAlphaInfo { get }
  @available(iOS 2.0, *)
  var bitmapInfo: CGBitmapInfo { get }
  @available(iOS 2.0, *)
  func makeImage() -> CGImage?
}
