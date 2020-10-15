
class SKSpriteNode : SKNode, SKWarpable {
  convenience init(texture: SKTexture?, size: CGSize)
  convenience init(texture: SKTexture?, normalMap: SKTexture?)
  convenience init(imageNamed name: String, normalMapped generateNormalMap: Bool)
  init(texture: SKTexture?, color: UIColor, size: CGSize)
  convenience init(texture: SKTexture?)
  convenience init(imageNamed name: String)
  convenience init(color: UIColor, size: CGSize)
  var texture: SKTexture?
  @available(watchOS 1.0, *)
  var normalTexture: SKTexture?
  @available(watchOS 1.0, *)
  var lightingBitMask: UInt32
  @available(watchOS 1.0, *)
  var shadowCastBitMask: UInt32
  @available(watchOS 1.0, *)
  var shadowedBitMask: UInt32
  var centerRect: CGRect
  var colorBlendFactor: CGFloat
  var color: UIColor
  var blendMode: SKBlendMode
  var anchorPoint: CGPoint
  var size: CGSize
  @available(watchOS 3.0, *)
  func scale(to size: CGSize)
  @available(watchOS 1.0, *)
  var shader: SKShader?
}

extension SKSpriteNode : _CustomPlaygroundQuickLookable {
}
