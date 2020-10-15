
@available(tvOS 10.0, *)
enum SKTileDefinitionRotation : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case rotation0
  case rotation90
  case rotation180
  case rotation270
}
@available(tvOS 10.0, *)
class SKTileDefinition : NSObject, NSCopying, NSSecureCoding {
  init(texture: SKTexture)
  init(texture: SKTexture, size: CGSize)
  init(texture: SKTexture, normalTexture: SKTexture, size: CGSize)
  init(textures: [SKTexture], size: CGSize, timePerFrame: CGFloat)
  init(textures: [SKTexture], normalTextures: [SKTexture], size: CGSize, timePerFrame: CGFloat)
  var textures: [SKTexture]
  var normalTextures: [SKTexture]
  var userData: NSMutableDictionary?
  var name: String?
  var size: CGSize
  var timePerFrame: CGFloat
  var placementWeight: Int
  var rotation: SKTileDefinitionRotation
  var flipVertically: Bool
  var flipHorizontally: Bool
}
