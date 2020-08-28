
extension CIImage {
  @available(macOS 10.4, *)
  init(imageProvider p: Any, size width: Int, _ height: Int, format f: CIFormat, colorSpace cs: CGColorSpace?, options: [CIImageOption : Any]? = nil)
}
extension NSObject {
  class func provideImageData(_ data: UnsafeMutableRawPointer, bytesPerRow rowbytes: Int, origin x: Int, _ y: Int, size width: Int, _ height: Int, userInfo info: Any?)
  func provideImageData(_ data: UnsafeMutableRawPointer, bytesPerRow rowbytes: Int, origin x: Int, _ y: Int, size width: Int, _ height: Int, userInfo info: Any?)
}
extension CIImageOption {
  @available(macOS 10.4, *)
  static let providerTileSize: CIImageOption
  @available(macOS 10.4, *)
  static let providerUserInfo: CIImageOption
}
