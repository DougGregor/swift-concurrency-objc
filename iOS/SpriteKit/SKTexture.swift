
@available(iOS 7.0, *)
enum SKTextureFilteringMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case nearest
  case linear
}
class SKTexture : NSObject, NSCopying, NSSecureCoding {
  convenience init(imageNamed name: String)
  convenience init(rect: CGRect, in texture: SKTexture)
  @available(iOS 8.0, *)
  convenience init(vectorNoiseWithSmoothness smoothness: CGFloat, size: CGSize)
  @available(iOS 8.0, *)
  convenience init(noiseWithSmoothness smoothness: CGFloat, size: CGSize, grayscale: Bool)
  convenience init(cgImage image: CGImage)
  convenience init(image: UIImage)
  convenience init(data pixelData: Data, size: CGSize)
  convenience init(data pixelData: Data, size: CGSize, flipped: Bool)
  convenience init(data pixelData: Data, size: CGSize, rowLength: UInt32, alignment: UInt32)
  func applying(_ filter: CIFilter) -> Self
  @available(iOS 8.0, *)
  func generatingNormalMap() -> Self
  @available(iOS 8.0, *)
  func generatingNormalMap(withSmoothness smoothness: CGFloat, contrast: CGFloat) -> Self
  func textureRect() -> CGRect
  func size() -> CGSize
  var filteringMode: SKTextureFilteringMode
  var usesMipmaps: Bool
  @available(iOS 9.0, *)
  func cgImage() -> CGImage
  class func preload(_ textures: [SKTexture], withCompletionHandler completionHandler: @escaping () -> Void)
  func preload(completionHandler: @escaping () -> Void)
}

extension SKTexture : _CustomPlaygroundQuickLookable {
}
