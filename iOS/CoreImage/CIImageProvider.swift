
extension CIImage {
  @available(iOS 9.0, *)
  init(imageProvider p: Any, size width: Int, _ height: Int, format f: CIFormat, colorSpace cs: CGColorSpace?, options: [CIImageOption : Any]? = nil)
}
extension NSObject {
  class func provideImageData(_ data: UnsafeMutableRawPointer, bytesPerRow rowbytes: Int, origin x: Int, _ y: Int, size width: Int, _ height: Int, userInfo info: Any?)
  func provideImageData(_ data: UnsafeMutableRawPointer, bytesPerRow rowbytes: Int, origin x: Int, _ y: Int, size width: Int, _ height: Int, userInfo info: Any?)
}
extension CIImageOption {
  @available(iOS 9.0, *)
  static let providerTileSize: CIImageOption
  @available(iOS 9.0, *)
  static let providerUserInfo: CIImageOption
}
