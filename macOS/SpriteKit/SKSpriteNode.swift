
class SKSpriteNode : SKNode, SKWarpable {
  convenience init(texture: SKTexture?, size: CGSize)
  convenience init(texture: SKTexture?, normalMap: SKTexture?)
  convenience init(imageNamed name: String, normalMapped generateNormalMap: Bool)
  init(texture: SKTexture?, color: NSColor, size: CGSize)
  convenience init(texture: SKTexture?)
  convenience init(imageNamed name: String)
  convenience init(color: NSColor, size: CGSize)
  var texture: SKTexture?
  @available(macOS 10.10, *)
  var normalTexture: SKTexture?
  @available(macOS 10.10, *)
  var lightingBitMask: UInt32
  @available(macOS 10.10, *)
  var shadowCastBitMask: UInt32
  @available(macOS 10.10, *)
  var shadowedBitMask: UInt32
  var centerRect: CGRect
  var colorBlendFactor: CGFloat
  var color: NSColor
  var blendMode: SKBlendMode
  var anchorPoint: CGPoint
  var size: CGSize
  @available(macOS 10.12, *)
  func scale(to size: CGSize)
  @available(macOS 10.10, *)
  var shader: SKShader?
}

extension SKSpriteNode : _CustomPlaygroundQuickLookable {
}
